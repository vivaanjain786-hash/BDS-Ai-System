import { useState } from 'react'
import { ExternalLink, MessageCircleQuestion, Sparkles } from 'lucide-react'
import { useSearchParams } from 'react-router-dom'

const geminiUrl = 'https://gemini.google.com/app'
export function AskGemini() {
  const [searchParams] = useSearchParams()
  const [topic, setTopic] = useState(searchParams.get('topic') ?? '')
  const [subject, setSubject] = useState(searchParams.get('subject') ?? '')
  const [request, setRequest] = useState('Explain this clearly for a BDS student, using concise steps and an exam-focused summary.')
  const prompt = `${subject ? `Subject: ${subject}\n` : ''}${topic ? `Topic: ${topic}\n` : ''}\n${request}\n\nDo not invent textbook-specific facts. Clearly distinguish general explanation from verified source material.`
  function openGemini() { window.open(`${geminiUrl}?prompt=${encodeURIComponent(prompt)}`, '_blank', 'noopener,noreferrer') }
  return <div className="page-stack"><section className="page-intro"><span className="eyebrow">External study assistant</span><h1>Ask Gemini</h1><p className="lede">Prepare a focused academic prompt and continue directly in Gemini.</p></section><section className="ask-gemini-layout"><article className="card ask-gemini-card"><div className="ask-gemini-heading"><div className="ask-gemini-icon"><Sparkles size={22} /></div><div><span className="eyebrow">Prompt builder</span><h2>What do you want to understand?</h2></div></div><label>Subject<input value={subject} onChange={(event) => setSubject(event.target.value)} placeholder="e.g. Pharmacology" /></label><label>Topic<input value={topic} onChange={(event) => setTopic(event.target.value)} placeholder="e.g. General Pharmacology" /></label><label>Your request<textarea value={request} onChange={(event) => setRequest(event.target.value)} rows={5} /></label><button className="button button--primary button--full" onClick={openGemini}><MessageCircleQuestion size={17} /> Open in Gemini <ExternalLink size={15} /></button></article><aside className="card ask-gemini-preview"><span className="eyebrow">Prompt preview</span><pre>{prompt}</pre><p>Gemini opens in a separate tab. Your prompt is prepared locally and is not stored by this app.</p></aside></section></div>
}
