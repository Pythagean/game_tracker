import { HashRouter, Routes, Route, Link } from 'react-router-dom'
import { useEffect, useState } from 'react'
import AddGame from '@/pages/AddGame'
import AddSession from '@/pages/AddSession'
import Stats from '@/pages/Stats'
import Auth from '@/pages/Auth'
import { supabase } from '@/lib/supabase'
import appStyles from './App.module.css'

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

  const navBtnStyle = {
    display: 'inline-flex',
    gap: 8,
    alignItems: 'center',
    padding: '0.4rem 0.7rem',
    borderRadius: 6,
    border: '1px solid #e6e6e6',
    background: '#fff',
    color: '#374151',
    textDecoration: 'none',
    fontWeight: 600,
  }

  return (
    <HashRouter>
      <nav style={{ padding: '0.5rem 1rem', borderBottom: '1px solid #e2e8f0', fontFamily: 'system-ui, sans-serif', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
        <div style={{ display: 'flex', gap: 12, alignItems: 'center' }}>
          <Link to="/add-session" style={navBtnStyle} className={appStyles.navBtn}>
            <span style={{ fontSize: 16 }}>🕒</span>
            <span>Add Session</span>
          </Link>
          <Link to="/add-game" style={navBtnStyle} className={appStyles.navBtn}>
            <span style={{ fontSize: 16 }}>🎮</span>
            <span>Add Game</span>
          </Link>
          <Link to="/stats" style={navBtnStyle} className={appStyles.navBtn}>
            <span style={{ fontSize: 16 }}>📊</span>
            <span>Stats</span>
          </Link>
        </div>
        <div style={{ display: 'flex', gap: 12, alignItems: 'center' }}>
          {user ? (
            <div style={{ display: 'flex', gap: 8, alignItems: 'center' }}>
              <Link to="/auth" style={navBtnStyle} className={appStyles.navBtn}>
                <span style={{ fontSize: 16 }}>👤</span>
                <span className={appStyles.onlyIconMobile}>Account</span>
              </Link>
            </div>
          ) : (
            <Link to="/auth" style={navBtnStyle} className={appStyles.navBtn}>Sign in</Link>
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
    </HashRouter>
  )
}
