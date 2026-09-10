import type { ReactNode } from 'react'
import { AlertCircle, LoaderCircle } from 'lucide-react'
import { EmptyState } from './EmptyState'

type QueryStateProps = { loading: boolean; error: string | null; isEmpty: boolean; children: ReactNode; emptyTitle: string; emptyDescription: string }
export function QueryState({ loading, error, isEmpty, children, emptyTitle, emptyDescription }: QueryStateProps) {
  if (loading) return <div className="query-state"><LoaderCircle className="spin" size={20} /><span>Loading connected data...</span></div>
  if (error) return <div className="query-error"><AlertCircle size={18} /><div><strong>Unable to load data</strong><p>{error}</p></div></div>
  if (isEmpty) return <EmptyState title={emptyTitle} description={emptyDescription} />
  return children
}
