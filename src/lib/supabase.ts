import { createClient } from '@supabase/supabase-js'

const url = import.meta.env.VITE_SUPABASE_URL as string | undefined
const publishableKey = import.meta.env.VITE_SUPABASE_PUBLISHABLE_KEY as string | undefined

export const isSupabaseConfigured = Boolean(url && publishableKey)
export const supabase = isSupabaseConfigured ? createClient(url!, publishableKey!) : null

export type AuthSession = Awaited<ReturnType<NonNullable<typeof supabase>['auth']['getSession']>>['data']['session']

export function configurationError(): Error {
	return new Error('Supabase is not configured. Add VITE_SUPABASE_URL and VITE_SUPABASE_PUBLISHABLE_KEY to .env.local.')
}