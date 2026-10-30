import { useEffect, useState, useMemo, useRef, Fragment } from 'react'
import { supabase, FIXED_USER_ID } from '@/lib/supabase'
import {
  BarChart,
  Bar,
  LineChart,
  Line,
  PieChart,
  Pie,
  Cell,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  Legend,
  ResponsiveContainer,
} from 'recharts'
// import CalendarHeatmap from 'react-calendar-heatmap'
import "react-calendar-heatmap/dist/styles.css";
import styles from './Dashboard.module.css'

interface RawSession {
  session_id: number
  start_date: string
  start_time: string | null
  duration_minutes: number
  game_mode: string
  platform: string | null
  game: string | null
  cover_url: string | null
  players: string[]
  genres: string[]
  themes: string[]
  franchise: string | null
  publisher: string | null
  developers: string[]
  release_date: string | null
}

interface GameMeta {
  title: string
  cover: string | null
  genres: string[]
  themes: string[]
  franchise: string | null
  publisher: string | null
  developers: string[]
  release_date: string | null
}

interface DayGame { title: string; cover: string | null; minutes: number }
interface DayGames { minutes: number; games: DayGame[] }

function formatHours(minutes: number) {
  return (minutes / 60).toFixed(1)
}

const CustomTooltip = ({ active, payload, label }: any) => {
  if (active && payload && payload.length) {
    const minutes = payload[0].payload.minutes
    const h = Math.floor(minutes / 60)
    const m = minutes % 60
    const formatted = h > 0 ? `${h}h ${m}m` : `${m}m`
    return (
      <div className={styles.tooltip}>
        <div className={styles.tooltipLabel}>{label}</div>
        <div className={styles.tooltipValue}>{formatted}</div>
      </div>
    )
  }
  return null
}

const WEEKDAY_ORDER = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
const MONTH_ORDER = ['January', 'February', 'March', 'April', 'May', 'June',
  'July', 'August', 'September', 'October', 'November', 'December']
const COLORS = ['#6366f1', '#8b7cf0', '#ec4899', '#f2a541', '#10b981', '#06b6d4', '#3b82f6', '#ef4444']

// Same amber ramp used by the GitHub-style heatmap above, so the two calendar
// visualizations on this page read as one consistent "intensity" language.
// Index 0 = no playtime that day, 1-5 = increasing intensity.
const HEATMAP_COLORS = ['#232a36', '#3a2a14', '#5c4118', '#8a5f1d', '#c08526', '#f2a541']
const MONTH_ABBR = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
const WEEKDAY_LETTERS = ['M', 'T', 'W', 'T', 'F', 'S', 'S']

// Sums playtime per key (a session can contribute to several keys, e.g. a game
// with multiple genres counts fully toward each) and returns the top entries.
function topByMinutes(sessions: RawSession[], keysFor: (s: RawSession) => string[], limit = 10) {
  const map = new Map<string, number>()
  for (const s of sessions) {
    for (const key of keysFor(s)) {
      map.set(key, (map.get(key) ?? 0) + s.duration_minutes)
    }
  }
  return Array.from(map.entries())
    .sort((a, b) => b[1] - a[1])
    .slice(0, limit)
    .map(([name, minutes]) => ({ name, hours: parseFloat(formatHours(minutes)), minutes }))
}

type GroupKey = 'genre' | 'theme' | 'franchise' | 'developer' | 'publisher'

const GROUP_OPTIONS: {
  key: GroupKey
  label: string
  color: string
  note: string
  keysFor: (s: RawSession) => string[]
}[] = [
  { key: 'genre', label: 'Genre', color: '#10b981', note: 'games with several genres count toward each', keysFor: (s) => s.genres },
  { key: 'theme', label: 'Theme', color: '#3b82f6', note: 'games with several themes count toward each', keysFor: (s) => s.themes },
  { key: 'franchise', label: 'Franchise', color: '#ef4444', note: 'games with no franchise recorded are left out', keysFor: (s) => (s.franchise ? [s.franchise] : []) },
  { key: 'developer', label: 'Developer', color: '#ec4899', note: 'games with several developers count toward each', keysFor: (s) => s.developers },
  { key: 'publisher', label: 'Publisher', color: '#f2a541', note: 'games with no publisher recorded are left out', keysFor: (s) => (s.publisher ? [s.publisher] : []) },
]

const SESSION_LENGTH_BUCKETS = [
  { label: '< 30m', max: 30 },
  { label: '30m – 1h', max: 60 },
  { label: '1 – 2h', max: 120 },
  { label: '2 – 4h', max: 240 },
  { label: '4h+', max: Infinity },
]

function HorizontalBars({ data, color }: { data: { name: string; hours: number; minutes: number }[]; color: string }) {
  if (data.length === 0) return <div className={styles.timeNote}>No data for the current filters</div>
  return (
    <div style={{ height: Math.max(120, data.length * 32 + 16) }}>
      <ResponsiveContainer width="100%" height="100%">
        <BarChart layout="vertical" data={data} margin={{ top: 4, right: 16, left: 0, bottom: 4 }}>
          <CartesianGrid strokeDasharray="3 3" horizontal={false} stroke="#2c3442" />
          <XAxis type="number" tickFormatter={(v) => `${v}h`} tick={{ fontSize: 11, fill: '#9aa3b2' }} tickLine={false} axisLine={false} />
          <YAxis type="category" dataKey="name" width={130} interval={0} tick={{ fontSize: 11, fill: '#9aa3b2' }} tickLine={false} axisLine={false} />
          <Tooltip content={<CustomTooltip />} cursor={{ fill: 'rgba(255,255,255,0.05)' }} />
          <Bar dataKey="hours" fill={color} radius={[0, 3, 3, 0]} />
        </BarChart>
      </ResponsiveContainer>
    </div>
  )
}

const CountTooltip = ({ active, payload, label }: any) => {
  if (active && payload && payload.length) {
    const { sessions, minutes } = payload[0].payload
    return (
      <div className={styles.tooltip}>
        <div className={styles.tooltipLabel}>{label}</div>
        <div className={styles.tooltipValue}>{sessions} sessions · {formatHours(minutes)}h total</div>
      </div>
    )
  }
  return null
}

function intensityForMinutes(minutes: number) {
  const hours = minutes / 60
  if (hours <= 0) return 0
  if (hours < 1) return 1
  if (hours < 2) return 2
  if (hours < 3) return 3
  if (hours < 4) return 4
  return 5
}

function roundedRectPath(ctx: CanvasRenderingContext2D, x: number, y: number, w: number, h: number, r: number) {
  ctx.beginPath()
  ctx.moveTo(x + r, y)
  ctx.lineTo(x + w - r, y)
  ctx.arcTo(x + w, y, x + w, y + r, r)
  ctx.lineTo(x + w, y + h - r)
  ctx.arcTo(x + w, y + h, x + w - r, y + h, r)
  ctx.lineTo(x + r, y + h)
  ctx.arcTo(x, y + h, x, y + h - r, r)
  ctx.lineTo(x, y + r)
  ctx.arcTo(x, y, x + r, y, r)
  ctx.closePath()
}

interface CalendarCell { x: number; y: number; w: number; h: number; date: string; minutes: number }

/**
 * A literal year-at-a-glance calendar (12 real month grids, with weekday
 * columns and day numbers) drawn on a <canvas>, colored by daily playtime.
 * This is deliberately distinct from the GitHub-style contribution heatmap
 * above it: that one is an abstract week-column strip, this one looks like
 * an actual wall calendar.
 */
function PlaytimeCalendar({ year, dayMinutes }: { year: number; dayMinutes: Map<string, number> }) {
  const wrapperRef = useRef<HTMLDivElement>(null)
  const canvasRef = useRef<HTMLCanvasElement>(null)
  const cellsRef = useRef<CalendarCell[]>([])
  const [containerWidth, setContainerWidth] = useState(0)
  const [hover, setHover] = useState<{ x: number; y: number; label: string } | null>(null)

  // Track the wrapper's width so the grid can reflow into more/fewer columns
  useEffect(() => {
    const el = wrapperRef.current
    if (!el) return
    setContainerWidth(el.getBoundingClientRect().width)
    const ro = new ResizeObserver((entries) => {
      for (const entry of entries) setContainerWidth(entry.contentRect.width)
    })
    ro.observe(el)
    return () => ro.disconnect()
  }, [])

  // Draw (and redraw on resize / year change / data change)
  useEffect(() => {
    const canvas = canvasRef.current
    if (!canvas || containerWidth <= 0) return

    const columns = containerWidth >= 1100 ? 4 : containerWidth >= 820 ? 3 : 2
    const gapX = 28
    const gapY = 26
    const monthBlockWidth = Math.floor((containerWidth - gapX * (columns - 1)) / columns)
    const cellGap = 2
    const cell = Math.max(10, Math.min(20, Math.floor((monthBlockWidth - 6 * cellGap) / 7) - 2))
    const labelHeight = 18
    const headerHeight = 14
    const monthRows = 6 // always reserve 6 weeks so every month grid lines up
    const monthBlockHeight = labelHeight + headerHeight + monthRows * cell + (monthRows - 1) * cellGap

    const rowsCount = Math.ceil(12 / columns)
    const totalWidth = columns * monthBlockWidth + (columns - 1) * gapX
    const totalHeight = rowsCount * monthBlockHeight + (rowsCount - 1) * gapY

    const dpr = window.devicePixelRatio || 1
    canvas.width = Math.round(totalWidth * dpr)
    canvas.height = Math.round(totalHeight * dpr)
    canvas.style.width = `${totalWidth}px`
    canvas.style.height = `${totalHeight}px`

    const ctx = canvas.getContext('2d')
    if (!ctx) return
    ctx.setTransform(dpr, 0, 0, dpr, 0, 0)
    ctx.clearRect(0, 0, totalWidth, totalHeight)

    const today = new Date()
    const isCurrentYear = today.getFullYear() === year
    const cells: CalendarCell[] = []

    for (let m = 0; m < 12; m++) {
      const col = m % columns
      const row = Math.floor(m / columns)
      const gx = col * (monthBlockWidth + gapX)
      const gy = row * (monthBlockHeight + gapY)

      // Month label
      ctx.font = '600 11px system-ui, -apple-system, sans-serif'
      ctx.fillStyle = '#eef1f6' // --c-text
      ctx.textAlign = 'left'
      ctx.textBaseline = 'top'
      ctx.fillText(MONTH_ABBR[m], gx, gy)

      // Weekday header letters (Monday-first, matching the rest of the dashboard)
      ctx.font = '500 9px system-ui, -apple-system, sans-serif'
      ctx.fillStyle = '#5d6675' // --c-text-faint
      ctx.textAlign = 'center'
      for (let wd = 0; wd < 7; wd++) {
        const x = gx + wd * (cell + cellGap) + cell / 2
        ctx.fillText(WEEKDAY_LETTERS[wd], x, gy + labelHeight)
      }

      const daysInMonth = new Date(year, m + 1, 0).getDate()
      const startCol = (new Date(year, m, 1).getDay() + 6) % 7 // 0=Mon..6=Sun

      for (let day = 1; day <= daysInMonth; day++) {
        const idx = startCol + day - 1
        const dCol = idx % 7
        const dRow = Math.floor(idx / 7)
        const cx = gx + dCol * (cell + cellGap)
        const cy = gy + labelHeight + headerHeight + dRow * (cell + cellGap)

        const dateStr = `${year}-${String(m + 1).padStart(2, '0')}-${String(day).padStart(2, '0')}`
        const minutes = dayMinutes.get(dateStr) ?? 0
        const level = intensityForMinutes(minutes)

        ctx.fillStyle = HEATMAP_COLORS[level]
        roundedRectPath(ctx, cx, cy, cell, cell, 2)
        ctx.fill()

        if (isCurrentYear && m === today.getMonth() && day === today.getDate()) {
          ctx.strokeStyle = '#ffc46b' // --c-accent-strong
          ctx.lineWidth = 1.5
          roundedRectPath(ctx, cx + 0.75, cy + 0.75, cell - 1.5, cell - 1.5, 2)
          ctx.stroke()
        }

        ctx.font = `${Math.max(7, Math.floor(cell * 0.55))}px system-ui, -apple-system, sans-serif`
        ctx.fillStyle = level >= 4 ? '#1a1206' : '#7d8696' // dark text on bright cells, muted otherwise
        ctx.textAlign = 'center'
        ctx.textBaseline = 'middle'
        ctx.fillText(String(day), cx + cell / 2, cy + cell / 2 + 0.5)

        cells.push({ x: cx, y: cy, w: cell, h: cell, date: dateStr, minutes })
      }
    }

    cellsRef.current = cells
  }, [containerWidth, year, dayMinutes])

  function handleMouseMove(e: React.MouseEvent<HTMLCanvasElement>) {
    const canvas = canvasRef.current
    const wrapper = wrapperRef.current
    if (!canvas || !wrapper) return
    const rect = canvas.getBoundingClientRect()
    const x = e.clientX - rect.left
    const y = e.clientY - rect.top
    const hit = cellsRef.current.find((c) => x >= c.x && x <= c.x + c.w && y >= c.y && y <= c.y + c.h)
    if (!hit) { setHover(null); return }

    const wrapperRect = wrapper.getBoundingClientRect()
    const dateLabel = new Date(`${hit.date}T00:00:00`).toLocaleDateString('en-AU', {
      weekday: 'short', month: 'short', day: 'numeric',
    })
    const h = Math.floor(hit.minutes / 60)
    const m = hit.minutes % 60
    const durationLabel = hit.minutes > 0 ? (h > 0 ? `${h}h ${m}m` : `${m}m`) : 'No sessions'

    setHover({
      x: e.clientX - wrapperRect.left,
      y: e.clientY - wrapperRect.top,
      label: `${dateLabel} · ${durationLabel}`,
    })
  }

  return (
    <div className={styles.calendarWrapper} ref={wrapperRef}>
      <canvas
        ref={canvasRef}
        onMouseMove={handleMouseMove}
        onMouseLeave={() => setHover(null)}
      />
      {hover && (
        <div
          className={`${styles.tooltip} ${styles.canvasTooltip}`}
          style={{ left: hover.x, top: hover.y }}
        >
          {hover.label}
        </div>
      )}
    </div>
  )
}

/**
 * Weekday x hour-of-day heatmap of playtime. A session's minutes are spread across
 * the hours it spans (rolling into the next weekday past midnight). Sessions with
 * no recorded start time can't be placed and are excluded.
 */
function TimeOfDayHeatmap({ sessions }: { sessions: RawSession[] }) {
  const { grid, max, unplaced } = useMemo(() => {
    const grid = Array.from({ length: 7 }, () => new Array<number>(24).fill(0))
    let unplaced = 0
    for (const s of sessions) {
      const match = s.start_time ? /^(\d{1,2}):(\d{2})/.exec(s.start_time) : null
      if (!match || !s.start_date) { unplaced++; continue }
      let day = (new Date(`${s.start_date.split('T')[0]}T00:00:00`).getDay() + 6) % 7
      let cursor = Number(match[1]) * 60 + Number(match[2])
      let remaining = s.duration_minutes
      while (remaining > 0) {
        const hour = Math.floor(cursor / 60)
        const chunk = Math.min(remaining, (hour + 1) * 60 - cursor)
        grid[day][hour] += chunk
        remaining -= chunk
        cursor += chunk
        if (cursor >= 1440) { cursor = 0; day = (day + 1) % 7 }
      }
    }
    return { grid, max: Math.max(...grid.flat()), unplaced }
  }, [sessions])

  function formatDuration(minutes: number) {
    const h = Math.floor(minutes / 60)
    const m = Math.round(minutes % 60)
    return h > 0 ? `${h}h ${m}m` : `${m}m`
  }

  return (
    <div>
      <div className={styles.timeGrid}>
        <span />
        {Array.from({ length: 24 }, (_, h) => (
          <span key={h} className={styles.timeHourLabel}>{h % 3 === 0 ? h : ''}</span>
        ))}
        {WEEKDAY_ORDER.map((weekday, d) => (
          <Fragment key={weekday}>
            <span className={styles.timeDayLabel}>{weekday.slice(0, 3)}</span>
            {grid[d].map((minutes, h) => {
              const level = max > 0 && minutes > 0 ? Math.max(1, Math.ceil((minutes / max) * 5)) : 0
              return (
                <span
                  key={h}
                  className={styles.timeCell}
                  style={{ background: HEATMAP_COLORS[level] }}
                  title={`${weekday} ${String(h).padStart(2, '0')}:00 — ${minutes > 0 ? formatDuration(minutes) : 'no play'}`}
                />
              )
            })}
          </Fragment>
        ))}
      </div>
      <div className={styles.calendarLegend}>
        <span>Less</span>
        {HEATMAP_COLORS.map((c, i) => (
          <span key={i} className={styles.legendSwatch} style={{ background: c }} />
        ))}
        <span>More</span>
      </div>
      {unplaced > 0 && (
        <div className={styles.timeNote}>{unplaced} session{unplaced === 1 ? '' : 's'} without a start time not shown</div>
      )}
    </div>
  )
}

const MAX_SPLIT_COVERS = 4

/**
 * A wall-calendar year view where each played day shows the covers of the games
 * played that day (longest first), split across the cell for up to
 * MAX_SPLIT_COVERS games, with a +N badge for any beyond that.
 */
function CoverCalendar({ year, days }: { year: number; days: Map<string, DayGames> }) {
  const wrapperRef = useRef<HTMLDivElement>(null)
  const [hover, setHover] = useState<{ x: number; y: number; date: string; entry: DayGames | undefined } | null>(null)

  const today = new Date()
  const todayStr = `${today.getFullYear()}-${String(today.getMonth() + 1).padStart(2, '0')}-${String(today.getDate()).padStart(2, '0')}`

  function showHover(e: React.MouseEvent<HTMLDivElement>, date: string, entry: DayGames | undefined) {
    const wrapper = wrapperRef.current
    if (!wrapper) return
    const w = wrapper.getBoundingClientRect()
    const c = e.currentTarget.getBoundingClientRect()
    const x = Math.min(Math.max(c.left - w.left + c.width / 2, 100), w.width - 100)
    setHover({ x, y: c.top - w.top, date, entry })
  }

  function formatDuration(minutes: number) {
    const h = Math.floor(minutes / 60)
    const m = minutes % 60
    return h > 0 ? `${h}h ${m}m` : `${m}m`
  }

  return (
    <div className={styles.coverWrapper} ref={wrapperRef} onMouseLeave={() => setHover(null)}>
      <div className={styles.coverMonths}>
        {MONTH_ABBR.map((monthName, m) => {
          const daysInMonth = new Date(year, m + 1, 0).getDate()
          const startCol = (new Date(year, m, 1).getDay() + 6) % 7
          return (
            <div key={monthName}>
              <div className={styles.coverMonthTitle}>{monthName}</div>
              <div className={styles.coverWeekdays}>
                {WEEKDAY_LETTERS.map((l, i) => <span key={i}>{l}</span>)}
              </div>
              <div className={styles.coverDays}>
                {Array.from({ length: startCol }, (_, i) => <div key={`b${i}`} />)}
                {Array.from({ length: daysInMonth }, (_, i) => {
                  const day = i + 1
                  const date = `${year}-${String(m + 1).padStart(2, '0')}-${String(day).padStart(2, '0')}`
                  const entry = days.get(date)
                  const shown = entry?.games.slice(0, MAX_SPLIT_COVERS) ?? []
                  const split = shown.length > 1
                  const classes = [
                    styles.coverCell,
                    entry ? styles.coverCellPlayed : '',
                    date === todayStr ? styles.coverCellToday : '',
                  ].join(' ')
                  return (
                    <div
                      key={date}
                      className={classes}
                      onMouseEnter={(e) => showHover(e, date, entry)}
                    >
                      {shown.length > 0 && (
                        <div className={`${styles.coverSplit} ${styles[`coverSplit${shown.length}`]}`}>
                          {shown.map((g) => (
                            <div key={g.title} className={styles.coverPiece}>
                              {g.cover ? (
                                <img src={g.cover.replace(/^\/\//, 'https://')} alt={g.title} loading="lazy" draggable={false} />
                              ) : (
                                <span className={styles.coverFallback}>{split ? '' : g.title}</span>
                              )}
                            </div>
                          ))}
                        </div>
                      )}
                      <span className={styles.coverDayNum}>{day}</span>
                      {entry && entry.games.length > MAX_SPLIT_COVERS && (
                        <span className={styles.coverBadge}>+{entry.games.length - MAX_SPLIT_COVERS}</span>
                      )}
                    </div>
                  )
                })}
              </div>
            </div>
          )
        })}
      </div>
      {hover && (
        <div className={`${styles.tooltip} ${styles.canvasTooltip}`} style={{ left: hover.x, top: hover.y }}>
          <div className={styles.tooltipLabel}>
            {new Date(`${hover.date}T00:00:00`).toLocaleDateString('en-AU', { weekday: 'short', month: 'short', day: 'numeric' })}
          </div>
          {hover.entry ? (
            hover.entry.games.map((g) => (
              <div key={g.title} className={styles.tooltipValue}>{g.title} · {formatDuration(g.minutes)}</div>
            ))
          ) : (
            <div className={styles.tooltipValue}>No sessions</div>
          )}
        </div>
      )}
    </div>
  )
}

export default function Dashboard() {
  const [rawSessions, setRawSessions] = useState<RawSession[]>([])
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)

  const [filterYear, setFilterYear] = useState<number | 'all'>(new Date().getFullYear())
  const [filterMonth, setFilterMonth] = useState('all')
  const [filterWeekday, setFilterWeekday] = useState('all')
  const [filterPlatform, setFilterPlatform] = useState('all')
  const [filterPlayedWith, setFilterPlayedWith] = useState('all')

  // Which year's line is highlighted (dimming the rest) in the cumulative playtime chart.
  const [highlightedYear, setHighlightedYear] = useState<number | null>(null)

  const [groupBy, setGroupBy] = useState<GroupKey>('genre')

  // The calendar always needs a concrete year to render, even though the page filter
  // can be "All". Deriving it (rather than holding separate state) is what keeps the
  // calendar's year control and the Year filter dropdown perfectly in sync both ways:
  // moving the calendar calls setFilterYear directly, and picking a year in the filter
  // flows straight through here.
  const calendarYear = filterYear !== 'all' ? filterYear : new Date().getFullYear()

  // The app nav is sticky, so the sticky filter bar has to sit just below it.
  const containerRef = useRef<HTMLDivElement>(null)
  useEffect(() => {
    const nav = document.querySelector('nav')
    const container = containerRef.current
    if (!nav || !container) return
    const update = () => container.style.setProperty('--app-nav-height', `${nav.getBoundingClientRect().height}px`)
    update()
    const observer = new ResizeObserver(update)
    observer.observe(nav)
    return () => observer.disconnect()
  }, [])

  useEffect(() => {
    let mounted = true
    ;(async () => {
      setLoading(true)
      setError(null)

      const [sessionsResult, playersResult, sessionPlayersResult, gamesResult] = await Promise.all([
        supabase
          .from('sessions')
          .select('session_id, start_date, start_time, duration_minutes, game_mode, game_id, platforms ( name )')
          .eq('user_id', FIXED_USER_ID)
          .order('start_date', { ascending: true }),
        supabase.from('players').select('player_id, name'),
        supabase.from('session_player').select('*'),
        supabase.from('games').select(`
          game_id, title, cover_url, release_date,
          franchises ( name ),
          publishers ( name ),
          game_genre ( genres ( name ) ),
          game_theme ( themes ( name ) ),
          game_developer ( developers ( name ) )
        `),
      ])

      if (!mounted) return

      if (sessionsResult.error) { setError(sessionsResult.error.message); setLoading(false); return }
      if (playersResult.error) { setError(playersResult.error.message); setLoading(false); return }
      if (sessionPlayersResult.error) { setError(sessionPlayersResult.error.message); setLoading(false); return }
      if (gamesResult.error) { setError(gamesResult.error.message); setLoading(false); return }

      const playerMap = new Map<number, string>()
      for (const p of playersResult.data as any[]) {
        playerMap.set(p.player_id, p.name)
      }

      const gameMap = new Map<number, GameMeta>()
      for (const g of gamesResult.data as any[]) {
        gameMap.set(g.game_id, {
          title: g.title,
          cover: g.cover_url ?? null,
          genres: (g.game_genre ?? []).map((x: any) => x.genres?.name).filter(Boolean),
          themes: (g.game_theme ?? []).map((x: any) => x.themes?.name).filter(Boolean),
          franchise: g.franchises?.name ?? null,
          publisher: g.publishers?.name ?? null,
          developers: (g.game_developer ?? []).map((x: any) => x.developers?.name).filter(Boolean),
          release_date: g.release_date ?? null,
        })
      }

      const sessionPlayersMap = new Map<number, string[]>()
      for (const sp of sessionPlayersResult.data as any[]) {
        if (!sessionPlayersMap.has(sp.session_id)) sessionPlayersMap.set(sp.session_id, [])
        const name = playerMap.get(sp.player_id)
        if (name) sessionPlayersMap.get(sp.session_id)!.push(name)
      }

      const sessions: RawSession[] = (sessionsResult.data as any[]).map((s) => {
        const meta = s.game_id ? gameMap.get(s.game_id) : undefined
        return {
          session_id: s.session_id,
          start_date: s.start_date,
          start_time: s.start_time ?? null,
          duration_minutes: Number(s.duration_minutes) || 0,
          game_mode: s.game_mode ?? 'Unknown',
          platform: s.platforms?.name ?? null,
          game: meta?.title ?? null,
          cover_url: meta?.cover ?? null,
          players: sessionPlayersMap.get(s.session_id) ?? [],
          genres: meta?.genres ?? [],
          themes: meta?.themes ?? [],
          franchise: meta?.franchise ?? null,
          publisher: meta?.publisher ?? null,
          developers: meta?.developers ?? [],
          release_date: meta?.release_date ?? null,
        }
      })

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

  // Derive chart data from filtered sessions
  const monthlyData = useMemo(() => {
    const map = new Map<string, number>()
    for (const s of filteredSessions) {
      const key = new Date(s.start_date).toLocaleString('default', { year: 'numeric', month: 'short' })
      map.set(key, (map.get(key) ?? 0) + s.duration_minutes)
    }
    return Array.from(map.entries())
      .sort((a, b) => {
        const parse = (k: string) => { const [mon, yr] = k.split(' '); return new Date(`${mon} 1, ${yr}`).getTime() }
        return parse(a[0]) - parse(b[0])
      })
      .map(([month, minutes]) => ({ month, hours: parseFloat(formatHours(minutes)), minutes }))
  }, [filteredSessions])

  const weekdayData = useMemo(() => {
    const map = new Map<string, number>()
    for (const s of filteredSessions) {
      const day = new Date(s.start_date).toLocaleString('default', { weekday: 'long' })
      map.set(day, (map.get(day) ?? 0) + s.duration_minutes)
    }
    return WEEKDAY_ORDER.filter((d) => map.has(d)).map((day) => {
      const minutes = map.get(day) ?? 0
      return { day, hours: parseFloat(formatHours(minutes)), minutes }
    })
  }, [filteredSessions])

  const gameModeData = useMemo(() => {
    const map = new Map<string, number>()
    for (const s of filteredSessions) {
      map.set(s.game_mode, (map.get(s.game_mode) ?? 0) + s.duration_minutes)
    }
    return Array.from(map.entries())
      .sort((a, b) => b[1] - a[1])
      .map(([name, minutes]) => ({ name, hours: parseFloat(formatHours(minutes)), minutes }))
  }, [filteredSessions])

  const platformData = useMemo(() => {
    const map = new Map<string, number>()
    for (const s of filteredSessions) {
      if (s.platform) map.set(s.platform, (map.get(s.platform) ?? 0) + s.duration_minutes)
    }
    return Array.from(map.entries())
      .sort((a, b) => b[1] - a[1])
      .map(([name, minutes], index) => ({
        name, value: parseFloat(formatHours(minutes)), minutes, fill: COLORS[index % COLORS.length],
      }))
  }, [filteredSessions])

  const gameData = useMemo(() => {
    const map = new Map<string, number>()
    for (const s of filteredSessions) {
      if (s.game) {
        map.set(s.game, (map.get(s.game) ?? 0) + s.duration_minutes)
      }
    }
    return Array.from(map.entries())
      .sort((a, b) => b[1] - a[1])
      .slice(0, 10)
      .map(([name, minutes]) => ({ name, hours: parseFloat(formatHours(minutes)), minutes }))
  }, [filteredSessions])

  const playedWithData = useMemo(() => {
    const map = new Map<string, number>()
    for (const s of filteredSessions) {
      for (const player of s.players) {
        map.set(player, (map.get(player) ?? 0) + s.duration_minutes)
      }
    }
    return Array.from(map.entries())
      .sort((a, b) => b[1] - a[1])
      .map(([name, minutes]) => ({ name, hours: parseFloat(formatHours(minutes)), minutes }))
  }, [filteredSessions])

  const activeGroup = GROUP_OPTIONS.find((g) => g.key === groupBy)!
  const groupData = useMemo(
    () => topByMinutes(filteredSessions, GROUP_OPTIONS.find((g) => g.key === groupBy)!.keysFor),
    [filteredSessions, groupBy],
  )

  // Hours by the release year of the game played, plus how much of the playtime
  // went to games released within a year of the session ("new releases").
  const releaseYearData = useMemo(() => {
    const map = new Map<number, number>()
    let newMinutes = 0
    let datedMinutes = 0
    for (const s of filteredSessions) {
      if (!s.release_date || !s.start_date) continue
      const released = new Date(`${s.release_date.split('T')[0]}T00:00:00`)
      const played = new Date(`${s.start_date.split('T')[0]}T00:00:00`)
      const year = released.getFullYear()
      map.set(year, (map.get(year) ?? 0) + s.duration_minutes)
      datedMinutes += s.duration_minutes
      if (played.getTime() - released.getTime() <= 365 * 86400000) newMinutes += s.duration_minutes
    }
    const years = Array.from(map.keys())
    const data: { year: string; hours: number; minutes: number }[] = []
    if (years.length > 0) {
      for (let y = Math.min(...years); y <= Math.max(...years); y++) {
        const minutes = map.get(y) ?? 0
        data.push({ year: String(y), hours: parseFloat(formatHours(minutes)), minutes })
      }
    }
    return { data, newPercent: datedMinutes > 0 ? Math.round((newMinutes / datedMinutes) * 100) : 0 }
  }, [filteredSessions])

  const sessionLengthData = useMemo(() => {
    const buckets = SESSION_LENGTH_BUCKETS.map((b) => ({ bucket: b.label, sessions: 0, minutes: 0 }))
    for (const s of filteredSessions) {
      const i = SESSION_LENGTH_BUCKETS.findIndex((b) => s.duration_minutes < b.max)
      buckets[i].sessions += 1
      buckets[i].minutes += s.duration_minutes
    }
    return buckets
  }, [filteredSessions])

  // const heatmapData = useMemo(() => {
  //   const map = new Map<string, number>()
  //   for (const s of filteredSessions) {
  //     if (!s.start_date) continue
  //     const dateStr = s.start_date.split('T')[0] // Format as YYYY-MM-DD
  //     map.set(dateStr, (map.get(dateStr) ?? 0) + s.duration_minutes)
  //   }
  //   return Array.from(map.entries()).map(([date, minutes]) => ({
  //     date,
  //     count: Math.round(parseFloat(formatHours(minutes)) * 10) // Scale up for heatmap intensity
  //   }))
  // }, [filteredSessions])

  // Plain date -> minutes lookup for the canvas year-calendar below (same
  // filtered sessions as the heatmap above, just without the 10x scaling
  // that react-calendar-heatmap's bucketing wanted).
  const dayMinutesMap = useMemo(() => {
    const map = new Map<string, number>()
    for (const s of filteredSessions) {
      if (!s.start_date) continue
      const dateStr = s.start_date.split('T')[0]
      map.set(dateStr, (map.get(dateStr) ?? 0) + s.duration_minutes)
    }
    return map
  }, [filteredSessions])

  // Per-day games (longest-played first) for the cover-art calendar.
  const dayGamesMap = useMemo(() => {
    const perDay = new Map<string, Map<string, DayGame>>()
    for (const s of filteredSessions) {
      if (!s.start_date || !s.game) continue
      const dateStr = s.start_date.split('T')[0]
      if (!perDay.has(dateStr)) perDay.set(dateStr, new Map())
      const games = perDay.get(dateStr)!
      const g = games.get(s.game) ?? { title: s.game, cover: s.cover_url, minutes: 0 }
      g.minutes += s.duration_minutes
      games.set(s.game, g)
    }
    const result = new Map<string, DayGames>()
    for (const [date, games] of perDay) {
      const list = Array.from(games.values()).sort((a, b) => b.minutes - a.minutes)
      result.set(date, { minutes: list.reduce((sum, g) => sum + g.minutes, 0), games: list })
    }
    return result
  }, [filteredSessions])

  // Cumulative playtime per year, keyed by day-of-year, so each year renders as its
  // own line and years can be visually compared regardless of the active Year filter.
  const cumulativeYearlyData = useMemo(() => {
    const yearDayMinutes = new Map<number, Map<number, number>>()
    for (const s of rawSessions) {
      if (!s.start_date) continue
      const d = new Date(s.start_date)
      const year = d.getFullYear()
      const dayOfYear = Math.floor((Date.UTC(year, d.getMonth(), d.getDate()) - Date.UTC(year, 0, 1)) / 86400000) + 1
      if (!yearDayMinutes.has(year)) yearDayMinutes.set(year, new Map())
      const dm = yearDayMinutes.get(year)!
      dm.set(dayOfYear, (dm.get(dayOfYear) ?? 0) + s.duration_minutes)
    }

    // 2018 data is unreliable (pre-dates consistent tracking), so it's always excluded here.
    const years = Array.from(yearDayMinutes.keys()).filter((y) => y !== 2018).sort((a, b) => a - b)
    const isLeapYear = (y: number) => (y % 4 === 0 && y % 100 !== 0) || (y % 400 === 0)
    const today = new Date()
    const currentYear = today.getFullYear()
    const todayDayOfYear = Math.floor((Date.UTC(currentYear, today.getMonth(), today.getDate()) - Date.UTC(currentYear, 0, 1)) / 86400000) + 1
    const maxDayOverall = years.length > 0 ? Math.max(...years.map((y) => (isLeapYear(y) ? 366 : 365))) : 365

    const cumulative = new Map<number, number>(years.map((y) => [y, 0]))
    const data: Array<Record<string, number>> = []

    for (let day = 1; day <= maxDayOverall; day++) {
      const row: Record<string, number> = { dayOfYear: day }
      for (const y of years) {
        const daysInYear = isLeapYear(y) ? 366 : 365
        if (day > daysInYear) continue
        if (y === currentYear && day > todayDayOfYear) continue
        const minutesToday = yearDayMinutes.get(y)!.get(day) ?? 0
        const newCum = (cumulative.get(y) ?? 0) + minutesToday
        cumulative.set(y, newCum)
        row[String(y)] = parseFloat((newCum / 60).toFixed(1))
      }
      data.push(row)
    }

    return { data, years }
  }, [rawSessions])

  // const heatmapStartDate = useMemo(() => {
  //   if (filterYear === 'all') {
  //     // Find earliest year in data
  //     let minYear = new Date().getFullYear()
  //     for (const s of rawSessions) {
  //       if (s.start_date) {
  //         const year = new Date(s.start_date).getFullYear()
  //         if (year < minYear) minYear = year
  //       }
  //     }
  //     return new Date(minYear, 0, 1)
  //   }
  //   return new Date(filterYear as number, 0, 1)
  // }, [filterYear, rawSessions])

  // const heatmapEndDate = useMemo(() => {
  //   if (filterYear === 'all') {
  //     return new Date()
  //   }
  //   const year = filterYear as number
  //   const currentYear = new Date().getFullYear()
  //   if (year === currentYear) {
  //     return new Date()
  //   }
  //   return new Date(year, 11, 31)
  // }, [filterYear])

  const kpis = useMemo(() => {
    const totalMinutes = filteredSessions.reduce((sum, s) => sum + s.duration_minutes, 0)
    const numSessions = filteredSessions.length
    const uniqueGames = new Set(filteredSessions.filter(s => s.game).map(s => s.game)).size
    const avgSessionLength = numSessions > 0 ? totalMinutes / numSessions : 0
    const uniqueDays = new Set(filteredSessions.map(s => new Date(s.start_date).toDateString())).size

    // Calculate total days in the year (or up to today if current year)
    let totalDaysInPeriod = 365
    const currentYear = new Date().getFullYear()
    
    if (filterYear !== 'all') {
      const year = filterYear as number
      const isLeapYear = (year % 4 === 0 && year % 100 !== 0) || (year % 400 === 0)
      totalDaysInPeriod = isLeapYear ? 366 : 365

      // If it's the current year, use days up to today
      if (year === currentYear) {
        const today = new Date()
        const startOfYear = new Date(year, 0, 1)
        totalDaysInPeriod = Math.floor((today.getTime() - startOfYear.getTime()) / (1000 * 60 * 60 * 24)) + 1
      }
    } else {
      // If 'all' years, sum days for each year in the data
      totalDaysInPeriod = 0
      const yearsInData = new Set<number>()
      for (const s of rawSessions) {
        if (s.start_date) {
          yearsInData.add(new Date(s.start_date).getFullYear())
        }
      }

      for (const year of yearsInData) {
        if (year === currentYear) {
          // For current year, count days up to today
          const today = new Date()
          const startOfYear = new Date(year, 0, 1)
          totalDaysInPeriod += Math.floor((today.getTime() - startOfYear.getTime()) / (1000 * 60 * 60 * 24)) + 1
        } else {
          // For other years, count all 365/366 days
          const isLeapYear = (year % 4 === 0 && year % 100 !== 0) || (year % 400 === 0)
          totalDaysInPeriod += isLeapYear ? 366 : 365
        }
      }
    }

    const daysPercentage = totalDaysInPeriod > 0 ? Math.round((uniqueDays / totalDaysInPeriod) * 100) : 0

    return {
      totalMinutes,
      totalHours: formatHours(totalMinutes),
      numSessions,
      uniqueGames,
      avgSessionMinutes: Math.round(avgSessionLength),
      uniqueDays,
      totalDaysInPeriod,
      daysPercentage,
    }
  }, [filteredSessions, filterYear, rawSessions])

  // Per-year averages across the whole dataset (2018 excluded as unreliable), shown
  // alongside each KPI so the selected year's numbers have a baseline to compare against.
  const datasetAverages = useMemo(() => {
    const yearMap = new Map<number, { totalMinutes: number; numSessions: number; games: Set<string>; uniqueDays: Set<string> }>()
    for (const s of rawSessions) {
      if (!s.start_date) continue
      const year = new Date(s.start_date).getFullYear()
      if (year === 2018) continue
      if (!yearMap.has(year)) yearMap.set(year, { totalMinutes: 0, numSessions: 0, games: new Set(), uniqueDays: new Set() })
      const y = yearMap.get(year)!
      y.totalMinutes += s.duration_minutes
      y.numSessions += 1
      if (s.game) y.games.add(s.game)
      y.uniqueDays.add(new Date(s.start_date).toDateString())
    }

    const years = Array.from(yearMap.values())
    const numYears = years.length
    const nonExcludedSessions = rawSessions.filter((s) => s.start_date && new Date(s.start_date).getFullYear() !== 2018)
    const totalMinutesAll = nonExcludedSessions.reduce((sum, s) => sum + s.duration_minutes, 0)

    return {
      avgTotalMinutesPerYear: numYears > 0 ? years.reduce((sum, y) => sum + y.totalMinutes, 0) / numYears : 0,
      avgSessionsPerYear: numYears > 0 ? years.reduce((sum, y) => sum + y.numSessions, 0) / numYears : 0,
      avgUniqueGamesPerYear: numYears > 0 ? years.reduce((sum, y) => sum + y.games.size, 0) / numYears : 0,
      avgSessionMinutes: nonExcludedSessions.length > 0 ? totalMinutesAll / nonExcludedSessions.length : 0,
      avgUniqueDaysPerYear: numYears > 0 ? years.reduce((sum, y) => sum + y.uniqueDays.size, 0) / numYears : 0,
    }
  }, [rawSessions])

  const activeFilterCount = [
    filterYear !== 'all', filterMonth !== 'all', filterWeekday !== 'all',
    filterPlatform !== 'all', filterPlayedWith !== 'all',
  ].filter(Boolean).length

  function resetFilters() {
    setFilterYear(new Date().getFullYear())
    setFilterMonth('all')
    setFilterWeekday('all')
    setFilterPlatform('all')
    setFilterPlayedWith('all')
  }

  return (
    <div className={styles.container} ref={containerRef}>
      <h1 className={styles.heading} style={{ marginBottom: 16 }}>Dashboard</h1>

      {/* Filter bar */}
      <div className={styles.filterBar}>
        <div className={styles.filterBarHeader}>
          <span className={styles.filterBarTitle}>Filters</span>
          {activeFilterCount > 0 && (
            <button
              onClick={resetFilters}
              className={styles.clearFiltersBtn}
            >
              Clear all ({activeFilterCount})
            </button>
          )}
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

      {/* KPI Cards */}
      {!loading && !error && (
        <div className={styles.kpiGrid}>
          <div className={`${styles.kpiCard} ${styles.kpiIndigo}`}>
            <div className={styles.kpiLabel}>
              Total Playtime
            </div>
            <div className={styles.kpiValue}>
              {Math.round(kpis.totalMinutes / 60)}h
            </div>
            {filterYear !== 'all' && (
              <div className={styles.kpiSubValue}>
                (avg {Math.round(datasetAverages.avgTotalMinutesPerYear / 60)}h/yr)
              </div>
            )}
          </div>

          <div className={`${styles.kpiCard} ${styles.kpiViolet}`}>
            <div className={styles.kpiLabel}>
              Number of Sessions
            </div>
            <div className={styles.kpiValue}>
              {kpis.numSessions}
            </div>
            {filterYear !== 'all' && (
              <div className={styles.kpiSubValue}>
                (avg {Math.round(datasetAverages.avgSessionsPerYear)}/yr)
              </div>
            )}
          </div>

          <div className={`${styles.kpiCard} ${styles.kpiPink}`}>
            <div className={styles.kpiLabel}>
              Unique Games Played
            </div>
            <div className={styles.kpiValue}>
              {kpis.uniqueGames}
            </div>
            {filterYear !== 'all' && (
              <div className={styles.kpiSubValue}>
                (avg {Math.round(datasetAverages.avgUniqueGamesPerYear)}/yr)
              </div>
            )}
          </div>

          <div className={`${styles.kpiCard} ${styles.kpiAmber}`}>
            <div className={styles.kpiLabel}>
              Avg Session Length
            </div>
            <div className={styles.kpiValue}>
              {Math.floor(kpis.avgSessionMinutes / 60)}h {kpis.avgSessionMinutes % 60}m
            </div>
            {filterYear !== 'all' && (
              <div className={styles.kpiSubValue}>
                (avg {Math.floor(datasetAverages.avgSessionMinutes / 60)}h {Math.round(datasetAverages.avgSessionMinutes % 60)}m overall)
              </div>
            )}
          </div>

          <div className={`${styles.kpiCard} ${styles.kpiGreen}`}>
            <div className={styles.kpiLabel}>
              Days Played
            </div>
            <div className={styles.kpiValue}>
              {kpis.uniqueDays}/{kpis.totalDaysInPeriod} ({kpis.daysPercentage}%)
            </div>
            {filterYear !== 'all' && (
              <div className={styles.kpiSubValue}>
                (avg {Math.round(datasetAverages.avgUniqueDaysPerYear)} days/yr)
              </div>
            )}
          </div>
        </div>
      )}

      {loading && <div className={styles.loadingMessage}>Loading…</div>}
      {error && <div className={styles.errorMessage}>{error}</div>}

      {!loading && !error && (
        <>
          <section className={styles.section}>
            <h2 className={styles.sectionTitle}>Monthly Playtime</h2>
            <div className={styles.sectionSubtitle}>Hours played per month</div>
            <div className={styles.largeChartWrapper}>
              <ResponsiveContainer width="100%" height="100%">
                <BarChart data={monthlyData} margin={{ top: 8, right: 16, left: 0, bottom: 60 }}>
                  <CartesianGrid strokeDasharray="3 3" vertical={false} stroke="#2c3442" />
                  <XAxis dataKey="month" tick={{ fontSize: 11, fill: '#9aa3b2' }} angle={-45} textAnchor="end" interval={0} tickLine={false} axisLine={false} />
                  <YAxis tickFormatter={(v) => `${v}h`} tick={{ fontSize: 11, fill: '#9aa3b2' }} tickLine={false} axisLine={false} width={36} />
                  <Tooltip content={<CustomTooltip />} cursor={{ fill: 'rgba(255,255,255,0.05)' }} />
                  <Bar dataKey="hours" fill="#6366f1" radius={[3, 3, 0, 0]} maxBarSize={filterYear === 'all' ? 40 : 80} />
                </BarChart>
              </ResponsiveContainer>
            </div>
          </section>

          {/* <section className={styles.section}>
            <h2 className={styles.sectionTitle}>Hours Played per Game (Top 20)</h2>
            <div className={styles.sectionSubtitle}>Hours played for each game</div>
            <div className={styles.largeChartWrapper}>
              <ResponsiveContainer width="100%" height="100%">
                <BarChart data={gameData} margin={{ top: 8, right: 16, left: 0, bottom: 60 }}>
                  <CartesianGrid strokeDasharray="3 3" vertical={false} stroke="#2c3442" />
                  <XAxis dataKey="name" tick={{ fontSize: 11, fill: '#9aa3b2' }} angle={-45} textAnchor="end" interval={0} tickLine={false} axisLine={false} />
                  <YAxis tickFormatter={(v) => `${v}h`} tick={{ fontSize: 11, fill: '#9aa3b2' }} tickLine={false} axisLine={false} width={36} />
                  <Tooltip content={<CustomTooltip />} cursor={{ fill: 'rgba(255,255,255,0.05)' }} />
                  <Bar dataKey="hours" fill="#06b6d4" radius={[3, 3, 0, 0]} />
                </BarChart>
              </ResponsiveContainer>
            </div>
          </section> */}

          <section className={styles.section}>
            <h2 className={styles.sectionTitle}>Hours Played per Game (Top 10)</h2>
            <div className={styles.sectionSubtitle}>Hours played for each game</div>
            <div className={styles.gameChartWrapper}>
              <ResponsiveContainer width="100%" height="100%">
                <BarChart
                  layout="vertical"
                  data={gameData}
                  margin={{ top: 8, right: 16, left: 40, bottom: 8 }}
                >
                  <CartesianGrid strokeDasharray="3 3" horizontal={false} stroke="#2c3442" />
                  <XAxis type="number" tick={{ fontSize: 11, fill: '#9aa3b2' }} tickLine={false} axisLine={false} />
                  <YAxis
                    type="category"
                    dataKey="name"
                    width={60}
                    tick={{ fontSize: 11, fill: '#9aa3b2' }}
                    tickLine={false}
                    axisLine={false}
                  />
                  <Tooltip content={<CustomTooltip />} cursor={{ fill: 'rgba(255,255,255,0.05)' }} />
                  <Bar dataKey="hours" fill="#06b6d4" />
                </BarChart>
              </ResponsiveContainer>
            </div>
          </section>

          <div className={styles.chartsGrid}>
            <section className={styles.section}>
              <h2 className={styles.sectionTitle}>Playtime by Weekday</h2>
              <div className={styles.sectionSubtitle}>Hours played per day of week</div>
              <div className={styles.chartWrapper}>
                <ResponsiveContainer width="100%" height="100%">
                  <BarChart data={weekdayData} margin={{ top: 8, right: 16, left: 0, bottom: 40 }}>
                    <CartesianGrid strokeDasharray="3 3" vertical={false} stroke="#2c3442" />
                    <XAxis dataKey="day" tick={{ fontSize: 11, fill: '#9aa3b2' }} angle={-45} textAnchor="end" tickLine={false} axisLine={false} />
                    <YAxis tickFormatter={(v) => `${v}h`} tick={{ fontSize: 11, fill: '#9aa3b2' }} tickLine={false} axisLine={false} width={36} />
                    <Tooltip content={<CustomTooltip />} cursor={{ fill: 'rgba(255,255,255,0.05)' }} />
                    <Bar dataKey="hours" fill="#8b7cf0" radius={[3, 3, 0, 0]} />
                  </BarChart>
                </ResponsiveContainer>
              </div>
            </section>

            <section className={styles.section}>
              <h2 className={styles.sectionTitle}>Playtime by Game Mode</h2>
              <div className={styles.sectionSubtitle}>Hours played per game mode</div>
              <div className={styles.chartWrapper}>
                <ResponsiveContainer width="100%" height="100%">
                  <BarChart data={gameModeData} margin={{ top: 8, right: 16, left: 0, bottom: 40 }}>
                    <CartesianGrid strokeDasharray="3 3" vertical={false} stroke="#2c3442" />
                    <XAxis dataKey="name" tick={{ fontSize: 11, fill: '#9aa3b2' }} angle={-45} textAnchor="end" tickLine={false} axisLine={false} />
                    <YAxis tickFormatter={(v) => `${v}h`} tick={{ fontSize: 11, fill: '#9aa3b2' }} tickLine={false} axisLine={false} width={36} />
                    <Tooltip content={<CustomTooltip />} cursor={{ fill: 'rgba(255,255,255,0.05)' }} />
                    <Bar dataKey="hours" fill="#ec4899" radius={[3, 3, 0, 0]} />
                  </BarChart>
                </ResponsiveContainer>
              </div>
            </section>
          </div>

          <div className={styles.chartsGrid}>
            <section className={styles.section}>
              <h2 className={styles.sectionTitle}>Playtime by Platform</h2>
              <div className={styles.sectionSubtitle}>Hours played per platform</div>
              <div className={styles.chartWrapper}>
                <ResponsiveContainer width="100%" height="100%">
                  <PieChart margin={{ top: 8, right: 8, left: 8, bottom: 8 }}>
                    <Pie
                      data={platformData}
                      cx="50%"
                      cy="50%"
                      labelLine={false}
                      label={(entry: any) => entry.name}
                      outerRadius={80}
                      fill="#8884d8"
                      dataKey="value"
                    >
                      {platformData.map((entry, index) => (
                        <Cell key={`cell-${index}`} fill={entry.fill} />
                      ))}
                    </Pie>
                    <Tooltip
                      formatter={(value: any) => `${value}h`}
                      contentStyle={{ background: '#232b38', border: '1px solid #2c3442', borderRadius: 8, color: '#eef1f6' }}
                      itemStyle={{ color: '#eef1f6' }}
                      labelStyle={{ color: '#eef1f6' }}
                    />
                  </PieChart>
                </ResponsiveContainer>
              </div>
            </section>

            <section className={styles.section}>
              <h2 className={styles.sectionTitle}>Playtime by Played With</h2>
              <div className={styles.sectionSubtitle}>Hours played with each person</div>
              <div className={styles.chartWrapper}>
                <ResponsiveContainer width="100%" height="100%">
                  <BarChart data={playedWithData} margin={{ top: 8, right: 16, left: 0, bottom: 40 }}>
                    <CartesianGrid strokeDasharray="3 3" vertical={false} stroke="#2c3442" />
                    <XAxis dataKey="name" tick={{ fontSize: 11, fill: '#9aa3b2' }} angle={-45} textAnchor="end" tickLine={false} axisLine={false} />
                    <YAxis tickFormatter={(v) => `${v}h`} tick={{ fontSize: 11, fill: '#9aa3b2' }} tickLine={false} axisLine={false} width={36} />
                    <Tooltip content={<CustomTooltip />} cursor={{ fill: 'rgba(255,255,255,0.05)' }} />
                    <Bar dataKey="hours" fill="#f2a541" radius={[3, 3, 0, 0]} />
                  </BarChart>
                </ResponsiveContainer>
              </div>
            </section>
          </div>

          <section className={styles.section}>
            <h2 className={styles.sectionTitle}>Playtime by {activeGroup.label}</h2>
            <div className={styles.sectionSubtitle}>Top 10 — {activeGroup.note}</div>
            <div className={styles.tabRow} role="tablist">
              {GROUP_OPTIONS.map((g) => (
                <button
                  key={g.key}
                  role="tab"
                  aria-selected={groupBy === g.key}
                  className={`${styles.tabBtn} ${groupBy === g.key ? styles.tabBtnActive : ''}`}
                  onClick={() => setGroupBy(g.key)}
                >
                  {g.label}
                </button>
              ))}
            </div>
            <HorizontalBars data={groupData} color={activeGroup.color} />
          </section>

          <div className={styles.chartsGrid}>
            <section className={styles.section}>
              <h2 className={styles.sectionTitle}>Playtime by Release Year</h2>
              <div className={styles.sectionSubtitle}>
                Hours by the year the game came out · {releaseYearData.newPercent}% of hours on games played within a year of release
              </div>
              <div className={styles.chartWrapper}>
                <ResponsiveContainer width="100%" height="100%">
                  <BarChart data={releaseYearData.data} margin={{ top: 8, right: 16, left: 0, bottom: 40 }}>
                    <CartesianGrid strokeDasharray="3 3" vertical={false} stroke="#2c3442" />
                    <XAxis dataKey="year" tick={{ fontSize: 11, fill: '#9aa3b2' }} angle={-45} textAnchor="end" tickLine={false} axisLine={false} />
                    <YAxis tickFormatter={(v) => `${v}h`} tick={{ fontSize: 11, fill: '#9aa3b2' }} tickLine={false} axisLine={false} width={36} />
                    <Tooltip content={<CustomTooltip />} cursor={{ fill: 'rgba(255,255,255,0.05)' }} />
                    <Bar dataKey="hours" fill="#06b6d4" radius={[3, 3, 0, 0]} />
                  </BarChart>
                </ResponsiveContainer>
              </div>
            </section>

            <section className={styles.section}>
              <h2 className={styles.sectionTitle}>Session Length Distribution</h2>
              <div className={styles.sectionSubtitle}>Number of sessions by length</div>
              <div className={styles.chartWrapper}>
                <ResponsiveContainer width="100%" height="100%">
                  <BarChart data={sessionLengthData} margin={{ top: 8, right: 16, left: 0, bottom: 20 }}>
                    <CartesianGrid strokeDasharray="3 3" vertical={false} stroke="#2c3442" />
                    <XAxis dataKey="bucket" tick={{ fontSize: 11, fill: '#9aa3b2' }} tickLine={false} axisLine={false} />
                    <YAxis allowDecimals={false} tick={{ fontSize: 11, fill: '#9aa3b2' }} tickLine={false} axisLine={false} width={36} />
                    <Tooltip content={<CountTooltip />} cursor={{ fill: 'rgba(255,255,255,0.05)' }} />
                    <Bar dataKey="sessions" fill="#8b7cf0" radius={[3, 3, 0, 0]} />
                  </BarChart>
                </ResponsiveContainer>
              </div>
            </section>
          </div>

          <section className={styles.section}>
            <h2 className={styles.sectionTitle}>When You Play</h2>
            <div className={styles.sectionSubtitle}>Playtime by weekday and hour of day — darker cells mean more playtime</div>
            <TimeOfDayHeatmap sessions={filteredSessions} />
          </section>

          {/* <section className={styles.section}>
            <h2 className={styles.sectionTitle}>Gaming Calendar Heatmap</h2>
            <div className={styles.sectionSubtitle}>Daily playtime activity heatmap</div>
            <div className={styles.heatmapWrapper}>
              <CalendarHeatmap
                startDate={heatmapStartDate}
                endDate={heatmapEndDate}
                values={heatmapData}
                classForValue={(value: { count: number; }) => {
                  if (!value) return 'color-empty'
                  if (value.count < 10) return 'color-scale-1'
                  if (value.count < 20) return 'color-scale-2'
                  if (value.count < 30) return 'color-scale-3'
                  if (value.count < 40) return 'color-scale-4'
                  return 'color-scale-5'
                }}
                titleForValue={(value: { date: string | number | Date; count: any; }) => {
                  if (!value || !value.date) return 'No data'

                  const date = new Date(value.date)
                  const formattedDate = date.toLocaleDateString('en-AU', {
                    weekday: 'short',
                    month: 'short',
                    day: 'numeric',
                  })

                  const hours = ((value.count ?? 0) / 10).toFixed(1)

                  return `${formattedDate}: ${hours} hrs`
                }}
                showWeekdayLabels
              />
            </div>
            <style>{`
              .react-calendar-heatmap .color-empty {
                fill: #232a36;
              }
              .react-calendar-heatmap .color-scale-1 {
                fill: #3a2a14;
              }
              .react-calendar-heatmap .color-scale-2 {
                fill: #5c4118;
              }
              .react-calendar-heatmap .color-scale-3 {
                fill: #8a5f1d;
              }
              .react-calendar-heatmap .color-scale-4 {
                fill: #c08526;
              }
              .react-calendar-heatmap .color-scale-5 {
                fill: #f2a541;
              }
              .react-calendar-heatmap text {
                fill: #9aa3b2;
              }
              .react-calendar-heatmap .react-calendar-heatmap-weekday-label {
                font-size: 5px;
              }
            `}</style>
          </section> */}

          <section className={styles.section}>
            <h2 className={styles.sectionTitle}>Yearly Calendar</h2>
            <div className={styles.sectionSubtitle}>A full year at a glance — darker days mean more playtime</div>

            <div className={styles.calendarNav}>
              <button
                className={styles.calendarYearBtn}
                onClick={() => setFilterYear(calendarYear - 1)}
                aria-label="Previous year"
              >
                ‹
              </button>
              <span className={styles.calendarYearLabel}>{calendarYear}</span>
              <button
                className={styles.calendarYearBtn}
                onClick={() => setFilterYear(calendarYear + 1)}
                aria-label="Next year"
              >
                ›
              </button>
            </div>

            <PlaytimeCalendar year={calendarYear} dayMinutes={dayMinutesMap} />

            <div className={styles.calendarLegend}>
              <span>Less</span>
              {HEATMAP_COLORS.map((c, i) => (
                <span key={i} className={styles.legendSwatch} style={{ background: c }} />
              ))}
              <span>More</span>
            </div>
          </section>

          <section className={styles.section}>
            <h2 className={styles.sectionTitle}>Cover Art Calendar</h2>
            <div className={styles.sectionSubtitle}>The games you played each day, shown as covers (up to 4 per day)</div>

            <div className={styles.calendarNav}>
              <button
                className={styles.calendarYearBtn}
                onClick={() => setFilterYear(calendarYear - 1)}
                aria-label="Previous year"
              >
                ‹
              </button>
              <span className={styles.calendarYearLabel}>{calendarYear}</span>
              <button
                className={styles.calendarYearBtn}
                onClick={() => setFilterYear(calendarYear + 1)}
                aria-label="Next year"
              >
                ›
              </button>
            </div>

            <CoverCalendar year={calendarYear} days={dayGamesMap} />
          </section>

          <section className={styles.section}>
            <h2 className={styles.sectionTitle}>Cumulative Playtime by Year</h2>
            <div className={styles.sectionSubtitle}>Total accumulated hours through each day of the year</div>
            <div className={styles.largeChartWrapper}>
              <ResponsiveContainer width="100%" height="100%">
                <LineChart data={cumulativeYearlyData.data} margin={{ top: 8, right: 16, left: 0, bottom: 8 }}>
                  <CartesianGrid strokeDasharray="3 3" vertical={false} stroke="#2c3442" />
                  <XAxis
                    dataKey="dayOfYear"
                    type="number"
                    domain={[1, 366]}
                    tick={{ fontSize: 11, fill: '#9aa3b2' }}
                    tickLine={false}
                    axisLine={false}
                    tickFormatter={(v) => `Day ${v}`}
                  />
                  <YAxis tickFormatter={(v) => `${v}h`} tick={{ fontSize: 11, fill: '#9aa3b2' }} tickLine={false} axisLine={false} width={36} />
                  <Tooltip
                    formatter={(value: any) => `${value}h`}
                    labelFormatter={(v) => `Day ${v}`}
                    contentStyle={{ background: '#232b38', border: '1px solid #2c3442', borderRadius: 8, color: '#eef1f6' }}
                    itemStyle={{ color: '#eef1f6' }}
                    labelStyle={{ color: '#9aa3b2' }}
                  />
                  <Legend
                    wrapperStyle={{ fontSize: 12, color: '#9aa3b2', cursor: 'pointer' }}
                    onClick={(entry: any) => {
                      const y = Number(entry.value)
                      setHighlightedYear((prev) => (prev === y ? null : y))
                    }}
                    formatter={(value: string) => (
                      <span style={{ color: highlightedYear === null || highlightedYear === Number(value) ? '#eef1f6' : '#5d6675' }}>
                        {value}
                      </span>
                    )}
                  />
                  {cumulativeYearlyData.years.map((y, index) => {
                    const isDimmed = highlightedYear !== null && highlightedYear !== y
                    return (
                      <Line
                        key={y}
                        dataKey={String(y)}
                        name={String(y)}
                        stroke={COLORS[index % COLORS.length]}
                        strokeOpacity={isDimmed ? 0.15 : 1}
                        dot={false}
                        strokeWidth={highlightedYear === y ? 3 : 2}
                        connectNulls={false}
                      />
                    )
                  })}
                </LineChart>
              </ResponsiveContainer>
            </div>
          </section>
        </>
      )}
    </div>
  )
}