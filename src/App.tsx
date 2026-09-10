import { useEffect, useState } from 'react'
import { BrowserRouter, Navigate, Route, Routes } from 'react-router-dom'
import { AppShell } from './components/AppShell'
import { Dashboard } from './pages/Dashboard'
import { Profile } from './pages/Profile'
import { Progress } from './pages/Progress'
import { Subjects } from './pages/Subjects'
import { SubjectDetail } from './pages/SubjectDetail'
import { StudySession } from './pages/StudySession'
import { Topic } from './pages/Topic'
import { Login } from './pages/Login'
import { Timetable } from './pages/Timetable'
import { Viva } from './pages/Viva'
import { AskGemini } from './pages/AskGemini'
import { supabase, type AuthSession } from './lib/supabase'
import './App.css'

function App() {
	const [session, setSession] = useState<AuthSession>(null)
	const [loading, setLoading] = useState(Boolean(supabase))
	useEffect(() => { if (!supabase) return; const client = supabase; client.auth.getSession().then(({ data }) => { setSession(data.session); setLoading(false) }); const { data: listener } = client.auth.onAuthStateChange((_event, nextSession) => setSession(nextSession)); return () => listener.subscription.unsubscribe() }, [])
	if (loading) return <div className="auth-loading">Loading your workspace...</div>
	return <BrowserRouter><Routes><Route path="/login" element={session ? <Navigate to="/" replace /> : <Login />} /><Route element={session ? <AppShell email={session?.user.email ?? ''} /> : <Navigate to="/login" replace />}><Route index element={<Dashboard />} /><Route path="subjects" element={<Subjects />} /><Route path="subjects/:subjectId" element={<SubjectDetail />} /><Route path="topics/:topicId" element={<Topic />} /><Route path="subjects/:subjectId/topics/:topicId" element={<Topic />} /><Route path="study" element={<StudySession />} /><Route path="study-session" element={<StudySession />} /><Route path="timetable" element={<Timetable />} /><Route path="viva" element={<Viva />} /><Route path="ask-gemini" element={<AskGemini />} /><Route path="progress" element={<Progress />} /><Route path="profile" element={<Profile />} /></Route></Routes></BrowserRouter>
}

export default App
