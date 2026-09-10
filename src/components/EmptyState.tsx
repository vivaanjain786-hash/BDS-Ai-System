import type { ReactNode } from 'react'
import { Inbox } from 'lucide-react'
type EmptyStateProps = { title: string; description: string; action?: ReactNode }
export function EmptyState({ title, description, action }: EmptyStateProps) { return <div className="empty-state"><span className="empty-state__icon"><Inbox size={20} strokeWidth={1.8} /></span><h3>{title}</h3><p>{description}</p>{action}</div> }