import { useEffect, useState } from 'react'
import { supabase } from '@/lib/supabase'
import styles from './AddSession.module.css'

function formatDate(d: Date) {
  return d.toISOString().split('T')[0]
}

function roundTimeTo15(date = new Date()) {
  const ms = 1000 * 60 * 15
  return new Date(Math.ceil(date.getTime() / ms) * ms)
}

export default function AddSession() {
  const [games, setGames] = useState<{ game_id: number; title: string; cover_url?: string }[]>([])
  const [platforms, setPlatforms] = useState<{ platform_id: number; name: string }[]>([])
  const [players, setPlayers] = useState<{ player_id: number; name: string }[]>([])

  const [selectedGameId, setSelectedGameId] = useState<number | null>(null)
  const [selectedPlatformId, setSelectedPlatformId] = useState<number | null>(null)
  const [gameMode, setGameMode] = useState<string>('Singleplayer')
  const [controllerStyle, setControllerStyle] = useState<string>('Controller')
  const [selectedPlayedWithId, setSelectedPlayedWithId] = useState<number | null>(null)
  const [addingPlayer, setAddingPlayer] = useState(false)
  const [newPlayerName, setNewPlayerName] = useState('')
  const [date, setDate] = useState(() => formatDate(new Date()))
  const [time, setTime] = useState(() => {
    const t = roundTimeTo15(new Date())
    return t.toTimeString().slice(0,5)
  })
  const [duration, setDuration] = useState<number>(60)

  const [saving, setSaving] = useState(false)
  const [error, setError] = useState<string | null>(null)
  const [success, setSuccess] = useState(false)

  useEffect(() => {
    let mounted = true
    ;(async () => {
      const { data: userData } = await supabase.auth.getUser()
      const userId = userData.user?.id
      if (!userId) return

      const { data: g } = await supabase
        .from('games')
        .select('game_id, title, cover_url')
        .eq('user_id', userId)
        .order('title')
      if (!mounted) return
      setGames((g as any) || [])

      const { data: p } = await supabase.from('platforms').select('platform_id, name').order('name')
      if (!mounted) return
      setPlatforms((p as any) || [])

      const { data: pl } = await supabase.from('players').select('player_id, name').eq('user_id', userId).order('name')
      if (!mounted) return
      setPlayers((pl as any) || [])
    })()
    return () => { mounted = false }
  }, [])

  function changeDateBy(days: number) {
    const d = new Date(date)
    d.setDate(d.getDate() + days)
    setDate(formatDate(d))
  }

  function changeTimeBy(hours: number) {
    const [hh, mm] = time.split(':').map(Number)
    const dt = new Date()
    dt.setHours(hh, mm, 0, 0)
    dt.setHours(dt.getHours() + hours)
    // keep minutes aligned to 15
    const mins = Math.round(dt.getMinutes() / 15) * 15
    dt.setMinutes(mins)
    const hhStr = String(dt.getHours()).padStart(2, '0')
    const mmStr = String(dt.getMinutes()).padStart(2, '0')
    setTime(`${hhStr}:${mmStr}`)
  }

  function changeDurationBy(deltaMinutes: number) {
    setDuration((prev) => {
      const next = Math.max(15, prev + deltaMinutes)
      // snap to 15-minute increments
      const snapped = Math.round(next / 15) * 15
      return Math.max(15, snapped)
    })
  }

  function handleDurationBlur() {
    setDuration((prev) => Math.max(15, Math.round(prev / 15) * 15))
  }

  // When the selected game changes, try to load its associated platforms
  useEffect(() => {
    if (!selectedGameId) return
    let mounted = true
    ;(async () => {
      const { data: gp } = await supabase
        .from('game_platform')
        .select('platform_id')
        .eq('game_id', selectedGameId)

      if (!mounted) return
      const ids = (gp as any[] | null) || []
      if (ids.length > 0) {
        // pick the first platform as default
        setSelectedPlatformId(ids[0].platform_id)
      }
    })()
    return () => { mounted = false }
  }, [selectedGameId])

  function handleTimeChange(e: React.ChangeEvent<HTMLInputElement>) {
    setTime(e.target.value)
  }

  async function handleAddPlayer() {
    setError(null)
    if (!newPlayerName.trim()) { setError('Enter a name'); return }
    try {
      const { data: userData } = await supabase.auth.getUser()
      const userId = userData.user?.id
      if (!userId) throw new Error('You must be signed in')

      const { data, error } = await supabase.from('players').insert({ name: newPlayerName.trim(), user_id: userId }).select('player_id, name').single()
      if (error) throw error
      setPlayers(prev => [...prev, data as any])
      setSelectedPlayedWithId((data as any).player_id)
      setAddingPlayer(false)
      setNewPlayerName('')
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to add player')
    }
  }

  async function handleSave() {
    setError(null)
    if (!selectedGameId) { setError('Select a game'); return }
    if (!selectedPlatformId) { setError('Select a platform'); return }

    setSaving(true)
    try {
      const { data: userData } = await supabase.auth.getUser()
      const userId = userData.user?.id
      if (!userId) throw new Error('You must be signed in')

      const { data, error } = await supabase.from('sessions').insert({
        game_id: selectedGameId,
        platform_id: selectedPlatformId,
        game_mode: gameMode,
        controller_style: controllerStyle,
        start_date: date,
        start_time: time,
        duration_minutes: duration,
        user_id: userId,
      }).select('session_id').single()

      if (error) throw error
      const sessionId = (data as any).session_id
      // if multiplayer and a player selected, insert into session_player
      if ((gameMode === 'Local Multiplayer' || gameMode === 'Online Multiplayer') && selectedPlayedWithId) {
        const { error: spErr } = await supabase.from('session_player').insert({ session_id: sessionId, player_id: selectedPlayedWithId })
        if (spErr) throw spErr
      }
      setSuccess(true)
      // auto-hide
      setTimeout(() => setSuccess(false), 2000)
      // reset minimal fields
      setSelectedGameId(null)
      setSelectedPlatformId(null)
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to save')
    } finally { setSaving(false) }
  }

  return (
    <div className={styles.container}>
      <h1>Add Session</h1>

      <div className={styles.row}>
        <div className={styles.label}>Game</div>
        <div style={{ display: 'flex', gap: 12, alignItems: 'center', flex: 1 }}>
          <select className={styles.input} value={selectedGameId ?? ''} onChange={(e) => setSelectedGameId(e.target.value ? Number(e.target.value) : null)}>
            <option value="">Select game...</option>
            {games.map(g => <option key={g.game_id} value={g.game_id}>{g.title}</option>)}
          </select>
        </div>
      </div>

      {/* large cover preview (absolute, doesn't push layout) */}
      {selectedGameId && (() => {
        const g = games.find(x => x.game_id === selectedGameId)
        if (g?.cover_url) {
          const url = g.cover_url.replace(/^\/\//, 'https://')
          return <img className={styles.coverPreview} src={url} alt="cover" />
        }
        return null
      })()}

      <div className={styles.row}>
        <div className={styles.label}>Platform</div>
        <select className={styles.input} value={selectedPlatformId ?? ''} onChange={(e) => setSelectedPlatformId(e.target.value ? Number(e.target.value) : null)}>
          <option value="">Select platform...</option>
          {platforms.map(p => <option key={p.platform_id} value={p.platform_id}>{p.name}</option>)}
        </select>
      </div>

      <div className={styles.row}>
        <div className={styles.label}>Game Mode</div>
        <select className={styles.input} value={gameMode} onChange={(e) => setGameMode(e.target.value)}>
          <option>Singleplayer</option>
          <option>Local Multiplayer</option>
          <option>Online Multiplayer</option>
        </select>
      </div>

      {(gameMode === 'Local Multiplayer' || gameMode === 'Online Multiplayer') && (
        <div className={styles.row}>
          <div className={styles.label}>Played With</div>
          <div style={{ display: 'flex', gap: 8, alignItems: 'center', flex: 1 }}>
            <select className={styles.input} value={selectedPlayedWithId ?? ''} onChange={(e) => {
              const v = e.target.value
              if (v === '__add_new__') { setAddingPlayer(true); setSelectedPlayedWithId(null); return }
              setSelectedPlayedWithId(v ? Number(v) : null)
            }}>
              <option value="">Select player...</option>
              {players.map(pl => <option key={pl.player_id} value={pl.player_id}>{pl.name}</option>)}
              <option value="__add_new__">+ Add new player…</option>
            </select>
            {addingPlayer && (
              <div style={{ display: 'flex', gap: 8, alignItems: 'center' }}>
                <input className={styles.input} placeholder="Name" value={newPlayerName} onChange={(e) => setNewPlayerName(e.target.value)} />
                <button className={styles.smallBtn} onClick={handleAddPlayer}>Add</button>
                <button className={styles.smallBtn} onClick={() => { setAddingPlayer(false); setNewPlayerName('') }}>Cancel</button>
              </div>
            )}
          </div>
        </div>
      )}

      <div className={styles.row}>
        <div className={styles.label}>Controller</div>
        <select className={styles.input} value={controllerStyle} onChange={(e) => setControllerStyle(e.target.value)}>
          <option>Controller</option>
          <option>Keyboard and Mouse</option>
          <option>Handheld</option>
          <option>Phone</option>
        </select>
      </div>

      <div className={styles.row}>
        <div className={styles.label}>Date</div>
        <div className={styles.dateNav}>
          <button className={styles.smallBtn} onClick={() => changeDateBy(-1)}>‹</button>
          <input type="date" className={styles.input} value={date} onChange={(e) => setDate(e.target.value)} />
          <button className={styles.smallBtn} onClick={() => changeDateBy(1)}>›</button>
        </div>
      </div>

      <div className={styles.row}>
        <div className={styles.label}>Start time</div>
        <div className={styles.timeNav}>
          <button className={styles.smallBtn} onClick={() => changeTimeBy(-1)} aria-label="Decrease time by 1 hour">‹</button>
          <input type="time" step={900} className={styles.input} value={time} onChange={handleTimeChange} />
          <button className={styles.smallBtn} onClick={() => changeTimeBy(1)} aria-label="Increase time by 1 hour">›</button>
        </div>
      </div>

      <div className={styles.row}>
        <div className={styles.label}>Duration</div>
        <div className={styles.durationNav}>
          <button className={styles.smallBtn} onClick={() => changeDurationBy(-15)} aria-label="Decrease duration">‹</button>
          <input
            type="number"
            min={15}
            step={15}
            className={styles.durationInput}
            value={duration}
            onChange={(e) => setDuration(Number(e.target.value))}
            onBlur={handleDurationBlur}
          />
          <button className={styles.smallBtn} onClick={() => changeDurationBy(15)} aria-label="Increase duration">›</button>
          <div className={styles.hint}>minutes</div>
        </div>
      </div>

      <div style={{ marginTop: 16 }}>
        <button className={styles.saveButton} onClick={handleSave} disabled={saving}>{saving ? 'Saving…' : 'Save session'}</button>
        {error && <div className={styles.error} style={{ marginTop: 8 }}>{error}</div>}
        {success && <div className={styles.success} style={{ marginTop: 8 }}>Session added</div>}
      </div>
    </div>
  )
}
