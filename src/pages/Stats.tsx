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

  const [monthGames, setMonthGames] = useState<{ title: string; minutes: number }[]>([])
  const [monthMinutes, setMonthMinutes] = useState<number>(0)

  const [yearGames, setYearGames] = useState<{ title: string; minutes: number }[]>([])
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
        .select('session_id, duration_minutes, start_date, games ( title )')
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

      const monthMap = new Map<string, number>()
      const yearMap = new Map<string, number>()
      let monthSum = 0
      let yearSum = 0

      list.forEach((s) => {
        const date = s?.start_date
        const title = s?.games?.title ?? 'Unknown'
        const minutes = Number(s?.duration_minutes) || 0

        if (!date) return
        // year aggregate
        yearMap.set(title, (yearMap.get(title) || 0) + minutes)
        yearSum += minutes

        // month aggregate
        if (date >= monthStart && date <= monthEnd) {
          monthMap.set(title, (monthMap.get(title) || 0) + minutes)
          monthSum += minutes
        }
      })

      setMonthGames(
        Array.from(monthMap.entries())
          .map(([title, minutes]) => ({ title, minutes }))
          .sort((a, b) => (b.minutes - a.minutes) || a.title.localeCompare(b.title))
      )
      setMonthMinutes(monthSum)
      setYearGames(
        Array.from(yearMap.entries())
          .map(([title, minutes]) => ({ title, minutes }))
          .sort((a, b) => (b.minutes - a.minutes) || a.title.localeCompare(b.title))
      )
      setYearMinutes(yearSum)
      setLoading(false)
    })()
    return () => { mounted = false }
  }, [])

  return (
    <div className={styles.container}>
      <h1>Stats</h1>
      {loading && <div>Loading…</div>}
      {error && <div style={{ color: '#dc2626' }}>{error}</div>}

      {!loading && !error && (
        <div>
          <section style={{ marginBottom: 20 }}>
            <h2>Games Played This Month</h2>
            <div className={styles.hint}>{formatDuration(monthMinutes)} total</div>
            {monthGames.length === 0 ? <div className={styles.hint}>No games recorded this month.</div> : (
              <ul>
                {monthGames.map((g) => <li key={g.title}>{g.title} — {formatDuration(g.minutes)}</li>)}
              </ul>
            )}
          </section>

          <section>
            <h2>Games Played This Year</h2>
            <div className={styles.hint}>{formatDuration(yearMinutes)} total</div>
            {yearGames.length === 0 ? <div className={styles.hint}>No games recorded this year.</div> : (
              <ul>
                {yearGames.map((g) => <li key={g.title}>{g.title} — {formatDuration(g.minutes)}</li>)}
              </ul>
            )}
          </section>
        </div>
      )}
    </div>
  )
}
