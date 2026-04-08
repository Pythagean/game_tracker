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
  const [games, setGames] = useState<{ game_id: number; title: string }[]>([])
  const [platforms, setPlatforms] = useState<{ platform_id: number; name: string }[]>([])

  const [selectedGameId, setSelectedGameId] = useState<number | null>(null)
  const [selectedPlatformId, setSelectedPlatformId] = useState<number | null>(null)
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
        .select('game_id, title')
        .eq('user_id', userId)
        .order('title')
      if (!mounted) return
      setGames((g as any) || [])

      const { data: p } = await supabase.from('platforms').select('platform_id, name').order('name')
      if (!mounted) return
      setPlatforms((p as any) || [])
    })()
    return () => { mounted = false }
  }, [])

  function changeDateBy(days: number) {
    const d = new Date(date)
    d.setDate(d.getDate() + days)
    setDate(formatDate(d))
  }

  function handleTimeChange(e: React.ChangeEvent<HTMLInputElement>) {
    setTime(e.target.value)
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
        start_date: date,
        start_time: time,
        duration_minutes: duration,
        user_id: userId,
      }).select('session_id').single()

      if (error) throw error
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
        <select className={styles.input} value={selectedGameId ?? ''} onChange={(e) => setSelectedGameId(e.target.value ? Number(e.target.value) : null)}>
          <option value="">Select game...</option>
          {games.map(g => <option key={g.game_id} value={g.game_id}>{g.title}</option>)}
        </select>
      </div>

      <div className={styles.row}>
        <div className={styles.label}>Platform</div>
        <select className={styles.input} value={selectedPlatformId ?? ''} onChange={(e) => setSelectedPlatformId(e.target.value ? Number(e.target.value) : null)}>
          <option value="">Select platform...</option>
          {platforms.map(p => <option key={p.platform_id} value={p.platform_id}>{p.name}</option>)}
        </select>
      </div>

      <div className={styles.row}>
        <div className={styles.label}>Date</div>
        <div className={styles.dateNav}>
          <button className={styles.smallBtn} onClick={() => changeDateBy(-1)}>-</button>
          <input type="date" className={styles.input} value={date} onChange={(e) => setDate(e.target.value)} />
          <button className={styles.smallBtn} onClick={() => changeDateBy(1)}>+</button>
        </div>
      </div>

      <div className={styles.row}>
        <div className={styles.label}>Start time</div>
        <input type="time" step={900} className={styles.input} value={time} onChange={handleTimeChange} />
      </div>

      <div className={styles.row}>
        <div className={styles.label}>Duration</div>
        <input type="number" min={15} step={15} className={styles.input} value={duration} onChange={(e) => setDuration(Number(e.target.value))} />
        <div className={styles.hint}>minutes (increments of 15)</div>
      </div>

      <div style={{ marginTop: 16 }}>
        <button className={styles.saveButton} onClick={handleSave} disabled={saving}>{saving ? 'Saving…' : 'Save session'}</button>
        {error && <div className={styles.error} style={{ marginTop: 8 }}>{error}</div>}
        {success && <div className={styles.success} style={{ marginTop: 8 }}>Session added</div>}
      </div>
    </div>
  )
}
