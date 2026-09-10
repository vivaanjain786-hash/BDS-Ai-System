import { createClient } from 'https://esm.sh/@supabase/supabase-js@2'

const runtime = globalThis as typeof globalThis & { Deno: { env: { get(name: string): string | undefined } } }
const corsHeaders = { 'Access-Control-Allow-Origin': '*', 'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type' }
type VivaRequest = { subject_id: string; selected_unit_ids: string[]; selected_topic_ids: string[]; selected_topic_context?: Array<{ id: string; title: string }>; difficulty: 'basic' | 'intermediate' | 'advanced' | 'mixed'; mode: 'rapid_fire' | 'standard' | 'examiner' | 'clinical'; number_of_questions: number }
type TopicRow = { id: string; name?: string; title?: string; subject_id?: string; unit_id?: string }
type GeneratedQuestion = { prompt: string; topicId: string; difficulty: 'basic' | 'intermediate' | 'advanced'; questionType: string }

function json(body: unknown, status = 200): Response { return new Response(JSON.stringify(body), { status, headers: { ...corsHeaders, 'Content-Type': 'application/json' } }) }
function clampCount(value: number): number { return Math.min(Math.max(Number.isFinite(value) ? Math.floor(value) : 5, 1), 20) }
function topicName(topic: TopicRow): string { return topic.name ?? topic.title ?? (topic as TopicRow & { topic_name?: string }).topic_name ?? 'Selected topic' }

Deno.serve(async (request) => {
  if (request.method === 'OPTIONS') return new Response('ok', { headers: corsHeaders })
  if (request.method !== 'POST') return json({ error: 'Only POST is supported.' }, 405)
  try {
    const body = await request.json() as VivaRequest
    const selectedTopicIds = [...new Set(Array.isArray(body.selected_topic_ids) ? body.selected_topic_ids.map(String) : [])]
    if (!body.subject_id || !selectedTopicIds.length) return json({ error: 'A subject and at least one selected topic are required.' }, 400)
    const supabaseUrl = runtime.Deno.env.get('SUPABASE_URL')
    const serviceRoleKey = runtime.Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')
    const geminiKey = runtime.Deno.env.get('GEMINI_API_KEY')
    if (!supabaseUrl || !serviceRoleKey) return json({ error: 'Supabase server configuration is incomplete.' }, 500)
    if (!geminiKey) return json({ error: 'Gemini is not configured. Add GEMINI_API_KEY to Edge Function secrets.' }, 503)
    const authHeader = request.headers.get('Authorization')
    if (!authHeader) return json({ error: 'Authentication is required.' }, 401)
    const userClient = createClient(supabaseUrl, runtime.Deno.env.get('SUPABASE_ANON_KEY') ?? '', { global: { headers: { Authorization: authHeader } } })
    const { data: userData, error: userError } = await userClient.auth.getUser()
    if (userError || !userData.user) return json({ error: 'Authentication is required.' }, 401)
    const admin = createClient(supabaseUrl, serviceRoleKey)
    const syntheticTopicIds = selectedTopicIds.filter((id) => id.startsWith('textbook-topic-'))
    const databaseTopicIds = selectedTopicIds.filter((id) => !id.startsWith('textbook-topic-'))
    const context = Array.isArray(body.selected_topic_context) ? body.selected_topic_context.filter((topic) => selectedTopicIds.includes(String(topic.id)) && String(topic.title).trim()) : []
    const { data: topics, error: topicError } = databaseTopicIds.length ? await admin.from('topics').select('*').in('id', databaseTopicIds) : { data: [], error: null }
    if (topicError) return json({ error: topicError.message }, 500)
    const databaseTopics = (topics ?? []) as TopicRow[]
    if (databaseTopics.length !== databaseTopicIds.length || context.filter((topic) => syntheticTopicIds.includes(String(topic.id))).length !== syntheticTopicIds.length) return json({ error: 'One or more selected topics do not belong to the selected subject.' }, 400)
    const validTopics = [...databaseTopics, ...context.filter((topic) => syntheticTopicIds.includes(String(topic.id))).map((topic) => ({ id: String(topic.id), name: String(topic.title), subject_id: body.subject_id }))]
    const topicContext = validTopics.map((topic) => `${topic.id}: ${topicName(topic)}`).join('\n')
    const prompt = `You are a professional BDS viva examiner. Generate exactly ${clampCount(body.number_of_questions)} progressive viva questions.\n\nHard boundary: every question must test only one of these selected topics. Do not introduce any other chapter, unit, subject, or topic.\nSelected subject: ${body.subject_id}\nSelected topics:\n${topicContext}\nDifficulty: ${body.difficulty}\nMode: ${body.mode}\n\nReturn JSON only in this shape: {"questions":[{"prompt":"...","topicId":"exact selected topic id","difficulty":"basic|intermediate|advanced","questionType":"definition|classification|explanation|difference|mechanism|application|clinical_reasoning|follow_up"}]}\nUse a controlled mixture and increase difficulty progressively. Never claim a PYQ or textbook source.`
    const geminiResponse = await fetch(`https://generativelanguage.googleapis.com/v1beta/models/gemini-3.6-flash:generateContent?key=${encodeURIComponent(geminiKey)}`, { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify({ contents: [{ parts: [{ text: prompt }] }], generationConfig: { responseMimeType: 'application/json', temperature: 0.35 } }) })
    if (!geminiResponse.ok) { const detail = await geminiResponse.text(); return json({ error: `Gemini API ${geminiResponse.status}: ${detail.slice(0, 500)}` }, 502) }
    const geminiData = await geminiResponse.json() as { candidates?: Array<{ content?: { parts?: Array<{ text?: string }> } }> }
    const rawText = geminiData.candidates?.[0]?.content?.parts?.[0]?.text ?? '{"questions":[]}'
    let parsed: { questions?: GeneratedQuestion[] }
    try { parsed = JSON.parse(rawText) as { questions?: GeneratedQuestion[] } } catch { return json({ error: 'Gemini returned invalid JSON instead of Viva questions.' }, 502) }
    const allowed = new Set(selectedTopicIds)
    const questions = (parsed.questions ?? []).filter((question) => allowed.has(String(question.topicId))).map((question) => ({ id: crypto.randomUUID(), prompt: String(question.prompt), topicId: String(question.topicId), difficulty: question.difficulty, questionType: question.questionType, source: 'practice_prompt', verification: 'generated' }))
    return json({ questions })
  } catch (error) { return json({ error: error instanceof Error ? error.message : 'Viva generation failed.' }, 500) }
})
