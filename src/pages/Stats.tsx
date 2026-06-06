import { useEffect, useState } from 'react'
import { supabase, FIXED_USER_ID } from '@/lib/supabase'
import styles from './AddSession.module.css'

function formatDuration(minutes: number) {
  const m = Math.max(0, Math.round(minutes || 0))
  const h = Math.floor(m / 60)
  const rem = m % 60
  return h > 0 ? `${h}h ${rem}m` : `${rem}m`
}

interface SelectedGameDetail {
  title: string
  cover_url?: string
  minutes: number
  lastPlayedDate?: string
  lastPlayedTime?: string
  firstPlayedDate?: string
  firstPlayedTime?: string
  sessions?: Array<{ start_date: string; duration_minutes: number }>
}

export default function Stats() {
  const [activeTab, setActiveTab] = useState<'month' | 'platform' | 'gamemode'>('month')
  const [selectedYear, setSelectedYear] = useState<number>(new Date().getFullYear())
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)
  const [selectedGame, setSelectedGame] = useState<SelectedGameDetail | null>(null)

  const [monthGames, setMonthGames] = useState<{ title: string; minutes: number; cover_url?: string }[]>([])
  const [monthMinutes, setMonthMinutes] = useState<number>(0)
  const [lastMonthGames, setLastMonthGames] = useState<{ title: string; minutes: number; cover_url?: string }[]>([])
  const [lastMonthMinutes, setLastMonthMinutes] = useState<number>(0)

  const [yearGames, setYearGames] = useState<{ title: string; minutes: number; cover_url?: string }[]>([])
  const [yearMinutes, setYearMinutes] = useState<number>(0)

  const [yearPlatforms, setYearPlatforms] = useState<{ platform_id: number; name: string; minutes: number }[]>([])
  const [yearPlatformMinutes, setYearPlatformMinutes] = useState<number>(0)

  const [yearGameModes, setYearGameModes] = useState<{ name: string; minutes: number }[]>([])
  const [yearGameModeMinutes, setYearGameModeMinutes] = useState<number>(0)

  useEffect(() => {
    let mounted = true
    ;(async () => {
      setLoading(true)
      setError(null)
      const userId = FIXED_USER_ID
      const startOfYear = new Date(selectedYear, 0, 1).toISOString().split('T')[0]
      const endOfYear = new Date(selectedYear, 11, 31).toISOString().split('T')[0]

      const { data: sessions, error } = await supabase
        .from('sessions')
        .select('session_id, duration_minutes, start_date, game_mode, games ( title, cover_url ), platforms ( platform_id, name )')
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
      const now = new Date()
      const monthStart = new Date(selectedYear, now.getMonth(), 1).toISOString().split('T')[0]
      const monthEnd = new Date(selectedYear, now.getMonth() + 1, 0).toISOString().split('T')[0]
      const lastMonthStart = new Date(selectedYear, now.getMonth() - 1, 1).toISOString().split('T')[0]
      const lastMonthEnd = new Date(selectedYear, now.getMonth(), 0).toISOString().split('T')[0]
      const monthMap = new Map<string, { minutes: number; cover?: string }>()
      const lastMonthMap = new Map<string, { minutes: number; cover?: string }>()
      const yearMap = new Map<string, { minutes: number; cover?: string }>()
      const platformMap = new Map<number, { platform_id: number; name: string; minutes: number }>()
      const gameModeMap = new Map<string, number>()
      let monthSum = 0
      let lastMonthSum = 0
      let yearSum = 0
      let platformSum = 0
      let gameModeSum = 0

      list.forEach((s) => {
        const date = s?.start_date
        const title = s?.games?.title ?? 'Unknown'
        const cover = s?.games?.cover_url ?? undefined
        const minutes = Number(s?.duration_minutes) || 0
        const platformId = s?.platforms?.platform_id
        const platformName = s?.platforms?.name ?? 'Unknown'
        const gameMode = s?.game_mode ?? 'Unknown'

        if (!date) return
        
        // platform aggregate (for full year)
        if (platformId) {
          const p = platformMap.get(platformId) || { platform_id: platformId, name: platformName, minutes: 0 }
          platformMap.set(platformId, { platform_id: p.platform_id, name: p.name, minutes: p.minutes + minutes })
          platformSum += minutes
        }
        
        // game mode aggregate (for full year)
        const gm = gameModeMap.get(gameMode) || 0
        gameModeMap.set(gameMode, gm + minutes)
        gameModeSum += minutes
        
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
      setYearPlatforms(
        Array.from(platformMap.values())
          .sort((a, b) => b.minutes - a.minutes)
      )
      setYearPlatformMinutes(platformSum)
      setYearGameModes(
        Array.from(gameModeMap.entries())
          .map(([name, mins]) => ({ name, minutes: mins }))
          .sort((a, b) => b.minutes - a.minutes)
      )
      setYearGameModeMinutes(gameModeSum)
      setLoading(false)
    })()
    return () => { mounted = false }
  }, [selectedYear])

  async function handleGameClick(gameTitle: string, coverUrl: string | undefined) {
    const userId = FIXED_USER_ID

    // First, get the game_id for this title
    const { data: gameData } = await supabase
      .from('games')
      .select('game_id')
      .eq('title', gameTitle)
      .single()

    let lastPlayedDate = ''
    let lastPlayedTime = ''
    let firstPlayedDate = ''
    let firstPlayedTime = ''
    let totalPlaytimeMinutes = 0
    let allSessions: Array<{ start_date: string; duration_minutes: number }> = []

    if (gameData?.game_id) {
      // Fetch all sessions for this game
      const { data: sessions } = await supabase
        .from('sessions')
        .select('start_date, start_time, duration_minutes')
        .eq('user_id', userId)
        .eq('game_id', gameData.game_id)
        .order('start_date', { ascending: false })

      if (sessions && sessions.length > 0) {
        allSessions = sessions as any[]
        const lastDate = new Date(`${sessions[0].start_date}T${sessions[0].start_time}`)
        lastPlayedDate = lastDate.toLocaleDateString('en-US', { month: 'short', day: 'numeric', year: 'numeric' })
        lastPlayedTime = lastDate.toLocaleTimeString('en-US', { hour: 'numeric', minute: '2-digit', hour12: true })

        const firstDate = new Date(`${sessions[sessions.length - 1].start_date}T${sessions[sessions.length - 1].start_time}`)
        firstPlayedDate = firstDate.toLocaleDateString('en-US', { month: 'short', day: 'numeric', year: 'numeric' })
        firstPlayedTime = firstDate.toLocaleTimeString('en-US', { hour: 'numeric', minute: '2-digit', hour12: true })

        totalPlaytimeMinutes = sessions.reduce((sum, s) => sum + (Number(s.duration_minutes) || 0), 0)
      }
    }

    setSelectedGame({
      title: gameTitle,
      cover_url: coverUrl,
      minutes: totalPlaytimeMinutes,
      lastPlayedDate,
      lastPlayedTime,
      firstPlayedDate,
      firstPlayedTime,
      sessions: allSessions
    })
  }

  function renderColumns(list: { title: string; minutes: number; cover_url?: string }[]) {
    if (list.length === 0) return null
    return (
      <div className="stats-grid" style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(125px, 1fr))', gap: 16 }}>
        {list.map((g) => (
          <div key={g.title} style={{ display: 'flex', flexDirection: 'column', textAlign: 'center' }}>
            <div 
              onClick={() => handleGameClick(g.title, g.cover_url)}
              style={{ cursor: 'pointer' }}
              onMouseEnter={(e) => {
                if ((e.target as HTMLElement).querySelector('img')) {
                  ((e.target as HTMLElement).querySelector('img') as HTMLImageElement).style.opacity = '1'
                }
              }}
              onMouseLeave={(e) => {
                if ((e.target as HTMLElement).querySelector('img')) {
                  ((e.target as HTMLElement).querySelector('img') as HTMLImageElement).style.opacity = '0.9'
                }
              }}
            >
              {g.cover_url ? (
                <img src={g.cover_url.replace(/^\/\//, 'https://')} alt="cover" style={{ width: '100%', height: 'auto', borderRadius: 6, marginBottom: 8, aspectRatio: '3/4', objectFit: 'cover', opacity: 0.9, transition: 'opacity 0.2s' }} />
              ) : (
                <div style={{ width: '100%', aspectRatio: '3/4', backgroundColor: '#e5e7eb', borderRadius: 6, marginBottom: 8 }} />
              )}
            </div>
            <strong style={{ fontSize: '0.9rem', marginBottom: 4, wordWrap: 'break-word', overflow: 'visible', whiteSpace: 'normal' }}>{g.title}</strong>
            <span style={{ fontSize: '0.85rem', color: '#666' }}>{formatDuration(g.minutes)}</span>
          </div>
        ))}
      </div>
    )
  }

  function renderPlatforms(list: { platform_id: number; name: string; minutes: number }[]) {
    if (list.length === 0) return null
    const baseUrl = import.meta.env.BASE_URL
    return (
      <div className="platforms-stats-grid" style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(125px, 1fr))', gap: 32 }}>
        {list.map((p) => (
          <div key={p.platform_id} style={{ display: 'flex', flexDirection: 'column', textAlign: 'center' }}>
            <div style={{ width: '100%', aspectRatio: '1/1', backgroundColor: '#ffffff', borderColor: '#e5e7eb', borderWidth: 2, borderStyle: 'solid', borderRadius: 6, marginBottom: 8, display: 'flex', alignItems: 'center', justifyContent: 'center', overflow: 'hidden', padding: 4 }}>
              <img src={`${baseUrl}platforms/${encodeURIComponent(p.name)}.png`} alt={p.name} style={{ maxWidth: '100%', maxHeight: '100%', objectFit: 'contain' }} />
            </div>
            <strong style={{ fontSize: '0.9rem', marginBottom: 4, wordWrap: 'break-word', overflow: 'visible', whiteSpace: 'normal' }}>{p.name}</strong>
            <span style={{ fontSize: '0.85rem', color: '#666' }}>{formatDuration(p.minutes)}</span>
          </div>
        ))}
      </div>
    )
  }

  function renderGameModes(list: { name: string; minutes: number }[]) {
    if (list.length === 0) return null
    const baseUrl = import.meta.env.BASE_URL
    return (
      <div className="gamemodes-stats-grid" style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(125px, 1fr))', gap: 24, paddingRight: 24 }}>
        {list.map((gm) => (
          <div key={gm.name} style={{ display: 'flex', flexDirection: 'column', textAlign: 'center' }}>
            <div style={{ width: '100%', aspectRatio: '1/1', backgroundColor: '#ffffff', borderColor: '#e5e7eb', borderWidth: 2, borderStyle: 'solid', borderRadius: 6, marginBottom: 8, display: 'flex', alignItems: 'center', justifyContent: 'center', overflow: 'hidden', padding: 4, boxSizing: 'border-box' }}>
              <img src={`${baseUrl}game_modes/${encodeURIComponent(gm.name)}.png`} alt={gm.name} style={{ maxWidth: '100%', maxHeight: '100%', objectFit: 'contain' }} />
            </div>
            <strong style={{ fontSize: '0.9rem', marginBottom: 4, wordWrap: 'break-word', overflow: 'visible', whiteSpace: 'normal' }}>{gm.name}</strong>
            <span style={{ fontSize: '0.85rem', color: '#666' }}>{formatDuration(gm.minutes)}</span>
          </div>
        ))}
      </div>
    )
  }

  function renderPlaytimeGraph(sessions: Array<{ start_date: string; duration_minutes: number }> | undefined) {
    if (!sessions || sessions.length === 0) return null

    // Group by month
    const monthMap = new Map<string, number>()
    const monthOrder: string[] = []

    sessions.forEach(session => {
      const date = new Date(session.start_date)
      const monthKey = date.toLocaleString('default', { year: '2-digit', month: 'short' })
      
      if (!monthMap.has(monthKey)) {
        monthOrder.push(monthKey)
      }
      
      const current = monthMap.get(monthKey) || 0
      monthMap.set(monthKey, current + (Number(session.duration_minutes) || 0))
    })

    // Sort by date
    monthOrder.sort((a, b) => {
      const [monthA, yearA] = a.split(' ')
      const [monthB, yearB] = b.split(' ')
      const dateA = new Date(`20${yearA}-${monthA}-01`)
      const dateB = new Date(`20${yearB}-${monthB}-01`)
      return dateA.getTime() - dateB.getTime()
    })

    // monthOrder.reverse()

    // console.log('Month Map:', monthMap)

    // Find max for scaling
    const maxMinutes = Math.max(...Array.from(monthMap.values()))
    if (maxMinutes === 0) return null

    console.log('maxMinutes:', maxMinutes)

    return (
      <div style={{ marginBottom: 16, marginTop: 16, width: '100%', alignItems: 'center', display: 'flex', flexDirection: 'column' }}>
        <div style={{ fontSize: '0.85rem', color: '#666', marginBottom: 8 }}>Playtime by Month</div>
        <div style={{ display: 'flex', gap: 3, alignItems: 'flex-end', height: 120, justifyContent: 'space-between', width: '100%', }}>
          {monthOrder.map(monthKey => {
            const minutes = monthMap.get(monthKey) || 0
            const barHeight = Math.max((minutes / maxMinutes) * 90, 4)
            return (
              <div
                key={monthKey}
                style={{
                  flex: 1,
                  display: 'flex',
                  flexDirection: 'column',
                  alignItems: 'center',
                  gap: 4,
                  minWidth: 0
                }}
              >
                <div
                  title={`${monthKey}: ${formatDuration(minutes)}`}
                  style={{
                    width: '100%',
                    height: `${barHeight}px`,
                    backgroundColor: '#6366f1',
                    borderRadius: 2,
                    transition: 'opacity 0.2s',
                    cursor: 'pointer'
                  }}
                  onMouseEnter={(e) => {
                    (e.target as HTMLElement).style.opacity = '0.7'
                  }}
                  onMouseLeave={(e) => {
                    (e.target as HTMLElement).style.opacity = '1'
                  }}
                />
                {monthOrder.length < 15 && (
                  <div style={{ fontSize: '0.65rem', color: '#999', textAlign: 'center', width: '100%', wordBreak: 'break-word' }}>
                    {monthKey}
                  </div>
                )}
              </div>
            )
          })}
        </div>
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
      <style>{`
        @media (max-width: 768px) {
          .stats-grid {
            grid-template-columns: repeat(auto-fill, minmax(90px, 1fr)) !important;
          }
          .platforms-stats-grid {
            grid-template-columns: repeat(auto-fill, minmax(70px, 1fr)) !important;
          }
          .gamemodes-stats-grid {
            grid-template-columns: repeat(auto-fill, minmax(70px, 1fr)) !important;
          }
        }
      `}</style>
      <div style={{ display: 'flex', gap: 16, alignItems: 'center', marginBottom: 24 }}>
        <h1 style={{ margin: 0 }}>Stats</h1>
        <select
          value={selectedYear}
          onChange={(e) => setSelectedYear(Number(e.target.value))}
          style={{
            padding: '8px 12px',
            fontSize: '1rem',
            borderRadius: 4,
            border: '1px solid #e5e7eb',
            backgroundColor: '#ffffff',
            cursor: 'pointer',
          }}
        >
          {Array.from({ length: new Date().getFullYear() - 2019 + 1 }, (_, i) => 2019 + i).reverse().map((year) => (
            <option key={year} value={year}>
              {year}
            </option>
          ))}
        </select>
      </div>
      
      {selectedYear === new Date().getFullYear() && (
        <>
          <div style={{ display: 'flex', gap: 8, marginBottom: 24, borderBottom: '1px solid #e5e7eb' }}>
            <button
              onClick={() => setActiveTab('month')}
              style={{
                padding: '8px 16px',
                background: 'none',
                border: 'none',
                borderBottom: activeTab === 'month' ? '2px solid #6366f1' : 'transparent',
                color: activeTab === 'month' ? '#6366f1' : '#666',
                fontWeight: activeTab === 'month' ? 600 : 400,
                cursor: 'pointer',
                fontSize: '1rem',
              }}
            >
              By Month
            </button>
            <button
              onClick={() => setActiveTab('platform')}
              style={{
                padding: '8px 16px',
                background: 'none',
                border: 'none',
                borderBottom: activeTab === 'platform' ? '2px solid #6366f1' : 'transparent',
                color: activeTab === 'platform' ? '#6366f1' : '#666',
                fontWeight: activeTab === 'platform' ? 600 : 400,
                cursor: 'pointer',
                fontSize: '1rem',
              }}
            >
              By Platform
            </button>
            <button
              onClick={() => setActiveTab('gamemode')}
              style={{
                padding: '8px 16px',
                background: 'none',
                border: 'none',
                borderBottom: activeTab === 'gamemode' ? '2px solid #6366f1' : 'transparent',
                color: activeTab === 'gamemode' ? '#6366f1' : '#666',
                fontWeight: activeTab === 'gamemode' ? 600 : 400,
                cursor: 'pointer',
                fontSize: '1rem',
              }}
            >
              By Game Mode
            </button>
          </div>
        </>
      )}

      {loading && <div>Loading…</div>}
      {error && <div style={{ color: '#dc2626' }}>{error}</div>}

      {!loading && !error && selectedYear === new Date().getFullYear() && activeTab === 'month' && (
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

      {!loading && !error && selectedYear === new Date().getFullYear() && activeTab === 'platform' && (
        <div>
          <section>
            <h2>Playtime by Platform in {thisYearLabel}</h2>
            <div className={styles.hint} style={{ fontWeight: 700, fontSize: '1.05rem', paddingBottom: 8, marginBottom: 12 }}>{formatDuration(yearPlatformMinutes)} total</div>
            {yearPlatforms.length === 0 ? <div className={styles.hint}>No platforms recorded this year.</div> : renderPlatforms(yearPlatforms)}
          </section>
        </div>
      )}

      {!loading && !error && selectedYear === new Date().getFullYear() && activeTab === 'gamemode' && (
        <div>
          <section>
            <h2>Playtime by Game Mode in {thisYearLabel}</h2>
            <div className={styles.hint} style={{ fontWeight: 700, fontSize: '1.05rem', paddingBottom: 8, marginBottom: 12 }}>{formatDuration(yearGameModeMinutes)} total</div>
            {yearGameModes.length === 0 ? <div className={styles.hint}>No game modes recorded this year.</div> : renderGameModes(yearGameModes)}
          </section>
        </div>
      )}

      {!loading && !error && selectedYear !== new Date().getFullYear() && (
        <div>
          <section>
            <h2>Games Played in {selectedYear}</h2>
            <div className={styles.hint} style={{ fontWeight: 700, fontSize: '1.05rem', paddingBottom: 8, marginBottom: 12 }}>{formatDuration(yearMinutes)} total</div>
            {yearGames.length === 0 ? <div className={styles.hint}>No games recorded in {selectedYear}.</div> : renderColumns(yearGames)}
          </section>
        </div>
      )}

      {selectedGame && (
        <div style={{
          position: 'fixed',
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          backgroundColor: 'rgba(0, 0, 0, 0.5)',
          display: 'flex',
          alignItems: 'center',
          justifyContent: 'center',
          zIndex: 1000,
        }}
          onClick={() => setSelectedGame(null)}
        >
          <div style={{
            backgroundColor: 'white',
            borderRadius: 12,
            padding: 24,
            maxWidth: 400,
            boxShadow: '0 10px 40px rgba(0, 0, 0, 0.3)',
            maxHeight: '90vh',
            overflowY: 'auto',
            width: '80%',
            alignItems: 'center',
            display: 'flex',
            flexDirection: 'column'
          }}
            onClick={(e) => e.stopPropagation()}
          >
            {selectedGame.cover_url ? (
              <img 
                src={selectedGame.cover_url.replace(/^\/\//, 'https://')} 
                alt={selectedGame.title}
                style={{ 
                  width: '50%', 
                  height: 'auto', 
                  borderRadius: 8, 
                  marginBottom: 16
                }} 
              />
            ) : (
              <div style={{ 
                width: '50%',
                backgroundColor: '#e5e7eb', 
                borderRadius: 8, 
                marginBottom: 16 
              }} />
            )}
            <h2 style={{ margin: '0 0 16px 0', fontSize: '1.5rem' }}>{selectedGame.title}</h2>
            
            <div style={{ marginBottom: 12, alignItems: 'center', display: 'flex', flexDirection: 'column' }}>
              <div style={{ fontSize: '0.85rem', color: '#666', marginBottom: 4 }}>Total Playtime</div>
              <div style={{ fontSize: '1.2rem', fontWeight: 600 }}>{formatDuration(selectedGame.minutes)}</div>
            </div>

            {selectedGame.lastPlayedDate && (
              <div style={{ marginBottom: 12, alignItems: 'center', display: 'flex', flexDirection: 'column' }}>
                <div style={{ fontSize: '0.85rem', color: '#666', marginBottom: 4 }}>Last Played</div>
                <div style={{ fontSize: '1rem' }}>
                  {selectedGame.lastPlayedDate}
                  {selectedGame.lastPlayedTime && ` at ${selectedGame.lastPlayedTime}`}
                </div>
              </div>
            )}

            {selectedGame.firstPlayedDate && (
              <div style={{ marginBottom: 12, alignItems: 'center', display: 'flex', flexDirection: 'column' }}>
                <div style={{ fontSize: '0.85rem', color: '#666', marginBottom: 4 }}>First Played</div>
                <div style={{ fontSize: '1rem' }}>
                  {selectedGame.firstPlayedDate}
                  {selectedGame.firstPlayedTime && ` at ${selectedGame.firstPlayedTime}`}
                </div>
              </div>
            )}

            {renderPlaytimeGraph(selectedGame.sessions)}

            <button
              onClick={() => setSelectedGame(null)}
              style={{
                width: '40%',
                padding: '10px 16px',
                marginTop: 16,
                backgroundColor: '#6366f1',
                color: 'white',
                border: 'none',
                borderRadius: 6,
                fontSize: '1rem',
                fontWeight: 500,
                cursor: 'pointer'
              }}
            >
              Close
            </button>
          </div>
        </div>
      )}
    </div>
  )
}
