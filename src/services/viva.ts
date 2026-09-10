import type { ExaminerPersonality, VivaDifficulty, VivaEvaluation, VivaMode, VivaQuestion, VivaSessionRecord } from '../types'

const historyKey = 'bds-companion-viva-history'
const weakKey = 'bds-companion-viva-weak-topics'

export type VivaConfig = { subjectId: string; subjectName: string; selectedUnitIds: string[]; selectedTopicIds: string[]; portionLabel: string; difficulty: VivaDifficulty; mode: VivaMode; personality: ExaminerPersonality; questionCount: number }

export function generatePortionQuestions(config: VivaConfig, topics: Array<{ id: string; title: string }>): VivaQuestion[] {
  const selected = topics.filter((topic) => config.selectedTopicIds.includes(topic.id))
  const prompts = selected.flatMap((topic) => [
    { prompt: `Define the scope of ${topic.title}.`, difficulty: 'basic' as const, questionType: 'definition' },
    { prompt: `Explain the important principles you would revise under ${topic.title}.`, difficulty: 'intermediate' as const, questionType: 'explanation' },
    { prompt: `As a follow-up, differentiate the most important concepts within ${topic.title}.`, difficulty: 'advanced' as const, questionType: 'follow_up' },
    { prompt: `How would you apply your understanding of ${topic.title} in an academic or clinical discussion?`, difficulty: 'advanced' as const, questionType: 'application' },
  ])
  const ordered = config.difficulty === 'mixed' ? prompts : prompts.filter((prompt) => prompt.difficulty === config.difficulty)
  const offset = Math.floor(Math.random() * Math.max(ordered.length, 1))
  return Array.from({ length: config.questionCount }, (_, index) => { const prompt = ordered[(index + offset) % Math.max(ordered.length, 1)]; const topic = selected[index % Math.max(selected.length, 1)]; return { id: `local-viva-${topic?.id ?? 'empty'}-${Date.now()}-${index + 1}`, prompt: prompt?.prompt ?? 'No selected topic is available for this viva.', topicId: topic?.id ?? '', topicTitle: topic?.title ?? 'Selected portion', difficulty: prompt?.difficulty ?? 'basic', questionType: prompt?.questionType ?? 'scope_check', source: 'practice_prompt', verification: 'generated' } })
}

export function evaluateAnswer(answer: string, question: VivaQuestion, personality: ExaminerPersonality): VivaEvaluation {
  const normalized = answer.trim().toLowerCase(); const didNotKnow = normalized === "i don't know" || normalized === 'i dont know' || normalized === 'idk' || normalized.length === 0
  if (didNotKnow) return { accuracy: 0, completeness: 0, reasoning: 0, relevance: 10, score: 0, mistakeType: 'did_not_know', feedback: personality === 'friendly' ? 'That is okay. Mark this topic for revision before trying again.' : 'No answer was provided. Review the selected topic and retry.' }
  const words = normalized.split(/\s+/).length; const relevance = normalized.includes(question.topicTitle.toLowerCase().split(' ')[0]) ? 8 : 6; const accuracy = Math.min(10, 3 + Math.floor(words / 12)); const completeness = Math.min(10, 2 + Math.floor(words / 15)); const reasoning = Math.min(10, 2 + Math.floor(words / 18)); const score = Math.round((accuracy + completeness + reasoning + relevance) / 4); const mistakeType = score >= 8 ? 'correct' : score >= 5 ? 'partially_correct' : 'incomplete'
  return { accuracy, completeness, reasoning, relevance, score, mistakeType, feedback: score >= 8 ? 'Relevant answer recorded. Keep the explanation precise and connected to the selected portion.' : 'Your answer is related to the selected topic, but it needs more complete explanation and reasoning.' }
}

export function saveVivaSession(session: VivaSessionRecord): void { const history = readVivaHistory(); localStorage.setItem(historyKey, JSON.stringify([session, ...history].slice(0, 50))); const weak = new Set(readWeakTopics()); session.answers.filter((answer) => answer.evaluation.score < 6).forEach((answer) => weak.add(answer.topicId)); localStorage.setItem(weakKey, JSON.stringify([...weak])) }
export function readVivaHistory(): VivaSessionRecord[] { try { const value: unknown = JSON.parse(localStorage.getItem(historyKey) ?? '[]'); return Array.isArray(value) ? value as VivaSessionRecord[] : [] } catch { return [] } }
export function readWeakTopics(): string[] { try { const value: unknown = JSON.parse(localStorage.getItem(weakKey) ?? '[]'); return Array.isArray(value) ? value.filter((item): item is string => typeof item === 'string') : [] } catch { return [] } }
export function clearVivaHistory(): void { localStorage.removeItem(historyKey); localStorage.removeItem(weakKey) }
export function vivaModeLabel(mode: VivaMode): string { return ({ rapid_fire: 'Rapid Fire', standard: 'Standard Viva', examiner: 'Examiner Mode', clinical: 'Clinical Viva' })[mode] }
