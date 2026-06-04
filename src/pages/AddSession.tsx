import { useEffect, useState, useRef } from 'react'
import { useNavigate } from 'react-router-dom'
import { supabase, FIXED_USER_ID } from '@/lib/supabase'
import styles from './AddSession.module.css'

function formatIsoDate(d: Date) {
  const yyyy = d.getFullYear()
  const mm = String(d.getMonth() + 1).padStart(2, '0')
  const dd = String(d.getDate()).padStart(2, '0')
  return `${yyyy}-${mm}-${dd}`
}

function isoToDisplay(iso: string) {
  if (!iso) return ''
  const [y, m, d] = iso.split('-')
  return `${d}/${m}/${y}`
}

function displayToIso(display: string) {
  const match = display.match(/^(\d{2})\/(\d{2})\/(\d{4})$/)
  if (!match) return null
  const [, d, m, y] = match
  return `${y}-${m}-${d}`
}

function roundTimeTo15(date = new Date()) {
  const ms = 1000 * 60 * 15
  return new Date(Math.floor(date.getTime() / ms) * ms)
}

export default function AddSession() {
  const [games, setGames] = useState<{ game_id: number; title: string; cover_url?: string; last_played?: number }[]>([])
  const [platforms, setPlatforms] = useState<{ platform_id: number; name: string }[]>([])
  const [players, setPlayers] = useState<{ player_id: number; name: string; last_played?: string | null }[]>([])

  const [selectedGameId, setSelectedGameId] = useState<number | null>(null)
  const [showGamePicker, setShowGamePicker] = useState(false)
  const [focusedGameIndex, setFocusedGameIndex] = useState<number | null>(null)
  const [selectedPlatformId, setSelectedPlatformId] = useState<number | null>(null)
  const [gameMode, setGameMode] = useState<string>('Singleplayer')
  const [controllerStyle, setControllerStyle] = useState<string>('Controller')
  const [selectedPlayedWithIds, setSelectedPlayedWithIds] = useState<number[]>([])
  const [addingPlayer, setAddingPlayer] = useState(false)
  const [newPlayerName, setNewPlayerName] = useState('')
  const [showPlayerDropdown, setShowPlayerDropdown] = useState(false)
  const [date, setDate] = useState(() => formatIsoDate(new Date()))
  const [dateInput, setDateInput] = useState(() => isoToDisplay(formatIsoDate(new Date())))
  const [time, setTime] = useState(() => {
    const t = roundTimeTo15(new Date())
    return t.toTimeString().slice(0,5)
  })
  const [duration, setDuration] = useState<number>(60)

  const [saving, setSaving] = useState(false)
  const [error, setError] = useState<string | null>(null)
  const [success, setSuccess] = useState(false)

  useEffect(() => {
    console.log('AddSession mounted - selectedGameId:', selectedGameId, 'selectedPlatformId:', selectedPlatformId)
  }, [])

  useEffect(() => {
    let mounted = true
    ;(async () => {
      const userId = FIXED_USER_ID

      const { data: g } = await supabase
        .from('games')
        .select('game_id, title, cover_url, last_played_at')
        .eq('user_id', userId)
      if (!mounted) return

      // Use `last_played_at` from the games row (if present) to drive ordering
      let gamesList = (g as any) || []
      gamesList = gamesList.map((item: any) => ({
        ...item,
        last_played: item.last_played_at ? new Date(item.last_played_at).getTime() : 0,
      }))
      gamesList.sort((a: any, b: any) => {
        const la = a.last_played ?? 0
        const lb = b.last_played ?? 0
        if (la === lb) return String(a.title).localeCompare(String(b.title))
        return lb - la
      })

      setGames(gamesList)

      const { data: p } = await supabase.from('platforms').select('platform_id, name').order('name')
      if (!mounted) return
      setPlatforms((p as any) || [])

      const { data: pl } = await supabase.from('players').select('player_id, name').eq('user_id', userId)
      if (!mounted) return

      // Fetch session_player joined with sessions to find last-played date per player
      const { data: spRows } = await supabase
        .from('session_player')
        .select('player_id, sessions(start_date)')
      if (!mounted) return

      // Build a map of player_id → max start_date
      const lastPlayedMap = new Map<number, string>()
      for (const row of (spRows as any[]) || []) {
        const date = row.sessions?.start_date as string | undefined
        const pid = row.player_id as number
        if (date && (!lastPlayedMap.has(pid) || date > lastPlayedMap.get(pid)!)) {
          lastPlayedMap.set(pid, date)
        }
      }

      let playersList = ((pl as any[]) || []).map((p: any) => ({
        ...p,
        last_played: lastPlayedMap.get(p.player_id) ?? null,
      }))
      playersList.sort((a: any, b: any) => {
        if (!a.last_played && !b.last_played) return String(a.name).localeCompare(String(b.name))
        if (!a.last_played) return 1
        if (!b.last_played) return -1
        return b.last_played.localeCompare(a.last_played)
      })
      setPlayers(playersList)
    })()
    return () => { mounted = false }
  }, [])

  // close game picker when clicking outside
  const pickerRef = useRef<HTMLDivElement | null>(null)
  const gameListRef = useRef<HTMLDivElement | null>(null)
  const gameSearchRef = useRef<HTMLInputElement | null>(null)
  const hiddenDateRef = useRef<HTMLInputElement | null>(null)
  const navigate = useNavigate()
  useEffect(() => {
    function onDoc(e: MouseEvent) {
      if (!pickerRef.current) return
      if (!pickerRef.current.contains(e.target as Node)) setShowGamePicker(false)
    }
    document.addEventListener('click', onDoc)
    return () => document.removeEventListener('click', onDoc)
  }, [])

  useEffect(() => {
    if (!showGamePicker) return
    // default focused index when opening (respect selected game if present)
    const idx = selectedGameId ? games.findIndex(g => g.game_id === selectedGameId) : 0
    setFocusedGameIndex(idx >= 0 ? idx : 0)
    // move keyboard focus into the search input so typing filters immediately
    setTimeout(() => {
      gameSearchRef.current?.focus()
    }, 0)
  }, [showGamePicker, selectedGameId, games])

  // filtered games based on search term
  const [gameSearch, setGameSearch] = useState('')
  const filteredGames = games.filter(g => g.title.toLowerCase().includes(gameSearch.toLowerCase()))

  function changeDateBy(days: number) {
    const d = new Date(date)
    d.setDate(d.getDate() + days)
    const newIso = formatIsoDate(d)
    setDate(newIso)
    setDateInput(isoToDisplay(newIso))
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

  function changeTimeByMinutes(deltaMinutes: number) {
    const [hh, mm] = time.split(':').map(Number)
    const dt = new Date()
    dt.setHours(hh, mm, 0, 0)
    dt.setMinutes(dt.getMinutes() + deltaMinutes)
    // snap to 15-minute increments
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
      const userId = FIXED_USER_ID

      const { data, error } = await supabase.from('players').insert({ name: newPlayerName.trim(), user_id: userId }).select('player_id, name').single()
      if (error) throw error
      setPlayers(prev => [...prev, data as any])
      setSelectedPlayedWithIds(prev => [...prev, (data as any).player_id])
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
      const userId = FIXED_USER_ID

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
      // if multiplayer and players selected, insert into session_player
      if ((gameMode === 'Local Multiplayer' || gameMode === 'Online Multiplayer') && selectedPlayedWithIds.length > 0) {
        const rows = selectedPlayedWithIds.map(pid => ({ session_id: sessionId, player_id: pid }))
        const { error: spErr } = await supabase.from('session_player').insert(rows)
        if (spErr) throw spErr
      }
      setSuccess(true)
      // auto-hide
      setTimeout(() => setSuccess(false), 2000)
      // keep form values so user can add multiple sessions for the same game
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to save')
    } finally { setSaving(false) }
  }
  const saveDisabled = Boolean(saving || !selectedGameId || !selectedPlatformId)
  console.log('AddSession saveDisabled:', saveDisabled, { saving, selectedGameId, selectedPlatformId })

  return (
    <div className={styles.container}>
      <h1>Add Session</h1>

      <div className={`${styles.row} ${styles.pickerRow}`} ref={pickerRef}>
        <div className={styles.label}>Game</div>
        <div style={{ display: 'flex', gap: 12, alignItems: 'center', flex: 1 }}>
          <button
            type="button"
            className={styles.gamePickerButton}
            onClick={() => setShowGamePicker(v => !v)}
            onKeyDown={(e) => {
              if (e.key === 'ArrowDown') { e.preventDefault(); setShowGamePicker(true); setFocusedGameIndex(0) }
              if (e.key === 'ArrowUp') { e.preventDefault(); setShowGamePicker(true); setFocusedGameIndex(games.length - 1) }
              if (e.key === 'Escape') { setShowGamePicker(false) }
            }}
            aria-haspopup="listbox"
            aria-expanded={showGamePicker}
          >
            {selectedGameId ? (
              (() => {
                const g = games.find(x => x.game_id === selectedGameId)
                return g ? (
                  <span style={{ display: 'inline-flex', gap: 8, alignItems: 'center' }}>
                    {g.cover_url ? <img src={g.cover_url.replace(/^\/\//, 'https://')} alt="thumb" className={styles.thumbSmall} /> : null}
                      <span><strong>{g.title}</strong></span>
                  </span>
                ) : 'Select game...'
              })()
            ) : 'Select game...'}
            <span style={{ marginLeft: 8, opacity: 0.7 }}>▾</span>
          </button>

          {showGamePicker && (
            <div ref={gameListRef} className={styles.gameList} role="listbox">
              <input
                ref={gameSearchRef}
                className={styles.input}
                placeholder="Search games..."
                value={gameSearch}
                onChange={(e) => { setGameSearch(e.target.value); setFocusedGameIndex(0) }}
                onKeyDown={(e) => {
                  if (e.key === 'ArrowDown') { e.preventDefault(); setFocusedGameIndex((prev) => (prev === null ? 0 : Math.min((filteredGames.length - 1), prev + 1))); return }
                  if (e.key === 'ArrowUp') { e.preventDefault(); setFocusedGameIndex((prev) => (prev === null ? 0 : Math.max(0, prev - 1))); return }
                  if (e.key === 'Escape') { setShowGamePicker(false); return }
                  if (e.key === 'Enter' && focusedGameIndex !== null) {
                    const sel = filteredGames[focusedGameIndex]
                    if (sel) { setSelectedGameId(sel.game_id); setShowGamePicker(false); setGameSearch('') }
                  }
                }}
              />

              {filteredGames.map((g, i) => (
                <div
                  key={g.game_id}
                  className={styles.gameItem + (focusedGameIndex === i ? ` ${styles.gameItemFocused}` : '')}
                  role="option"
                  aria-selected={selectedGameId === g.game_id}
                  onClick={() => { setSelectedGameId(g.game_id); setShowGamePicker(false); setGameSearch('') }}
                  onMouseEnter={() => setFocusedGameIndex(i)}
                >
                  {g.cover_url ? <img src={g.cover_url.replace(/^\/\//, 'https://')} alt="cover" className={styles.thumbSmall} /> : <div className={styles.thumbPlaceholder} />}
                  <div style={{ marginLeft: 8 }}><strong>{g.title}</strong></div>
                </div>
              ))}
            </div>
          )}
          {/* Add Game quick link */}
          <button type="button" className={styles.addGameBtn} onClick={() => navigate('/add-game')}>Add a New Game</button>
        </div>
      </div>

      <div className={styles.formWithCover}>
        <div className={styles.formLeft}>
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
            <div className={styles.playerSelect}>
              <button
                type="button"
                className={styles.dropdownToggle}
                onClick={() => setShowPlayerDropdown(v => !v)}
                aria-haspopup="listbox"
                aria-expanded={showPlayerDropdown}
              >
                {selectedPlayedWithIds.length === 0 ? 'Select players...' : players.filter(p => selectedPlayedWithIds.includes(p.player_id)).slice(0,3).map(p => p.name).join(', ')}
                <span style={{ marginLeft: 8, opacity: 0.7 }}>▾</span>
              </button>

              {showPlayerDropdown && (
                <div className={styles.playerDropdownMenu} role="listbox" aria-multiselectable="true">
                  {players.map(pl => {
                    const selected = selectedPlayedWithIds.includes(pl.player_id)
                    return (
                      <label key={pl.player_id} className={styles.dropdownItem}>
                        <input
                          type="checkbox"
                          checked={selected}
                          onChange={() => setSelectedPlayedWithIds(prev => prev.includes(pl.player_id) ? prev.filter(id => id !== pl.player_id) : [...prev, pl.player_id])}
                        />
                        <span style={{ marginLeft: 8 }}>{pl.name}</span>
                      </label>
                    )
                  })}
                  <div style={{ borderTop: '1px solid #e5e7eb', marginTop: 8, paddingTop: 8 }}>
                    <button type="button" className={styles.pillAdd} onClick={() => { setAddingPlayer(true); setShowPlayerDropdown(false) }}>+ Add new player…</button>
                  </div>
                </div>
              )}
            </div>

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
          <input
            type="text"
            className={`${styles.input} ${styles.dateInput}`}
            value={dateInput}
            onChange={(e) => {
              setDateInput(e.target.value)
              const iso = displayToIso(e.target.value)
              if (iso) setDate(iso)
            }}
            onBlur={() => setDateInput(isoToDisplay(date))}
            placeholder="dd/mm/yyyy"
          />
          <input
            ref={hiddenDateRef}
            type="date"
            style={{ position: 'absolute', opacity: 0, pointerEvents: 'none', width: 0, height: 0 }}
            value={date}
            onChange={(e) => {
              const iso = e.target.value
              if (iso) { setDate(iso); setDateInput(isoToDisplay(iso)) }
            }}
          />
          <button className={styles.smallBtn} onClick={() => changeDateBy(1)}>›</button>
          <button className={styles.smallBtn} onClick={() => hiddenDateRef.current?.showPicker()} aria-label="Open calendar">📅</button>
        </div>
      </div>

      <div className={styles.row}>
        <div className={styles.label}>Start time</div>
        <div className={styles.timeNav}>
          <button className={styles.smallBtn} onClick={() => changeTimeBy(-1)} aria-label="Decrease time by 1 hour">«</button>
          <button className={styles.smallBtn} onClick={() => changeTimeByMinutes(-15)} aria-label="Decrease time by 15 minutes">‹</button>
          <input type="time" step={900} className={styles.input} value={time} onChange={handleTimeChange} />
          <button className={styles.smallBtn} onClick={() => changeTimeByMinutes(15)} aria-label="Increase time by 15 minutes">›</button>
          <button className={styles.smallBtn} onClick={() => changeTimeBy(1)} aria-label="Increase time by 1 hour">»</button>
          <div className={styles.amPmToggle}>
            <button
              className={`${styles.amPmBtn} ${parseInt(time.split(':')[0]) < 12 ? styles.amPmActive : ''}`}
              onClick={() => { const hh = parseInt(time.split(':')[0]); if (hh >= 12) setTime(`${String(hh - 12).padStart(2, '0')}:${time.split(':')[1]}`) }}
            >am</button>
            <button
              className={`${styles.amPmBtn} ${parseInt(time.split(':')[0]) >= 12 ? styles.amPmActive : ''}`}
              onClick={() => { const hh = parseInt(time.split(':')[0]); if (hh < 12) setTime(`${String(hh + 12).padStart(2, '0')}:${time.split(':')[1]}`) }}
            >pm</button>
          </div>
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
        <button
          className={styles.saveButton}
          onClick={handleSave}
          disabled={saveDisabled}
        >
          {saving ? 'Saving…' : 'Save session'}
        </button>
        {error && <div className={styles.error} style={{ marginTop: 8 }}>{error}</div>}
        {success && <div className={styles.success} style={{ marginTop: 8 }}>Session added</div>}
      </div>
        </div>
        {/* cover column: shown to the right of Platform+ fields, under the Game picker */}
        <div className={styles.coverColumn} aria-hidden={!selectedGameId}>
          {selectedGameId && (() => {
            const g = games.find(x => x.game_id === selectedGameId)
            if (g?.cover_url) {
              const url = g.cover_url.replace(/^\/\//, 'https://')
              return <img className={styles.coverPreview} src={url} alt="cover" />
            }
            return null
          })()}
        </div>
      </div>
    </div>
  )
}
