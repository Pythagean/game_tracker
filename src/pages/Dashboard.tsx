import { useEffect, useState } from 'react'
import { supabase, FIXED_USER_ID } from '@/lib/supabase'
import {
  BarChart,
  Bar,
  PieChart,
  Pie,
  Cell,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  ResponsiveContainer,
} from 'recharts'
import styles from './Dashboard.module.css'

interface MonthlyData {
  month: string
  hours: number
  minutes: number
}

interface WeekdayData {
  day: string
  hours: number
  minutes: number
}

interface GameModeData {
  name: string
  hours: number
  minutes: number
}

interface PlatformData {
  name: string
  value: number
  minutes: number
  fill?: string
}

interface PlayedWithData {
  name: string
  hours: number
  minutes: number
}

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
      <div style={{
        backgroundColor: 'white',
        border: '1px solid #e5e7eb',
        borderRadius: 6,
        padding: '8px 12px',
        fontSize: '0.85rem',
        boxShadow: '0 2px 8px rgba(0,0,0,0.1)',
      }}>
        <div style={{ fontWeight: 600, marginBottom: 4 }}>{label}</div>
        <div style={{ color: '#6366f1' }}>{formatted}</div>
      </div>
    )
  }
  return null
}

export default function Dashboard() {
  const [data, setData] = useState<MonthlyData[]>([])
  const [weekdayData, setWeekdayData] = useState<WeekdayData[]>([])
  const [gameModeData, setGameModeData] = useState<GameModeData[]>([])
  const [platformData, setPlatformData] = useState<PlatformData[]>([])
  const [playedWithData, setPlayedWithData] = useState<PlayedWithData[]>([])
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)
  const [selectedYear, setSelectedYear] = useState<number | 'all'>(new Date().getFullYear())

  useEffect(() => {
    let mounted = true
    ;(async () => {
      setLoading(true)
      setError(null)

      // Fetch sessions with platform data
      const { data: sessions, error: sessionsError } = await supabase
        .from('sessions')
        .select('session_id, start_date, duration_minutes, game_mode, platforms ( name )')
        .eq('user_id', FIXED_USER_ID)
        .order('start_date', { ascending: true })

      if (!mounted) return
      if (sessionsError) {
        setError(sessionsError.message)
        setLoading(false)
        return
      }

      // Fetch all players
      const { data: players, error: playersError } = await supabase
        .from('players')
        .select('player_id, name')

      if (!mounted) return
      if (playersError) {
        setError(playersError.message)
        setLoading(false)
        return
      }

      // Fetch session players with player IDs
      const { data: sessionPlayers, error: sessionPlayersError } = await supabase
        .from('session_player')
        .select('*')

      if (!mounted) return
      if (sessionPlayersError) {
        setError(sessionPlayersError.message)
        setLoading(false)
        return
      }

      const monthMap = new Map<string, number>()
      const weekdayMap = new Map<string, number>()
      const gameModeMap = new Map<string, number>()
      const platformMap = new Map<string, number>()
      const playedWithMap = new Map<string, number>()
      const weekdayOrder = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']

      // Create player_id -> name mapping
      const playerMap = new Map<number, string>()
      for (const p of players as any[]) {
        playerMap.set(p.player_id, p.name)
      }

      // Create a map of session_id to players for quick lookup
      const sessionPlayersMap = new Map<string, string[]>()
      for (const sp of sessionPlayers as any[]) {
        if (!sessionPlayersMap.has(sp.session_id)) {
          sessionPlayersMap.set(sp.session_id, [])
        }
        const playerName = playerMap.get(sp.player_id)
        if (playerName) {
          sessionPlayersMap.get(sp.session_id)!.push(playerName)
        }
      }

      for (const s of sessions as any[]) {
        if (!s.start_date) continue
        const d = new Date(s.start_date)
        
        // Filter by year if not 'all'
        if (selectedYear !== 'all' && d.getFullYear() !== selectedYear) {
          continue
        }
        
        const minutes = Number(s.duration_minutes) || 0
        
        // Monthly aggregation
        const monthKey = d.toLocaleString('default', { year: 'numeric', month: 'short' })
        monthMap.set(monthKey, (monthMap.get(monthKey) ?? 0) + minutes)
        
        // Weekday aggregation
        const dayName = d.toLocaleString('default', { weekday: 'long' })
        weekdayMap.set(dayName, (weekdayMap.get(dayName) ?? 0) + minutes)
        
        // Game mode aggregation
        const gameMode = s.game_mode ?? 'Unknown'
        gameModeMap.set(gameMode, (gameModeMap.get(gameMode) ?? 0) + minutes)
        
        // Platform aggregation
        if (s.platforms?.name) {
          const platformName = s.platforms.name
          platformMap.set(platformName, (platformMap.get(platformName) ?? 0) + minutes)
        }
        
        // Played With aggregation
        const players = sessionPlayersMap.get(s.session_id) || []
        for (const playerName of players) {
          playedWithMap.set(playerName, (playedWithMap.get(playerName) ?? 0) + minutes)
        }
      }

      // Sort monthly data chronologically
      const sortedMonthly = Array.from(monthMap.entries()).sort((a, b) => {
        const parse = (k: string) => {
          const [mon, yr] = k.split(' ')
          return new Date(`${mon} 1, ${yr}`).getTime()
        }
        return parse(a[0]) - parse(b[0])
      })

      setData(
        sortedMonthly.map(([month, minutes]) => ({
          month,
          hours: parseFloat(formatHours(minutes)),
          minutes,
        }))
      )

      // Sort weekday data by day order
      setWeekdayData(
        weekdayOrder
          .filter((day) => weekdayMap.has(day))
          .map((day) => {
            const minutes = weekdayMap.get(day) ?? 0
            return {
              day,
              hours: parseFloat(formatHours(minutes)),
              minutes,
            }
          })
      )

      // Sort game mode data by hours (descending)
      setGameModeData(
        Array.from(gameModeMap.entries())
          .sort((a, b) => b[1] - a[1])
          .map(([name, minutes]) => ({
            name,
            hours: parseFloat(formatHours(minutes)),
            minutes,
          }))
      )

      // Sort platform data by hours (descending)
      const COLORS = ['#6366f1', '#8b5cf6', '#ec4899', '#f59e0b', '#10b981', '#06b6d4', '#3b82f6', '#ef4444']
      setPlatformData(
        Array.from(platformMap.entries())
          .sort((a, b) => b[1] - a[1])
          .map(([name, minutes], index) => ({
            name,
            value: parseFloat(formatHours(minutes)),
            minutes,
            fill: COLORS[index % COLORS.length],
          }))
      )

      // Sort played with data by hours (descending)
      setPlayedWithData(
        Array.from(playedWithMap.entries())
          .sort((a, b) => b[1] - a[1])
          .map(([name, minutes]) => ({
            name,
            hours: parseFloat(formatHours(minutes)),
            minutes,
          }))
      )

      setLoading(false)
    })()
    return () => { mounted = false }
  }, [selectedYear])

  return (
    <div className={styles.container}>
      <div style={{ display: 'flex', gap: 16, alignItems: 'center', marginBottom: 24 }}>
        <h1 className={styles.heading} style={{ margin: 0 }}>Dashboard</h1>
        <select
          value={selectedYear}
          onChange={(e) => setSelectedYear(e.target.value === 'all' ? 'all' : Number(e.target.value))}
          style={{
            padding: '8px 12px',
            fontSize: '1rem',
            borderRadius: 4,
            border: '1px solid #e5e7eb',
            backgroundColor: '#ffffff',
            cursor: 'pointer',
            fontFamily: 'system-ui, sans-serif',
          }}
        >
          <option value="all">All</option>
          {Array.from({ length: new Date().getFullYear() - 2019 + 1 }, (_, i) => 2019 + i)
            .reverse()
            .map((year) => (
              <option key={year} value={year}>
                {year}
              </option>
            ))}
        </select>
      </div>

      {loading && <div className={styles.loadingMessage}>Loading…</div>}
      {error && <div className={styles.errorMessage}>{error}</div>}

      {!loading && !error && (
        <>
          <section className={styles.section}>
            <h2 className={styles.sectionTitle}>Monthly Playtime</h2>
          <div className={styles.sectionSubtitle}>
            Hours played per month {selectedYear === 'all' ? '(all time)' : `(${selectedYear})`}
          </div>
          <ResponsiveContainer width="100%" height={320}>
            <BarChart data={data} margin={{ top: 8, right: 16, left: 0, bottom: 60 }}>
              <CartesianGrid strokeDasharray="3 3" vertical={false} stroke="#f0f0f0" />
              <XAxis
                dataKey="month"
                tick={{ fontSize: 11, fill: '#888' }}
                angle={-45}
                textAnchor="end"
                interval={0}
                tickLine={false}
                axisLine={false}
              />
              <YAxis
                tickFormatter={(v) => `${v}h`}
                tick={{ fontSize: 11, fill: '#888' }}
                tickLine={false}
                axisLine={false}
                width={36}
              />
              <Tooltip content={<CustomTooltip />} cursor={{ fill: '#f3f4f6' }} />
              <Bar dataKey="hours" fill="#6366f1" radius={[3, 3, 0, 0]} maxBarSize={selectedYear === 'all' ? 40 : 80} />
            </BarChart>
          </ResponsiveContainer>
        </section>

          <div className={styles.chartsGrid}>
            {/* Playtime by Weekday */}
            <section className={styles.section}>
              <h2 className={styles.sectionTitle}>Playtime by Weekday</h2>
              <div className={styles.sectionSubtitle}>
                Hours played per day of week {selectedYear === 'all' ? '(all time)' : `(${selectedYear})`}
              </div>
              <ResponsiveContainer width="100%" height={280}>
                <BarChart data={weekdayData} margin={{ top: 8, right: 16, left: 0, bottom: 40 }}>
                  <CartesianGrid strokeDasharray="3 3" vertical={false} stroke="#f0f0f0" />
                  <XAxis
                    dataKey="day"
                    tick={{ fontSize: 11, fill: '#888' }}
                    angle={-45}
                    textAnchor="end"
                    tickLine={false}
                    axisLine={false}
                  />
                  <YAxis
                    tickFormatter={(v) => `${v}h`}
                    tick={{ fontSize: 11, fill: '#888' }}
                    tickLine={false}
                    axisLine={false}
                    width={36}
                  />
                  <Tooltip content={<CustomTooltip />} cursor={{ fill: '#f3f4f6' }} />
                  <Bar dataKey="hours" fill="#8b5cf6" radius={[3, 3, 0, 0]} />
                </BarChart>
              </ResponsiveContainer>
            </section>

            {/* Playtime by Game Mode */}
            <section className={styles.section}>
              <h2 className={styles.sectionTitle}>Playtime by Game Mode</h2>
              <div className={styles.sectionSubtitle}>
                Hours played per game mode {selectedYear === 'all' ? '(all time)' : `(${selectedYear})`}
              </div>
              <ResponsiveContainer width="100%" height={280}>
                <BarChart data={gameModeData} margin={{ top: 8, right: 16, left: 0, bottom: 40 }}>
                  <CartesianGrid strokeDasharray="3 3" vertical={false} stroke="#f0f0f0" />
                  <XAxis
                    dataKey="name"
                    tick={{ fontSize: 11, fill: '#888' }}
                    angle={-45}
                    textAnchor="end"
                    tickLine={false}
                    axisLine={false}
                  />
                  <YAxis
                    tickFormatter={(v) => `${v}h`}
                    tick={{ fontSize: 11, fill: '#888' }}
                    tickLine={false}
                    axisLine={false}
                    width={36}
                  />
                  <Tooltip content={<CustomTooltip />} cursor={{ fill: '#f3f4f6' }} />
                  <Bar dataKey="hours" fill="#ec4899" radius={[3, 3, 0, 0]} />
                </BarChart>
              </ResponsiveContainer>
            </section>
          </div>

          <div className={styles.chartsGrid}>
            {/* Playtime by Platform */}
            <section className={styles.section}>
              <h2 className={styles.sectionTitle}>Playtime by Platform</h2>
              <div className={styles.sectionSubtitle}>
                Hours played per platform {selectedYear === 'all' ? '(all time)' : `(${selectedYear})`}
              </div>
              <ResponsiveContainer width="100%" height={280}>
                <PieChart margin={{ top: 8, right: 8, left: 8, bottom: 8 }}>
                  <Pie
                    data={platformData}
                    cx="50%"
                    cy="50%"
                    labelLine={false}
                    label={(entry: any) => `${entry.name}`}
                    outerRadius={80}
                    fill="#8884d8"
                    dataKey="value"
                  >
                    {platformData.map((entry: any, index: number) => (
                      <Cell key={`cell-${index}`} fill={entry.fill} />
                    ))}
                  </Pie>
                  <Tooltip formatter={(value: any) => `${value}h`} />
                </PieChart>
              </ResponsiveContainer>
            </section>

            {/* Playtime by Played With */}
            <section className={styles.section}>
              <h2 className={styles.sectionTitle}>Playtime by Played With</h2>
              <div className={styles.sectionSubtitle}>
                Hours played with each person {selectedYear === 'all' ? '(all time)' : `(${selectedYear})`}
              </div>
              <ResponsiveContainer width="100%" height={280}>
                <BarChart data={playedWithData} margin={{ top: 8, right: 16, left: 0, bottom: 40 }}>
                  <CartesianGrid strokeDasharray="3 3" vertical={false} stroke="#f0f0f0" />
                  <XAxis
                    dataKey="name"
                    tick={{ fontSize: 11, fill: '#888' }}
                    angle={-45}
                    textAnchor="end"
                    tickLine={false}
                    axisLine={false}
                  />
                  <YAxis
                    tickFormatter={(v) => `${v}h`}
                    tick={{ fontSize: 11, fill: '#888' }}
                    tickLine={false}
                    axisLine={false}
                    width={36}
                  />
                  <Tooltip content={<CustomTooltip />} cursor={{ fill: '#f3f4f6' }} />
                  <Bar dataKey="hours" fill="#f59e0b" radius={[3, 3, 0, 0]} />
                </BarChart>
              </ResponsiveContainer>
            </section>
          </div>
        </>
      )}
    </div>
  )
}
