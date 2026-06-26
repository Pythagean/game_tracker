import { useEffect, useState, useMemo } from 'react'
import { BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip, ResponsiveContainer } from 'recharts'
import { supabase, FIXED_USER_ID } from '@/lib/supabase'
import styles from './Games.module.css'

interface RawSession {
  session_id: number
  game_id: number | null
  start_date: string
  duration_minutes: number
  game_mode: string | null
  platform: string | null
  game: string | null
  cover_url: string | null
  players: string[]
}

interface GameAgg {
  game_id: number | null
  title: string
  cover_url?: string
  minutes: number
  lastPlayedDate: string
  sessionCount: number
}

interface SelectedGameRef {
  game_id: number
  title: string
  cover_url?: string
}

interface GameMeta {
  release_date: string | null
  metacritic_score: number | null
  publisher: string | null
  franchise: string | null
  genres: string[]
  themes: string[]
  developers: string[]
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

function BreakdownSection({ title, items, total }: { title: string; items: { label: string; minutes: number }[]; total: number }) {
  return (
    <div className={styles.modalSection}>
      <div className={styles.modalSectionTitle}>{title}</div>
      <div className={styles.breakdownList}>
        {items.map((item) => {
          const pct = total > 0 ? Math.round((item.minutes / total) * 100) : 0
          return (
            <div key={item.label} className={styles.breakdownRow}>
              <div className={styles.breakdownLabelRow}>
                <span className={styles.breakdownLabel}>{item.label}</span>
                <span className={styles.breakdownValue}>{formatDuration(item.minutes)}</span>
              </div>
              <div className={styles.breakdownBarTrack}>
                <div className={styles.breakdownBarFill} style={{ width: `${pct}%` }} />
              </div>
            </div>
          )
        })}
      </div>
    </div>
  )
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

  const [selectedGame, setSelectedGame] = useState<SelectedGameRef | null>(null)
  const [gameMeta, setGameMeta] = useState<GameMeta | null>(null)
  const [metaLoading, setMetaLoading] = useState(false)

  useEffect(() => {
    let mounted = true
    ;(async () => {
      setLoading(true)
      setError(null)

      const [sessionsResult, playersResult, sessionPlayersResult] = await Promise.all([
        supabase
          .from('sessions')
          .select('session_id, game_id, start_date, duration_minutes, game_mode, games ( title, cover_url ), platforms ( name )')
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
        game_id: s.game_id ?? null,
        start_date: s.start_date,
        duration_minutes: Number(s.duration_minutes) || 0,
        game_mode: s.game_mode ?? null,
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

  // Fetch rich metadata (developer, publisher, genres, etc.) only when a game's modal is opened
  useEffect(() => {
    if (!selectedGame) { setGameMeta(null); return }
    let mounted = true
    setMetaLoading(true)
    ;(async () => {
      const { data, error } = await supabase
        .from('games')
        .select(`
          release_date,
          metacritic_score,
          publishers ( name ),
          franchises ( name ),
          game_genre ( genres ( name ) ),
          game_theme ( themes ( name ) ),
          game_developer ( developers ( name ) )
        `)
        .eq('game_id', selectedGame.game_id)
        .single()

      if (!mounted) return
      if (error || !data) { setGameMeta(null); setMetaLoading(false); return }

      const d = data as any
      setGameMeta({
        release_date: d.release_date ?? null,
        metacritic_score: d.metacritic_score ?? null,
        publisher: d.publishers?.name ?? null,
        franchise: d.franchises?.name ?? null,
        genres: (d.game_genre ?? []).map((g: any) => g.genres?.name).filter(Boolean),
        themes: (d.game_theme ?? []).map((t: any) => t.themes?.name).filter(Boolean),
        developers: (d.game_developer ?? []).map((g: any) => g.developers?.name).filter(Boolean),
      })
      setMetaLoading(false)
    })()
    return () => { mounted = false }
  }, [selectedGame])

  // Escape-to-close + lock page scroll while the modal is open
  useEffect(() => {
    if (!selectedGame) return
    function onKey(e: KeyboardEvent) {
      if (e.key === 'Escape') setSelectedGame(null)
    }
    window.addEventListener('keydown', onKey)
    const prevOverflow = document.body.style.overflow
    document.body.style.overflow = 'hidden'
    return () => {
      window.removeEventListener('keydown', onKey)
      document.body.style.overflow = prevOverflow
    }
  }, [selectedGame])

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
        if (existing.game_id == null && s.game_id != null) existing.game_id = s.game_id
      } else {
        map.set(s.game, {
          game_id: s.game_id,
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

  // All-time detail for the modal — deliberately derived from the full, unfiltered
  // rawSessions list rather than `filteredSessions`, so it ignores the page's active filters.
  const gameDetail = useMemo(() => {
    if (!selectedGame) return null
    const sessions = rawSessions.filter((s) => s.game_id === selectedGame.game_id)
    if (sessions.length === 0) {
      return {
        totalMinutes: 0, sessionCount: 0, avgMinutes: 0,
        firstPlayedDate: null as string | null, lastPlayedDate: null as string | null, spanDays: 0,
        platforms: [] as { label: string; minutes: number }[],
        players: [] as { label: string; minutes: number }[],
        modes: [] as { label: string; minutes: number }[],
        weekday: [] as { label: string; minutes: number; hours: number }[],
        monthly: [] as { label: string; minutes: number; hours: number }[],
      }
    }

    const sorted = [...sessions].sort((a, b) => a.start_date.localeCompare(b.start_date))
    const totalMin = sessions.reduce((sum, s) => sum + s.duration_minutes, 0)
    const firstPlayedDate = sorted[0].start_date
    const lastPlayedDate = sorted[sorted.length - 1].start_date
    const spanDays = Math.max(0, Math.round(
      (new Date(lastPlayedDate).getTime() - new Date(firstPlayedDate).getTime()) / 86400000
    ))

    const platformMap = new Map<string, number>()
    const playerMap = new Map<string, number>()
    const modeMap = new Map<string, number>()
    const weekdayMap = new Map<string, number>()
    const monthMap = new Map<string, number>()
    const monthOrder: string[] = []

    for (const s of sessions) {
      if (s.platform) platformMap.set(s.platform, (platformMap.get(s.platform) ?? 0) + s.duration_minutes)
      for (const p of s.players) playerMap.set(p, (playerMap.get(p) ?? 0) + s.duration_minutes)
      if (s.game_mode) modeMap.set(s.game_mode, (modeMap.get(s.game_mode) ?? 0) + s.duration_minutes)

      const d = new Date(s.start_date)
      const weekday = d.toLocaleString('default', { weekday: 'long' })
      weekdayMap.set(weekday, (weekdayMap.get(weekday) ?? 0) + s.duration_minutes)

      const key = d.toLocaleString('default', { month: 'short', year: '2-digit' })
      if (!monthMap.has(key)) monthOrder.push(key)
      monthMap.set(key, (monthMap.get(key) ?? 0) + s.duration_minutes)
    }

    monthOrder.sort((a, b) => {
      const [ma, ya] = a.split(' ')
      const [mb, yb] = b.split(' ')
      return new Date(`20${ya}-${ma}-01`).getTime() - new Date(`20${yb}-${mb}-01`).getTime()
    })

    const toSortedList = (m: Map<string, number>) =>
      Array.from(m.entries())
        .map(([label, minutes]) => ({ label, minutes }))
        .sort((a, b) => b.minutes - a.minutes)

    return {
      totalMinutes: totalMin,
      sessionCount: sessions.length,
      avgMinutes: totalMin / sessions.length,
      firstPlayedDate,
      lastPlayedDate,
      spanDays,
      platforms: toSortedList(platformMap),
      players: toSortedList(playerMap),
      modes: toSortedList(modeMap),
      weekday: WEEKDAY_ORDER.map((day) => ({
        label: day.slice(0, 3),
        minutes: weekdayMap.get(day) ?? 0,
        hours: +((weekdayMap.get(day) ?? 0) / 60).toFixed(1),
      })),
      monthly: monthOrder.map((label) => ({
        label,
        minutes: monthMap.get(label) ?? 0,
        hours: +((monthMap.get(label) ?? 0) / 60).toFixed(1),
      })),
    }
  }, [rawSessions, selectedGame])

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

  function openGame(g: GameAgg) {
    if (g.game_id == null) return
    setSelectedGame({ game_id: g.game_id, title: g.title, cover_url: g.cover_url })
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
                <div
                  key={g.title}
                  className={styles.gameCard}
                  onClick={() => openGame(g)}
                  role="button"
                  tabIndex={0}
                  onKeyDown={(e) => { if (e.key === 'Enter' || e.key === ' ') openGame(g) }}
                >
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

      {selectedGame && (
        <div className={styles.modalOverlay} onClick={() => setSelectedGame(null)}>
          <div
            className={styles.modalPanel}
            onClick={(e) => e.stopPropagation()}
            role="dialog"
            aria-modal="true"
            aria-label={selectedGame.title}
          >
            <button
              className={styles.modalClose}
              onClick={() => setSelectedGame(null)}
              aria-label="Close"
            >
              ✕
            </button>

            <div className={styles.modalHeader}>
              <div className={styles.modalCoverWrap}>
                {selectedGame.cover_url ? (
                  <img
                    className={styles.modalCover}
                    src={selectedGame.cover_url.replace(/^\/\//, 'https://')}
                    alt={selectedGame.title}
                  />
                ) : (
                  <div className={styles.coverPlaceholder} />
                )}
              </div>
              <div>
                <h2 className={styles.modalTitle}>{selectedGame.title}</h2>
                {metaLoading && <div className={styles.hint}>Loading details…</div>}
                {!metaLoading && gameMeta && gameMeta.genres.length > 0 && (
                  <div className={styles.modalTags}>
                    {gameMeta.genres.slice(0, 4).map((g) => (
                      <span key={g} className={styles.tag}>{g}</span>
                    ))}
                  </div>
                )}
              </div>
            </div>

            {gameDetail && gameDetail.sessionCount === 0 && (
              <div className={styles.hint}>No recorded sessions for this game yet.</div>
            )}

            {gameDetail && gameDetail.sessionCount > 0 && (
              <>
                <div className={styles.statTileGrid}>
                  <div className={styles.statTile}>
                    <div className={styles.statTileLabel}>Total Playtime</div>
                    <div className={styles.statTileValue}>{formatDuration(gameDetail.totalMinutes)}</div>
                  </div>
                  <div className={styles.statTile}>
                    <div className={styles.statTileLabel}>Sessions</div>
                    <div className={styles.statTileValue}>{gameDetail.sessionCount}</div>
                  </div>
                  <div className={styles.statTile}>
                    <div className={styles.statTileLabel}>Avg Session</div>
                    <div className={styles.statTileValue}>{formatDuration(gameDetail.avgMinutes)}</div>
                  </div>
                  <div className={styles.statTile}>
                    <div className={styles.statTileLabel}>First Played</div>
                    <div className={styles.statTileValue}>
                      {gameDetail.firstPlayedDate ? new Date(gameDetail.firstPlayedDate).toLocaleDateString() : '—'}
                    </div>
                  </div>
                  <div className={styles.statTile}>
                    <div className={styles.statTileLabel}>Last Played</div>
                    <div className={styles.statTileValue}>
                      {gameDetail.lastPlayedDate ? new Date(gameDetail.lastPlayedDate).toLocaleDateString() : '—'}
                    </div>
                  </div>
                  <div className={styles.statTile}>
                    <div className={styles.statTileLabel}>Played Over</div>
                    <div className={styles.statTileValue}>
                      {gameDetail.spanDays} {gameDetail.spanDays === 1 ? 'day' : 'days'}
                    </div>
                  </div>
                </div>

                {gameDetail.monthly.length > 0 && (
                  <div className={styles.modalSection}>
                    <div className={styles.modalSectionTitle}>Playtime by Month</div>
                    <div className={styles.modalChartWrapper}>
                      <ResponsiveContainer width="100%" height="100%">
                        <BarChart data={gameDetail.monthly}>
                          <CartesianGrid strokeDasharray="3 3" vertical={false} stroke="#2c3442" />
                          <XAxis dataKey="label" tick={{ fontSize: 10, fill: '#9aa3b2' }} tickLine={false} axisLine={false} />
                          <YAxis tick={{ fontSize: 10, fill: '#9aa3b2' }} tickLine={false} axisLine={false} width={32} />
                          <Tooltip
                            formatter={(value: any) => `${value}h`}
                            cursor={{ fill: 'rgba(255,255,255,0.05)' }}
                            contentStyle={{ background: '#232b38', border: '1px solid #2c3442', borderRadius: 8 }}
                            itemStyle={{ color: '#eef1f6' }}
                            labelStyle={{ color: '#9aa3b2' }}
                          />
                          <Bar dataKey="hours" fill="#f2a541" radius={[3, 3, 0, 0]} />
                        </BarChart>
                      </ResponsiveContainer>
                    </div>
                  </div>
                )}

                {gameDetail.weekday.length > 0 && (
                  <div className={styles.modalSection}>
                    <div className={styles.modalSectionTitle}>Playtime by Weekday</div>
                    <div className={styles.modalChartWrapper}>
                      <ResponsiveContainer width="100%" height="100%">
                        <BarChart data={gameDetail.weekday}>
                          <CartesianGrid strokeDasharray="3 3" vertical={false} stroke="#2c3442" />
                          <XAxis dataKey="label" tick={{ fontSize: 10, fill: '#9aa3b2' }} tickLine={false} axisLine={false} />
                          <YAxis tick={{ fontSize: 10, fill: '#9aa3b2' }} tickLine={false} axisLine={false} width={32} />
                          <Tooltip
                            formatter={(value: any) => `${value}h`}
                            cursor={{ fill: 'rgba(255,255,255,0.05)' }}
                            contentStyle={{ background: '#232b38', border: '1px solid #2c3442', borderRadius: 8 }}
                            itemStyle={{ color: '#eef1f6' }}
                            labelStyle={{ color: '#9aa3b2' }}
                          />
                          <Bar dataKey="hours" fill="#8b7cf0" radius={[3, 3, 0, 0]} />
                        </BarChart>
                      </ResponsiveContainer>
                    </div>
                  </div>
                )}

                {gameDetail.platforms.length > 0 && (
                  <BreakdownSection title="Platforms" items={gameDetail.platforms} total={gameDetail.totalMinutes} />
                )}
                {gameDetail.players.length > 0 && (
                  <BreakdownSection title="Played With" items={gameDetail.players} total={gameDetail.totalMinutes} />
                )}
                {gameDetail.modes.length > 0 && (
                  <BreakdownSection title="Game Mode" items={gameDetail.modes} total={gameDetail.totalMinutes} />
                )}
              </>
            )}

            {!metaLoading && gameMeta && (
              gameMeta.release_date || gameMeta.developers.length > 0 || gameMeta.publisher ||
              gameMeta.franchise || gameMeta.genres.length > 0 || gameMeta.themes.length > 0 ||
              gameMeta.metacritic_score != null
            ) && (
              <div className={styles.modalSection}>
                <div className={styles.modalSectionTitle}>About</div>
                <dl className={styles.metaDetails}>
                  {gameMeta.release_date && (
                    <>
                      <dt>Release Date</dt>
                      <dd>{new Date(gameMeta.release_date).toLocaleDateString()}</dd>
                    </>
                  )}
                  {gameMeta.developers.length > 0 && (
                    <>
                      <dt>Developer</dt>
                      <dd>{gameMeta.developers.join(', ')}</dd>
                    </>
                  )}
                  {gameMeta.publisher && (
                    <>
                      <dt>Publisher</dt>
                      <dd>{gameMeta.publisher}</dd>
                    </>
                  )}
                  {gameMeta.franchise && (
                    <>
                      <dt>Franchise</dt>
                      <dd>{gameMeta.franchise}</dd>
                    </>
                  )}
                  {gameMeta.genres.length > 0 && (
                    <>
                      <dt>Genres</dt>
                      <dd>{gameMeta.genres.join(', ')}</dd>
                    </>
                  )}
                  {gameMeta.themes.length > 0 && (
                    <>
                      <dt>Themes</dt>
                      <dd>{gameMeta.themes.join(', ')}</dd>
                    </>
                  )}
                  {gameMeta.metacritic_score != null && (
                    <>
                      <dt>Metacritic</dt>
                      <dd>{gameMeta.metacritic_score}</dd>
                    </>
                  )}
                </dl>
              </div>
            )}
          </div>
        </div>
      )}
    </div>
  )
}