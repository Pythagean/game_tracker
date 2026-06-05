import { useEffect, useState } from 'react'
import { supabase, FIXED_USER_ID } from '@/lib/supabase'
import styles from './AddSession.module.css'

function formatDuration(minutes: number) {
  const m = Math.max(0, Math.round(minutes || 0))
  const h = Math.floor(m / 60)
  const rem = m % 60
  return h > 0 ? `${h}h ${rem}m` : `${rem}m`
}

export default function Stats() {
  const [activeTab, setActiveTab] = useState<'month' | 'platform' | 'gamemode'>('month')
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)

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

      const now = new Date()
      const startOfYear = new Date(now.getFullYear(), 0, 1).toISOString().split('T')[0]
      const endOfYear = new Date(now.getFullYear(), 11, 31).toISOString().split('T')[0]

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
      const monthStart = new Date(now.getFullYear(), now.getMonth(), 1).toISOString().split('T')[0]
      const monthEnd = new Date(now.getFullYear(), now.getMonth() + 1, 0).toISOString().split('T')[0]
      const lastMonthStart = new Date(now.getFullYear(), now.getMonth() - 1, 1).toISOString().split('T')[0]
      const lastMonthEnd = new Date(now.getFullYear(), now.getMonth(), 0).toISOString().split('T')[0]

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
  }, [])

  function renderColumns(list: { title: string; minutes: number; cover_url?: string }[]) {
    if (list.length === 0) return null
    return (
      <div className="stats-grid" style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(125px, 1fr))', gap: 16 }}>
        {list.map((g) => (
          <div key={g.title} style={{ display: 'flex', flexDirection: 'column', textAlign: 'center' }}>
            {g.cover_url ? (
              <img src={g.cover_url.replace(/^\/\//, 'https://')} alt="cover" style={{ width: '100%', height: 'auto', borderRadius: 6, marginBottom: 8, aspectRatio: '3/4', objectFit: 'cover' }} />
            ) : (
              <div style={{ width: '100%', aspectRatio: '3/4', backgroundColor: '#e5e7eb', borderRadius: 6, marginBottom: 8 }} />
            )}
            <strong style={{ fontSize: '0.9rem', marginBottom: 4, wordWrap: 'break-word', overflow: 'visible', whiteSpace: 'normal' }}>{g.title}</strong>
            <span style={{ fontSize: '0.85rem', color: '#666' }}>{formatDuration(g.minutes)}</span>
          </div>
        ))}
      </div>
    )
  }

  function renderPlatforms(list: { platform_id: number; name: string; minutes: number }[]) {
    if (list.length === 0) return null
    return (
      <div className="platforms-stats-grid" style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(125px, 1fr))', gap: 32 }}>
        {list.map((p) => (
          <div key={p.platform_id} style={{ display: 'flex', flexDirection: 'column', textAlign: 'center' }}>
            <div style={{ width: '100%', aspectRatio: '1/1', backgroundColor: '#ffffff', borderColor: '#e5e7eb', borderWidth: 2, borderStyle: 'solid', borderRadius: 6, marginBottom: 8, display: 'flex', alignItems: 'center', justifyContent: 'center', overflow: 'hidden', padding: 4 }}>
              <img src={`/game_tracker/public/platforms/${encodeURIComponent(p.name)}.png`} alt={p.name} style={{ maxWidth: '100%', maxHeight: '100%', objectFit: 'contain' }} />
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
    return (
      <div className="gamemodes-stats-grid" style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(125px, 1fr))', gap: 24, paddingRight: 24 }}>
        {list.map((gm) => (
          <div key={gm.name} style={{ display: 'flex', flexDirection: 'column', textAlign: 'center' }}>
            <div style={{ width: '100%', aspectRatio: '1/1', backgroundColor: '#ffffff', borderColor: '#e5e7eb', borderWidth: 2, borderStyle: 'solid', borderRadius: 6, marginBottom: 8, display: 'flex', alignItems: 'center', justifyContent: 'center', overflow: 'hidden', padding: 4, boxSizing: 'border-box' }}>
              <img src={`/game_tracker/public/game_modes/${encodeURIComponent(gm.name)}.png`} alt={gm.name} style={{ maxWidth: '100%', maxHeight: '100%', objectFit: 'contain' }} />
            </div>
            <strong style={{ fontSize: '0.9rem', marginBottom: 4, wordWrap: 'break-word', overflow: 'visible', whiteSpace: 'normal' }}>{gm.name}</strong>
            <span style={{ fontSize: '0.85rem', color: '#666' }}>{formatDuration(gm.minutes)}</span>
          </div>
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
      <h1>Stats</h1>
      
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

      {loading && <div>Loading…</div>}
      {error && <div style={{ color: '#dc2626' }}>{error}</div>}

      {!loading && !error && activeTab === 'month' && (
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

      {!loading && !error && activeTab === 'platform' && (
        <div>
          <section>
            <h2>Playtime by Platform in {thisYearLabel}</h2>
            <div className={styles.hint} style={{ fontWeight: 700, fontSize: '1.05rem', paddingBottom: 8, marginBottom: 12 }}>{formatDuration(yearPlatformMinutes)} total</div>
            {yearPlatforms.length === 0 ? <div className={styles.hint}>No platforms recorded this year.</div> : renderPlatforms(yearPlatforms)}
          </section>
        </div>
      )}

      {!loading && !error && activeTab === 'gamemode' && (
        <div>
          <section>
            <h2>Playtime by Game Mode in {thisYearLabel}</h2>
            <div className={styles.hint} style={{ fontWeight: 700, fontSize: '1.05rem', paddingBottom: 8, marginBottom: 12 }}>{formatDuration(yearGameModeMinutes)} total</div>
            {yearGameModes.length === 0 ? <div className={styles.hint}>No game modes recorded this year.</div> : renderGameModes(yearGameModes)}
          </section>
        </div>
      )}
    </div>
  )
}
