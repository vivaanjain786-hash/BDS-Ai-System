import { configurationError, supabase } from '../lib/supabase'
import type { AISessionType, VivaDifficulty, VivaMode, VivaQuestion } from '../types'

export async function createAISession(topicId: string, sessionType: AISessionType): Promise<string> {
  if (!supabase) throw configurationError()
  const { data, error } = await supabase.from('ai_sessions').insert({ topic_id: topicId, session_type: sessionType }).select('id').single()
  if (error) throw error
  return String(data.id)
}

export function aiUnavailableMessage(): string { return 'AI service not configured. Connect a secure backend before requesting generated learning content.' }

export type VivaGenerationRequest = { subjectId: string; selectedUnitIds: string[]; selectedTopicIds: string[]; selectedTopicContext: Array<{ id: string; title: string }>; difficulty: VivaDifficulty; mode: VivaMode; numberOfQuestions: number }

export async function generateVivaQuestions(request: VivaGenerationRequest): Promise<VivaQuestion[]> {
  if (!supabase) throw configurationError()
  const { data: authData } = await supabase.auth.getSession()
  const accessToken = authData.session?.access_token
  if (!accessToken) throw new Error('Your Supabase session has expired. Sign in again before starting a Viva.')
  const url = `${String(import.meta.env.VITE_SUPABASE_URL)}/functions/v1/generate-viva`
  const controller = new AbortController()
  const timeout = window.setTimeout(() => controller.abort(), 30000)
  let response: Response
  try { response = await fetch(url, { method: 'POST', headers: { Authorization: `Bearer ${accessToken}`, apikey: String(import.meta.env.VITE_SUPABASE_PUBLISHABLE_KEY), 'Content-Type': 'application/json' }, body: JSON.stringify({ subject_id: request.subjectId, selected_unit_ids: request.selectedUnitIds, selected_topic_ids: request.selectedTopicIds, selected_topic_context: request.selectedTopicContext, difficulty: request.difficulty, mode: request.mode, number_of_questions: request.numberOfQuestions }), signal: controller.signal }) } catch (error) { if (error instanceof DOMException && error.name === 'AbortError') throw new Error('Gemini took too long to respond. Try again or reduce the number of questions.', { cause: error }); throw error } finally { window.clearTimeout(timeout) }
  const data = await response.json().catch(() => ({})) as { questions?: unknown[]; error?: string }
  if (!response.ok) throw new Error(data.error ?? `Viva service returned HTTP ${response.status}.`)
  if (!data || !Array.isArray(data.questions)) return []
  return data.questions.filter((question: unknown): question is VivaQuestion => typeof question === 'object' && question !== null && 'prompt' in question && 'topicId' in question && request.selectedTopicIds.includes(String(question.topicId))).map((question: VivaQuestion) => ({ ...question, topicId: String(question.topicId), source: 'ai_generated', verification: 'generated' }))
}
