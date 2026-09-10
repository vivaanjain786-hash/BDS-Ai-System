import { configurationError, supabase } from '../lib/supabase'
import { providedExams, providedTimetable } from '../data/timetable'
import { prescribedTextbooks } from '../data/textbooks'
import { seniorNotes } from '../data/notes'
import type { Exam, ProgressSummary, Question, Student, Subject, TimetableEntry, Topic, TopicStatus, Unit, VivaQuestion } from '../types'

type Row = Record<string, unknown>

function rows(value: unknown): Row[] {
  return Array.isArray(value) ? value.filter((item): item is Row => typeof item === 'object' && item !== null) : []
}
function text(row: Row, ...keys: string[]): string | null { const value = keys.map((key) => row[key]).find((item) => typeof item === 'string' || typeof item === 'number'); return value === undefined || value === null ? null : String(value) }
function number(row: Row, ...keys: string[]): number | null { const value = keys.map((key) => row[key]).find((item) => typeof item === 'number' || (typeof item === 'string' && item.trim() !== '' && !Number.isNaN(Number(item)))); return value === undefined || value === null ? null : Number(value) }
function date(row: Row, ...keys: string[]): string { return text(row, ...keys) ?? '' }
function ensureClient() { if (!supabase) throw configurationError(); return supabase }
function textbookChaptersFor(subjectName: string) { return prescribedTextbooks.filter((book) => book.subject.toLowerCase() === subjectName.toLowerCase()).flatMap((book) => book.chapters ?? []) }
function belongsTo(row: Row, subjectId: string): boolean { return text(row, 'subject_id', 'subjectId', 'subject') === subjectId }
export async function getVivaQuestionPool(topicIds: string[]): Promise<VivaQuestion[]> {
  if (!topicIds.length) return []
  const client = ensureClient()
  const { data: links, error: linkError } = await client.from('question_topics').select('*').in('topic_id', topicIds)
  if (linkError) return []
  const questionIds = rows(links).map((row) => text(row, 'question_id')).filter((id): id is string => Boolean(id))
  if (!questionIds.length) return []
  const { data: questions, error: questionError } = await client.from('questions').select('*').in('id', questionIds)
  if (questionError) return []
  return rows(questions).flatMap((row) => { const id = text(row, 'id'); const topicId = text(row, 'topic_id') ?? topicIds.find((candidate) => questionIds.includes(candidate)) ?? topicIds[0]; if (!id || !topicIds.includes(topicId)) return []; return [{ id, prompt: text(row, 'question', 'prompt', 'text') ?? 'Question text unavailable', topicId, topicTitle: topicId, difficulty: (text(row, 'difficulty') as 'basic' | 'intermediate' | 'advanced' | null) ?? 'basic', questionType: text(row, 'type', 'question_type') ?? 'sourced', source: 'verified_question_bank' as const, verification: (text(row, 'verification') as 'verified' | 'unverified' | 'generated' | null) ?? 'unverified' }] })
}
export async function getQuestionsForTopic(topicId: string): Promise<Question[]> {
  if (!topicId || topicId.startsWith('textbook-topic-')) return []
  const client = ensureClient()
  const { data: links, error: linkError } = await client.from('question_topics').select('*').in('topic_id', [topicId])
  if (linkError) throw linkError
  const questionIds = rows(links).map((row) => text(row, 'question_id')).filter((id): id is string => Boolean(id))
  if (!questionIds.length) return []
  const { data, error } = await client.from('questions').select('*').in('id', questionIds)
  if (error) throw error
  return rows(data).map((row) => ({ id: text(row, 'id') ?? '', prompt: text(row, 'question', 'prompt', 'text') ?? 'Question text unavailable', type: (text(row, 'type', 'question_type') as Question['type'] | null) ?? 'sourced', verification: (text(row, 'verification', 'verification_status') as Question['verification'] | null) ?? 'unverified', source: text(row, 'source', 'source_name', 'reference') }))
}
export async function getRecentPYQs(): Promise<Question[]> {
  const client = ensureClient()
  const { data, error } = await client.from('questions').select('*')
  if (error) throw error
  return rows(data).map((row) => ({ id: text(row, 'id') ?? '', prompt: text(row, 'question', 'prompt', 'text') ?? 'Question text unavailable', type: (text(row, 'type', 'question_type') as Question['type'] | null) ?? 'sourced', verification: (text(row, 'verification', 'verification_status') as Question['verification'] | null) ?? 'unverified', source: text(row, 'source', 'source_name', 'reference') })).filter((question) => question.type === 'pyq' || question.type === 'sourced').slice(0, 8)
}
function subjectMatches(name: string, expected: string) { const normalized = name.toLowerCase(); return normalized === expected.toLowerCase() || (expected === 'Oral Pathology' && normalized.includes('oral')) }

export async function getSubjects(): Promise<Subject[]> {
  const { data, error } = await ensureClient().from('subjects').select('*')
  if (error) throw error
  return rows(data).map((row) => { const name = text(row, 'name', 'title', 'subject_name') ?? 'Unnamed subject'; const chapters = textbookChaptersFor(name); return { id: text(row, 'id') ?? '', name, code: text(row, 'code'), year: text(row, 'year'), semester: text(row, 'semester'), progress: 0, unitCount: chapters.length, topicCount: chapters.length } }).sort((left, right) => left.name.localeCompare(right.name))
}

export async function getSubjectDetail(subjectId: string): Promise<{ subject: Subject | null; units: Unit[]; topics: Topic[] }> {
  const client = ensureClient()
  const [{ data: subjectData, error: subjectError }, { data: unitData }, { data: topicData }] = await Promise.all([
    client.from('subjects').select('*').eq('id', subjectId).maybeSingle(),
    client.from('units').select('*'),
    client.from('topics').select('*'),
  ])
  if (subjectError) throw subjectError
  const units = rows(unitData).filter((row) => belongsTo(row, subjectId)).map((row) => ({ id: text(row, 'id') ?? '', subjectId, name: text(row, 'name', 'title', 'unit_name') ?? 'Unnamed unit', order: number(row, 'order', 'position', 'sequence') }))
  const unitIds = new Set(units.map((unit) => unit.id))
  const topics = rows(topicData).filter((row) => belongsTo(row, subjectId) || unitIds.has(text(row, 'unit_id', 'unitId') ?? '')).map((row) => ({ id: text(row, 'id') ?? '', subjectId, unitId: text(row, 'unit_id', 'unitId'), title: text(row, 'name', 'title', 'topic_name') ?? 'Unnamed topic', progress: number(row, 'completion', 'progress', 'completion_percent') ?? 0, status: (text(row, 'status') as TopicStatus | null) ?? 'not_started' }))
  const subjectRow = subjectData && typeof subjectData === 'object' ? subjectData as Row : null
  const subjectName = subjectRow ? text(subjectRow, 'name', 'title') ?? 'Unnamed subject' : ''
  const chapters = textbookChaptersFor(subjectName)
  const fallbackUnits: Unit[] = chapters.map((chapter, index) => ({ id: `textbook-unit-${subjectId}-${index + 1}`, subjectId, name: chapter.title, order: index + 1 }))
  const fallbackTopics: Topic[] = chapters.map((chapter, index) => ({ id: `textbook-topic-${subjectId}-${index + 1}`, subjectId, unitId: `textbook-unit-${subjectId}-${index + 1}`, title: chapter.title, progress: 0, status: 'not_started' }))
  const resolvedUnits = units.length ? units : fallbackUnits
  const resolvedTopics = topics.length ? topics : fallbackTopics
  return { subject: subjectRow ? { id: subjectId, name: subjectName, code: text(subjectRow, 'code'), year: text(subjectRow, 'year'), semester: text(subjectRow, 'semester'), progress: 0, unitCount: resolvedUnits.length, topicCount: resolvedTopics.length } : null, units: resolvedUnits, topics: resolvedTopics }
}

export async function getTopic(topicId: string, subjectId?: string): Promise<{ topic: Topic | null; subject: Subject | null; source: 'supabase' | 'textbook' | 'notes' | null }> {
  if (topicId.startsWith('textbook-topic-') && subjectId) {
    const detail = await getSubjectDetail(subjectId)
    const topic = detail.topics.find((candidate) => candidate.id === topicId) ?? null
    return { topic, subject: detail.subject, source: topic ? 'textbook' : null }
  }
  const client = ensureClient()
  const { data, error } = await client.from('topics').select('*').eq('id', topicId).maybeSingle()
  if (error) throw error
  if (!data || typeof data !== 'object') return { topic: null, subject: null, source: null }
  const row = data as Row; const resolvedSubjectId = text(row, 'subject_id') ?? subjectId ?? ''; const subjectDetail = resolvedSubjectId ? await getSubjectDetail(resolvedSubjectId) : null
  return { topic: { id: topicId, subjectId: resolvedSubjectId, unitId: text(row, 'unit_id'), title: text(row, 'name', 'title') ?? 'Unnamed topic', progress: number(row, 'completion', 'progress') ?? 0, status: (text(row, 'status') as TopicStatus | null) ?? 'not_started' }, subject: subjectDetail?.subject ?? null, source: 'supabase' }
}

export { seniorNotes, subjectMatches }

export async function getExams(): Promise<Exam[]> { const { data, error } = await ensureClient().from('exams').select('*'); if (error) throw error; const exams = rows(data).map((row) => ({ id: text(row, 'id') ?? '', title: text(row, 'name', 'title', 'subject') ?? 'Untitled exam', examDate: date(row, 'exam_date', 'date', 'scheduled_at'), subjectId: text(row, 'subject_id', 'subjectId') })).sort((left, right) => left.examDate.localeCompare(right.examDate)); return exams.length ? exams : providedExams }

export async function getTimetable(): Promise<TimetableEntry[]> {
  const { data, error } = await ensureClient().from('timetable').select('*')
  if (error) throw error
  const entries = rows(data).map((row) => ({ id: text(row, 'id') ?? '', title: text(row, 'title', 'subject', 'name') ?? 'Untitled class', day: text(row, 'day', 'weekday'), date: text(row, 'date', 'class_date'), startsAt: text(row, 'starts_at', 'start_time', 'time'), endsAt: text(row, 'ends_at', 'end_time'), location: text(row, 'location', 'room', 'venue'), entryType: text(row, 'type', 'entry_type') })); return entries.length ? entries : providedTimetable
}

export async function getStudent(): Promise<Student | null> { const { data, error } = await ensureClient().from('students').select('*').limit(1).maybeSingle(); if (error) throw error; if (!data || typeof data !== 'object') return null; const row = data as Row; return { id: text(row, 'id') ?? '', name: text(row, 'name'), course: text(row, 'course'), year: text(row, 'year'), university: text(row, 'university'), academicYear: text(row, 'academic_year', 'academicYear') } }

export async function getProgressSummary(): Promise<ProgressSummary> {
  const client = ensureClient()
  const [{ data: progress, error: progressError }, { data: attempts, error: attemptsError }, { data: sessions, error: sessionsError }, { count: topicCount, error: topicError }] = await Promise.all([
    client.from('topic_progress').select('*'), client.from('question_attempts').select('*'), client.from('study_sessions').select('*'), client.from('topics').select('id', { count: 'exact', head: true }),
  ])
  if (progressError) throw progressError; if (attemptsError) throw attemptsError; if (sessionsError) throw sessionsError; if (topicError) throw topicError
  const progressRows = rows(progress)
  const completedTopics = progressRows.filter((row) => text(row, 'status') === 'completed' || (number(row, 'completion', 'progress') ?? 0) >= 100).length
  const inProgressTopics = progressRows.filter((row) => text(row, 'status') === 'in_progress' || ((number(row, 'completion', 'progress') ?? 0) > 0 && (number(row, 'completion', 'progress') ?? 0) < 100)).length
  const attemptedRows = rows(attempts); const sessionRows = rows(sessions)
  const studyMinutes = sessionRows.reduce((total, row) => total + (number(row, 'actual_duration_minutes', 'duration_minutes') ?? 0), 0)
  return { overall: topicCount ? Math.round((completedTopics / topicCount) * 100) : 0, completedTopics, inProgressTopics, notStartedTopics: Math.max((topicCount ?? 0) - completedTopics - inProgressTopics, 0), questionsAttempted: attemptedRows.length, correctAnswers: attemptedRows.filter((row) => row.is_correct === true || row.isCorrect === true).length, studyMinutes }
}
