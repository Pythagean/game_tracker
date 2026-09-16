import { useEffect, useState, useMemo } from 'react'
import { supabase, FIXED_USER_ID } from '@/lib/supabase'
import styles from './Log.module.css'

interface LogSession {
  session_id: number
  start_date: string
  start_time: string | null
  duration_minutes: number
  game_mode: string | null
  platform: string | null
  game: string | null
  players: string[]
}

function formatDuration(minutes: number) {
  const m = Math.max(0, Math.round(minutes || 0))
  const h = Math.floor(m / 60)
  const rem = m % 60
  return h > 0 ? `${h}h ${rem}m` : `${rem}m`
}

function formatDate(dateStr: string) {
  return new Date(`${dateStr}T00:00:00`).toLocaleDateString('en-US', {
    year: 'numeric', month: 'short', day: 'numeric',
  })
}

function formatTime(timeStr: string | null) {
  if (!timeStr) return '—'
  const [h, m] = timeStr.split(':')
  const date = new Date()
  date.setHours(Number(h), Number(m))
  return date.toLocaleTimeString('en-US', { hour: 'numeric', minute: '2-digit', hour12: true })
}

export default function Log() {
  const [sessions, setSessions] = useState<LogSession[]>([])
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)
  const [filterYear, setFilterYear] = useState<number | 'all'>(new Date().getFullYear())

  useEffect(() => {
    let mounted = true
    ;(async () => {
      setLoading(true)
      setError(null)

      const [sessionsResult, playersResult, sessionPlayersResult] = await Promise.all([
        supabase
          .from('sessions')
          .select('session_id, start_date, start_time, duration_minutes, game_mode, games ( title ), platforms ( name )')
          .eq('user_id', FIXED_USER_ID)
          .order('start_date', { ascending: false })
          .order('start_time', { ascending: false }),
        supabase.from('players').select('player_id, name'),
        supabase.from('session_player').select('*'),
      ])

      if (!mounted) return

      if (sessionsResult.error) { setError(sessionsResult.error.message); setLoading(false); return }
      if (playersResult.error) { setError(playersResult.error.message); setLoading(false); return }
      if (sessionPlayersResult.error) { setError(sessionPlayersResult.error.message); setLoading(false); return }

      const playerMap = new Map<number, string>()
      for (const p of playersResult.data as any[]) {
        playerMap.set(p.player_id, p.name)
      }

      const sessionPlayersMap = new Map<number, string[]>()
      for (const sp of sessionPlayersResult.data as any[]) {
        if (!sessionPlayersMap.has(sp.session_id)) sessionPlayersMap.set(sp.session_id, [])
        const name = playerMap.get(sp.player_id)
        if (name) sessionPlayersMap.get(sp.session_id)!.push(name)
      }

      const rows: LogSession[] = (sessionsResult.data as any[]).map((s) => ({
        session_id: s.session_id,
        start_date: s.start_date,
        start_time: s.start_time ?? null,
        duration_minutes: Number(s.duration_minutes) || 0,
        game_mode: s.game_mode ?? null,
        platform: s.platforms?.name ?? null,
        game: s.games?.title ?? null,
        players: sessionPlayersMap.get(s.session_id) ?? [],
      }))

      setSessions(rows)
      setLoading(false)
    })()
    return () => { mounted = false }
  }, [])

  const availableYears = useMemo(() => {
    const years = new Set<number>()
    for (const s of sessions) {
      if (s.start_date) years.add(new Date(s.start_date).getFullYear())
    }
    return Array.from(years).sort((a, b) => b - a)
  }, [sessions])

  const filteredSessions = useMemo(() => {
    if (filterYear === 'all') return sessions
    return sessions.filter((s) => s.start_date && new Date(s.start_date).getFullYear() === filterYear)
  }, [sessions, filterYear])

  return (
    <div className={styles.container}>
      <h1 className={styles.heading}>Log</h1>

      <div className={styles.filterBar}>
        <div className={styles.filterBarHeader}>
          <span className={styles.filterBarTitle}>Filters</span>
          {filterYear !== 'all' && (
            <button onClick={() => setFilterYear('all')} className={styles.clearFiltersBtn}>
              Clear all (1)
            </button>
          )}
        </div>
        <div className={styles.filterGrid}>
          <div className={styles.filterGroup}>
            <label className={styles.filterLabel}>Year</label>
            <select
              className={`${styles.filterSelect}${filterYear !== 'all' ? ` ${styles.filterSelectActive}` : ''}`}
              value={String(filterYear)}
              onChange={(e) => setFilterYear(e.target.value === 'all' ? 'all' : Number(e.target.value))}
            >
              <option value="all">All</option>
              {availableYears.map((y) => <option key={y} value={y}>{y}</option>)}
            </select>
          </div>
        </div>
      </div>

      {loading && <div className={styles.loadingMessage}>Loading…</div>}
      {error && <div className={styles.errorMessage}>{error}</div>}

      {!loading && !error && (
        <div className={styles.tableWrapper}>
          {filteredSessions.length === 0 ? (
            <div className={styles.emptyMessage}>No sessions logged yet.</div>
          ) : (
            <table className={styles.table}>
              <thead>
                <tr>
                  <th>Date</th>
                  <th>Time</th>
                  <th>Game</th>
                  <th>Platform</th>
                  <th>Mode</th>
                  <th>Duration</th>
                  <th>Played With</th>
                </tr>
              </thead>
              <tbody>
                {filteredSessions.map((s) => (
                  <tr key={s.session_id}>
                    <td>{formatDate(s.start_date)}</td>
                    <td className={styles.dim}>{formatTime(s.start_time)}</td>
                    <td className={styles.gameCell}>{s.game ?? '-'}</td>
                    <td className={styles.dim}>{s.platform ?? '-'}</td>
                    <td className={styles.dim}>{s.game_mode ?? '-'}</td>
                    <td className={styles.durationCell}>{formatDuration(s.duration_minutes)}</td>
                    <td className={styles.dim}>{s.players.length > 0 ? s.players.join(', ') : '-'}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          )}
        </div>
      )}
    </div>
  )
}
