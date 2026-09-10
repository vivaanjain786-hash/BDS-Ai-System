import { useState } from 'react'
import type { FormEvent } from 'react'
import { ArrowRight, LockKeyhole, Mail } from 'lucide-react'
import { useNavigate } from 'react-router-dom'
import { isSupabaseConfigured, supabase } from '../lib/supabase'

function authMessage(message: string): string {
  const normalized = message.toLowerCase()
  if (normalized.includes('invalid login credentials')) return 'Email or password is incorrect. Create an account first if you have not registered yet.'
  if (normalized.includes('email not confirmed')) return 'Please confirm your email address from the Supabase confirmation email before signing in.'
  if (normalized.includes('user already registered')) return 'This email is already registered. Switch to Sign in.'
  if (normalized.includes('password')) return 'Use a password with at least 6 characters.'
  return message
}

export function Login() {
  const navigate = useNavigate()
  const [mode, setMode] = useState<'login' | 'signup'>('login')
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [busy, setBusy] = useState(false)
  const [message, setMessage] = useState<string | null>(null)
  const [error, setError] = useState<string | null>(null)

  function clearFeedback() { setError(null); setMessage(null) }

  async function submit(event: FormEvent<HTMLFormElement>) {
    event.preventDefault(); setBusy(true); clearFeedback()
    if (!supabase) { setError('Supabase is not configured for this workspace.'); setBusy(false); return }
    try {
      const result = mode === 'login' ? await supabase.auth.signInWithPassword({ email, password }) : await supabase.auth.signUp({ email, password })
      if (result.error) setError(authMessage(result.error.message))
      else if (mode === 'signup' && !result.data.session) setMessage('Account created. Check your email to confirm your address, then return here to sign in.')
      else navigate('/')
    } catch (requestError: unknown) { setError(requestError instanceof Error ? requestError.message : 'Authentication failed. Please try again.') }
    setBusy(false)
  }

  async function resetPassword() {
    clearFeedback()
    if (!supabase) { setError('Supabase is not configured for this workspace.'); return }
    if (!email) { setError('Enter your email address first, then choose Forgot password.'); return }
    setBusy(true)
    const { error: resetError } = await supabase.auth.resetPasswordForEmail(email, { redirectTo: `${window.location.origin}/login` })
    if (resetError) setError(authMessage(resetError.message)); else setMessage('If an account exists for this email, a password reset link has been sent.')
    setBusy(false)
  }

  return <main className="auth-page"><section className="auth-panel"><div className="brand brand--auth"><div className="brand__mark">B</div><div><strong>BDS companion</strong><span>Academic workspace</span></div></div><span className="eyebrow">Secure access</span><h1>{mode === 'login' ? 'Welcome back.' : 'Create your workspace.'}</h1><p className="lede">{mode === 'login' ? 'Sign in to access your private academic record.' : 'Create an account to start your private academic workspace.'}</p>{!isSupabaseConfigured && <div className="query-error"><LockKeyhole size={18} /><span>Add the Supabase environment variables before signing in.</span></div>}<form className="auth-form" onSubmit={submit}><label>Email address<div className="input-wrap"><Mail size={17} /><input type="email" value={email} onChange={(event) => setEmail(event.target.value)} required autoComplete="email" /></div></label><label>Password<div className="input-wrap"><LockKeyhole size={17} /><input type="password" value={password} onChange={(event) => setPassword(event.target.value)} required minLength={6} autoComplete={mode === 'login' ? 'current-password' : 'new-password'} /></div></label>{error && <p className="form-error">{error}</p>}{message && <p className="form-message">{message}</p>}<button className="button button--primary button--full" disabled={busy || !isSupabaseConfigured}>{busy ? 'Connecting...' : mode === 'login' ? 'Sign in' : 'Create account'} {!busy && <ArrowRight size={16} />}</button></form>{mode === 'login' && <button className="auth-link" onClick={resetPassword} disabled={busy || !isSupabaseConfigured}>Forgot password?</button>}<button className="auth-switch" onClick={() => { setMode(mode === 'login' ? 'signup' : 'login'); clearFeedback() }}>{mode === 'login' ? 'Need an account? Create one' : 'Already have an account? Sign in'}</button></section></main>
}
