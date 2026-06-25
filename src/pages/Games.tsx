import { useEffect, useState, useMemo } from 'react'
import { supabase, FIXED_USER_ID } from '@/lib/supabase'
import styles from './Games.module.css'

interface RawSession {
  session_id: number
  start_date: string
  duration_minutes: number
  platform: string | null
  game: string | null
  cover_url: string | null
  players: string[]
}

interface GameAgg {
  title: string
  cover_url?: string
  minutes: number
  lastPlayedDate: string
  sessionCount: number
}

type SortKey = 'recent' | 'oldest' | 'playtimeDesc' | 'playtimeAsc' | 'alpha'

const WEEKDAY_ORDER = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
const MONTH_ORDER = ['January', 'February', 'March', 'April', 'May', 'June',
  'July', 'August', 'September', 'October', 'November', 'December']

function formatDuration(minutes: number) {
  const m = Math.max(0, Math.round(minutes || 0))
  const h = Math.floor(m / 60)
  const rem = m % 60
  return h > 0 ? `${h}h ${rem}m` : `${rem}m`
}

function formatHours(minutes: number) {
  return (minutes / 60).toFixed(1)
}

export default function Games() {
  const [rawSessions, setRawSessions] = useState<RawSession[]>([])
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)

  const [filterYear, setFilterYear] = useState<number | 'all'>('all')
  const [filterMonth, setFilterMonth] = useState('all')
  const [filterWeekday, setFilterWeekday] = useState('all')
  const [filterPlatform, setFilterPlatform] = useState('all')
  const [filterPlayedWith, setFilterPlayedWith] = useState('all')
  const [sortKey, setSortKey] = useState<SortKey>('recent')

  useEffect(() => {
    let mounted = true
    ;(async () => {
      setLoading(true)
      setError(null)

      const [sessionsResult, playersResult, sessionPlayersResult] = await Promise.all([
        supabase
          .from('sessions')
          .select('session_id, start_date, duration_minutes, games ( title, cover_url ), platforms ( name )')
          .eq('user_id', FIXED_USER_ID)
          .order('start_date', { ascending: true }),
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

      const sessions: RawSession[] = (sessionsResult.data as any[]).map((s) => ({
        session_id: s.session_id,
        start_date: s.start_date,
        duration_minutes: Number(s.duration_minutes) || 0,
        platform: s.platforms?.name ?? null,
        game: s.games?.title ?? null,
        cover_url: s.games?.cover_url ?? null,
        players: sessionPlayersMap.get(s.session_id) ?? [],
      }))

      setRawSessions(sessions)
      setLoading(false)
    })()
    return () => { mounted = false }
  }, [])

  // Derive available filter options from raw data
  const filterOptions = useMemo(() => {
    const years = new Set<number>()
    const months = new Set<string>()
    const weekdays = new Set<string>()
    const platformHours = new Map<string, number>()
    const playerHours = new Map<string, number>()
    for (const s of rawSessions) {
      if (!s.start_date) continue
      const d = new Date(s.start_date)
      years.add(d.getFullYear())
      months.add(d.toLocaleString('default', { month: 'long' }))
      weekdays.add(d.toLocaleString('default', { weekday: 'long' }))
      if (s.platform) {
        platformHours.set(s.platform, (platformHours.get(s.platform) ?? 0) + s.duration_minutes)
      }
      for (const p of s.players) {
        playerHours.set(p, (playerHours.get(p) ?? 0) + s.duration_minutes)
      }
    }
    return {
      years: Array.from(years).sort((a, b) => b - a),
      months: MONTH_ORDER.filter((m) => months.has(m)),
      weekdays: WEEKDAY_ORDER.filter((d) => weekdays.has(d)),
      platforms: Array.from(platformHours.entries())
        .sort((a, b) => b[1] - a[1])
        .map(([name]) => name),
      players: Array.from(playerHours.entries())
        .sort((a, b) => b[1] - a[1])
        .slice(0, 10)
        .map(([name]) => name),
    }
  }, [rawSessions])

  // Apply all filters
  const filteredSessions = useMemo(() => {
    return rawSessions.filter((s) => {
      if (!s.start_date) return false
      const d = new Date(s.start_date)
      if (filterYear !== 'all' && d.getFullYear() !== filterYear) return false
      if (filterMonth !== 'all' && d.toLocaleString('default', { month: 'long' }) !== filterMonth) return false
      if (filterWeekday !== 'all' && d.toLocaleString('default', { weekday: 'long' }) !== filterWeekday) return false
      if (filterPlatform !== 'all' && s.platform !== filterPlatform) return false
      if (filterPlayedWith !== 'all' && !s.players.includes(filterPlayedWith)) return false
      return true
    })
  }, [rawSessions, filterYear, filterMonth, filterWeekday, filterPlatform, filterPlayedWith])

  // Aggregate filtered sessions into one card per game
  const games: GameAgg[] = useMemo(() => {
    const map = new Map<string, GameAgg>()
    for (const s of filteredSessions) {
      if (!s.game) continue
      const existing = map.get(s.game)
      if (existing) {
        existing.minutes += s.duration_minutes
        existing.sessionCount += 1
        if (!existing.cover_url && s.cover_url) existing.cover_url = s.cover_url
        if (s.start_date > existing.lastPlayedDate) existing.lastPlayedDate = s.start_date
      } else {
        map.set(s.game, {
          title: s.game,
          cover_url: s.cover_url ?? undefined,
          minutes: s.duration_minutes,
          lastPlayedDate: s.start_date,
          sessionCount: 1,
        })
      }
    }
    return Array.from(map.values())
  }, [filteredSessions])

  const sortedGames = useMemo(() => {
    const arr = [...games]
    switch (sortKey) {
      case 'recent':
        arr.sort((a, b) => b.lastPlayedDate.localeCompare(a.lastPlayedDate))
        break
      case 'oldest':
        arr.sort((a, b) => a.lastPlayedDate.localeCompare(b.lastPlayedDate))
        break
      case 'playtimeDesc':
        arr.sort((a, b) => b.minutes - a.minutes)
        break
      case 'playtimeAsc':
        arr.sort((a, b) => a.minutes - b.minutes)
        break
      case 'alpha':
        arr.sort((a, b) => a.title.localeCompare(b.title))
        break
    }
    return arr
  }, [games, sortKey])

  const totalMinutes = useMemo(() => games.reduce((sum, g) => sum + g.minutes, 0), [games])

  const activeFilterCount = [
    filterYear !== 'all', filterMonth !== 'all', filterWeekday !== 'all',
    filterPlatform !== 'all', filterPlayedWith !== 'all',
  ].filter(Boolean).length

  function resetFilters() {
    setFilterYear('all')
    setFilterMonth('all')
    setFilterWeekday('all')
    setFilterPlatform('all')
    setFilterPlayedWith('all')
  }

  return (
    <div className={styles.container}>
      <h1 className={styles.heading}>Games</h1>

      {/* Filter + sort bar */}
      <div className={styles.filterBar}>
        <div className={styles.filterBarHeader}>
          <span className={styles.filterBarTitle}>Filters</span>
          <div className={styles.headerRight}>
            <div className={styles.sortGroup}>
              <label className={styles.filterLabel}>Sort</label>
              <select
                className={`${styles.filterSelect} ${styles.sortSelect}`}
                value={sortKey}
                onChange={(e) => setSortKey(e.target.value as SortKey)}
              >
                <option value="recent">Date Played (Most Recent)</option>
                <option value="oldest">Date Played (Oldest)</option>
                <option value="playtimeDesc">Playtime (Most)</option>
                <option value="playtimeAsc">Playtime (Least)</option>
                <option value="alpha">Alphabetical (A–Z)</option>
              </select>
            </div>
            {activeFilterCount > 0 && (
              <button onClick={resetFilters} className={styles.clearFiltersBtn}>
                Clear all ({activeFilterCount})
              </button>
            )}
          </div>
        </div>
        <div className={styles.filterGrid}>
          {([
            { label: 'Year', value: filterYear, onChange: (v: string) => setFilterYear(v === 'all' ? 'all' : Number(v)), options: filterOptions.years.map(String) },
            { label: 'Month', value: filterMonth, onChange: setFilterMonth, options: filterOptions.months },
            { label: 'Weekday', value: filterWeekday, onChange: setFilterWeekday, options: filterOptions.weekdays },
            { label: 'Platform', value: filterPlatform, onChange: setFilterPlatform, options: filterOptions.platforms },
            { label: 'Played With', value: filterPlayedWith, onChange: setFilterPlayedWith, options: filterOptions.players },
          ] as const).map(({ label, value, onChange, options }) => (
            <div key={label} className={styles.filterGroup}>
              <label className={styles.filterLabel}>
                {label}
              </label>
              <select
                className={`${styles.filterSelect}${String(value) !== 'all' ? ` ${styles.filterSelectActive}` : ''}`}
                value={String(value)}
                onChange={(e) => (onChange as (v: string) => void)(e.target.value)}
              >
                <option value="all">All</option>
                {options.map((o) => <option key={o} value={o}>{o}</option>)}
              </select>
            </div>
          ))}
        </div>
      </div>

      {loading && <div className={styles.loadingMessage}>Loading…</div>}
      {error && <div className={styles.errorMessage}>{error}</div>}

      {!loading && !error && (
        <>
          <div className={styles.resultsSummary}>
            <strong>{games.length}</strong> {games.length === 1 ? 'game' : 'games'}
            <span>·</span>
            <strong>{formatHours(totalMinutes)}h</strong> total playtime
          </div>

          {sortedGames.length === 0 ? (
            <div className={styles.hint}>No games match these filters.</div>
          ) : (
            <div className={styles.gameGrid}>
              {sortedGames.map((g) => (
                <div key={g.title} className={styles.gameCard}>
                  <div className={styles.coverWrap}>
                    {g.cover_url ? (
                      <img
                        className={styles.cover}
                        src={g.cover_url.replace(/^\/\//, 'https://')}
                        alt={g.title}
                      />
                    ) : (
                      <div className={styles.coverPlaceholder} />
                    )}
                  </div>
                  <strong className={styles.gameTitle}>{g.title}</strong>
                  <span className={styles.gamePlaytime}>{formatDuration(g.minutes)}</span>
                </div>
              ))}
            </div>
          )}
        </>
      )}
    </div>
  )
}