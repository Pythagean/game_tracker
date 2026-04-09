import { BrowserRouter, Routes, Route, Link } from 'react-router-dom'
import { useEffect, useState } from 'react'
import AddGame from '@/pages/AddGame'
import AddSession from '@/pages/AddSession'
import Stats from '@/pages/Stats'
import Auth from '@/pages/Auth'
import { supabase } from '@/lib/supabase'

export default function App() {
  const [user, setUser] = useState<any>(null)

  useEffect(() => {
    let mounted = true
    ;(async () => {
      const { data } = await supabase.auth.getUser()
      if (!mounted) return
      setUser(data.user)
    })()

    const { data: listener } = supabase.auth.onAuthStateChange((_event, session) => {
      setUser(session?.user ?? null)
    })

    return () => listener.subscription.unsubscribe()
  }, [])

  return (
    <BrowserRouter>
      <nav style={{ padding: '0.5rem 1rem', borderBottom: '1px solid #e2e8f0', fontFamily: 'system-ui, sans-serif', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
        <div style={{ display: 'flex', gap: 12, alignItems: 'center' }}>
          
          <Link to="/add-session" style={{ textDecoration: 'none', fontWeight: 600, color: '#6366f1' }}>
            + Add Session
          </Link>
          <Link to="/add-game" style={{ textDecoration: 'none', fontWeight: 600, color: '#6366f1' }}>
            + Add Game
          </Link>
          <Link to="/stats" style={{ textDecoration: 'none', fontWeight: 600, color: '#6366f1' }}>
            Stats
          </Link>
        </div>
        <div style={{ display: 'flex', gap: 12, alignItems: 'center' }}>
          {user ? (
            <div style={{ display: 'flex', gap: 8, alignItems: 'center' }}>
              <span style={{ color: '#374151' }}>{user.email}</span>
              <Link to="/auth" style={{ color: '#6366f1' }}>Account</Link>
            </div>
          ) : (
            <Link to="/auth" style={{ color: '#6366f1' }}>Sign in</Link>
          )}
        </div>
      </nav>
      <Routes>
        <Route path="/add-game" element={<AddGame />} />
        <Route path="/stats" element={<Stats />} />
        <Route path="/add-session" element={<AddSession />} />
        <Route path="/auth" element={<Auth />} />
        <Route path="/" element={<AddGame />} />
      </Routes>
    </BrowserRouter>
  )
}
