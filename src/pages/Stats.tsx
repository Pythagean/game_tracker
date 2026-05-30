import { useEffect, useState } from 'react'
import { supabase } from '@/lib/supabase'
import styles from './AddSession.module.css'

function formatDuration(minutes: number) {
  const m = Math.max(0, Math.round(minutes || 0))
  const h = Math.floor(m / 60)
  const rem = m % 60
  return h > 0 ? `${h}h ${rem}m` : `${rem}m`
}

export default function Stats() {
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)

  const [monthGames, setMonthGames] = useState<{ title: string; minutes: number; cover_url?: string }[]>([])
  const [monthMinutes, setMonthMinutes] = useState<number>(0)
  const [lastMonthGames, setLastMonthGames] = useState<{ title: string; minutes: number; cover_url?: string }[]>([])
  const [lastMonthMinutes, setLastMonthMinutes] = useState<number>(0)

  const [yearGames, setYearGames] = useState<{ title: string; minutes: number; cover_url?: string }[]>([])
  const [yearMinutes, setYearMinutes] = useState<number>(0)

  useEffect(() => {
    let mounted = true
    ;(async () => {
      setLoading(true)
      setError(null)
      const { data: userData } = await supabase.auth.getUser()
      const userId = userData.user?.id
      if (!userId) {
        if (!mounted) return
        setError('Sign in to view your stats')
        setLoading(false)
        return
      }

      const now = new Date()
      const startOfYear = new Date(now.getFullYear(), 0, 1).toISOString().split('T')[0]
      const endOfYear = new Date(now.getFullYear(), 11, 31).toISOString().split('T')[0]

      const { data: sessions, error } = await supabase
        .from('sessions')
        .select('session_id, duration_minutes, start_date, games ( title, cover_url )')
        .eq('user_id', userId)
        .gte('start_date', startOfYear)
        .lte('start_date', endOfYear)

      if (!mounted) return
      if (error) {
        setError(error.message)
        setLoading(false)
        return
      }

      const list = (sessions as any[]) || []

      // determine month boundaries
      const monthStart = new Date(now.getFullYear(), now.getMonth(), 1).toISOString().split('T')[0]
      const monthEnd = new Date(now.getFullYear(), now.getMonth() + 1, 0).toISOString().split('T')[0]
      const lastMonthStart = new Date(now.getFullYear(), now.getMonth() - 1, 1).toISOString().split('T')[0]
      const lastMonthEnd = new Date(now.getFullYear(), now.getMonth(), 0).toISOString().split('T')[0]

      const monthMap = new Map<string, { minutes: number; cover?: string }>()
      const lastMonthMap = new Map<string, { minutes: number; cover?: string }>()
      const yearMap = new Map<string, { minutes: number; cover?: string }>()
      let monthSum = 0
      let lastMonthSum = 0
      let yearSum = 0

      list.forEach((s) => {
        const date = s?.start_date
        const title = s?.games?.title ?? 'Unknown'
        const cover = s?.games?.cover_url ?? undefined
        const minutes = Number(s?.duration_minutes) || 0

        if (!date) return
        // year aggregate
        const y = yearMap.get(title) || { minutes: 0, cover }
        yearMap.set(title, { minutes: y.minutes + minutes, cover: y.cover || cover })
        yearSum += minutes

        // month aggregate
        if (date >= monthStart && date <= monthEnd) {
          const m = monthMap.get(title) || { minutes: 0, cover }
          monthMap.set(title, { minutes: m.minutes + minutes, cover: m.cover || cover })
          monthSum += minutes
        }

        // last-month aggregate
        if (date >= lastMonthStart && date <= lastMonthEnd) {
          const lm = lastMonthMap.get(title) || { minutes: 0, cover }
          lastMonthMap.set(title, { minutes: lm.minutes + minutes, cover: lm.cover || cover })
          lastMonthSum += minutes
        }
      })

      setMonthGames(
        Array.from(monthMap.entries())
          .map(([title, obj]) => ({ title, minutes: obj.minutes, cover_url: obj.cover }))
          .sort((a, b) => (b.minutes - a.minutes) || a.title.localeCompare(b.title))
      )
      setMonthMinutes(monthSum)
      setLastMonthGames(
        Array.from(lastMonthMap.entries())
          .map(([title, obj]) => ({ title, minutes: obj.minutes, cover_url: obj.cover }))
          .sort((a, b) => (b.minutes - a.minutes) || a.title.localeCompare(b.title))
      )
      setLastMonthMinutes(lastMonthSum)
      setYearGames(
        Array.from(yearMap.entries())
          .map(([title, obj]) => ({ title, minutes: obj.minutes, cover_url: obj.cover }))
          .sort((a, b) => (b.minutes - a.minutes) || a.title.localeCompare(b.title))
      )
      setYearMinutes(yearSum)
      setLoading(false)
    })()
    return () => { mounted = false }
  }, [])

  function chunkIntoColumns<T>(items: T[], colSize = 5) {
    const cols: T[][] = []
    for (let i = 0; i < items.length; i += colSize) cols.push(items.slice(i, i + colSize))
    return cols
  }

  function renderColumns(list: { title: string; minutes: number; cover_url?: string }[]) {
    if (list.length === 0) return null
    const cols = chunkIntoColumns(list, 5)
    return (
      <div className={styles.statsColumns}>
        {cols.map((col, ci) => (
          <ul key={ci} style={{ listStyle: 'none', padding: 0, margin: 0 }}>
            {col.map((g) => (
              <li key={g.title} style={{ display: 'flex', alignItems: 'center', gap: 12, marginBottom: 8 }}>
                {g.cover_url ? <img src={g.cover_url.replace(/^\/\//, 'https://')} alt="cover" className={styles.thumbSmall} /> : <div style={{ width: 40, height: 40 }} />}
                <span style={{ display: 'flex', flexDirection: 'column' }}><strong>{g.title}</strong><span>{formatDuration(g.minutes)}</span></span>
              </li>
            ))}
          </ul>
        ))}
      </div>
    )
  }

  const now = new Date()
  const thisMonthLabel = now.toLocaleString('default', { month: 'long'})
  const lastMonthDate = new Date(now.getFullYear(), now.getMonth() - 1, 1)
  const lastMonthLabel = lastMonthDate.toLocaleString('default', { month: 'long' })
  const thisYearLabel = now.getFullYear().toString()

  return (
    <div className={styles.container}>
      <h1>Stats</h1>
      {loading && <div>Loading…</div>}
      {error && <div style={{ color: '#dc2626' }}>{error}</div>}

      {!loading && !error && (
        <div>
          <section style={{ marginBottom: 20 }}>
            <h2>Games Played in {thisMonthLabel}</h2>
            <div className={styles.hint} style={{ fontWeight: 700, fontSize: '1.05rem', paddingBottom: 8, marginBottom: 12 }}>{formatDuration(monthMinutes)} total</div>
            {monthGames.length === 0 ? <div className={styles.hint}>No games recorded this month.</div> : renderColumns(monthGames)}
          </section>

          <section style={{ marginBottom: 20 }}>
            <h2>Games Played in {lastMonthLabel}</h2>
            <div className={styles.hint} style={{ fontWeight: 700, fontSize: '1.05rem', paddingBottom: 8, marginBottom: 12 }}>{formatDuration(lastMonthMinutes)} total</div>
            {lastMonthGames.length === 0 ? <div className={styles.hint}>No games recorded last month.</div> : renderColumns(lastMonthGames)}
          </section>

          <section>
            <h2>Games Played in {thisYearLabel}</h2>
            <div className={styles.hint} style={{ fontWeight: 700, fontSize: '1.05rem', paddingBottom: 8, marginBottom: 12 }}>{formatDuration(yearMinutes)} total</div>
            {yearGames.length === 0 ? <div className={styles.hint}>No games recorded this year.</div> : renderColumns(yearGames)}
          </section>
        </div>
      )}
    </div>
  )
}
