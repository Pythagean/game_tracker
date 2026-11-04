import { useEffect, useRef, useState } from 'react'
import { HashRouter, Routes, Route, NavLink } from 'react-router-dom'
import AddGame from '@/pages/AddGame'
import AddSession from '@/pages/AddSession'
import Log from '@/pages/Log'
import Auth from '@/pages/Auth'
import Dashboard from '@/pages/Dashboard'
import Games from '@/pages/Games'
import { useTheme } from '@/lib/theme'
import appStyles from './App.module.css'

function MenuButton() {
  const [open, setOpen] = useState(false)
  const [theme, setTheme] = useTheme()
  const ref = useRef<HTMLDivElement>(null)
  const isDark = theme === 'dark'

  useEffect(() => {
    if (!open) return
    const onPointerDown = (e: PointerEvent) => {
      if (ref.current && !ref.current.contains(e.target as Node)) setOpen(false)
    }
    const onKeyDown = (e: KeyboardEvent) => {
      if (e.key === 'Escape') setOpen(false)
    }
    document.addEventListener('pointerdown', onPointerDown)
    document.addEventListener('keydown', onKeyDown)
    return () => {
      document.removeEventListener('pointerdown', onPointerDown)
      document.removeEventListener('keydown', onKeyDown)
    }
  }, [open])

  return (
    <div className={appStyles.menu} ref={ref}>
      <button
        type="button"
        className={appStyles.menuButton}
        aria-label="Menu"
        aria-haspopup="menu"
        aria-expanded={open}
        onClick={() => setOpen((o) => !o)}
      >
        <svg width="18" height="18" viewBox="0 0 18 18" aria-hidden="true">
          <path d="M2 4.5h14M2 9h14M2 13.5h14" stroke="currentColor" strokeWidth="2" strokeLinecap="round" />
        </svg>
      </button>
      {open && (
        <div className={appStyles.menuPanel} role="menu">
          <button
            type="button"
            role="menuitemcheckbox"
            aria-checked={isDark}
            className={appStyles.menuItem}
            onClick={() => setTheme(isDark ? 'light' : 'dark')}
          >
            <span>Dark mode</span>
            <span className={`${appStyles.switch}${isDark ? ` ${appStyles.switchOn}` : ''}`} aria-hidden="true">
              <span className={appStyles.switchKnob} />
            </span>
          </button>
        </div>
      )}
    </div>
  )
}

export default function App() {
  const navLinkClass = ({ isActive }: { isActive: boolean }) =>
    `${appStyles.navBtn}${isActive ? ` ${appStyles.navBtnActive}` : ''}`

  return (
    <HashRouter>
      <nav className={appStyles.nav}>
        <div className={appStyles.navGroup}>
          <NavLink to="/add-session" className={navLinkClass}>
            <span style={{ fontSize: 14 }}>🕒</span>
            <span className={appStyles.onlyIconMobile}>Add Session</span>
          </NavLink>
          <NavLink to="/add-game" className={navLinkClass}>
            <span style={{ fontSize: 14 }}>🎮</span>
            <span className={appStyles.onlyIconMobile}>Add Game</span>
          </NavLink>
          <NavLink to="/log" className={navLinkClass}>
            <span style={{ fontSize: 14 }}>📋</span>
            <span className={appStyles.onlyIconMobile}>Log</span>
          </NavLink>
          <NavLink to="/games" className={navLinkClass}>
            <span style={{ fontSize: 14 }}>📚</span>
            <span className={appStyles.onlyIconMobile}>Games</span>
          </NavLink>
          
          <NavLink to="/dashboard" className={navLinkClass}>
            <span style={{ fontSize: 14 }}>📈</span>
            <span className={appStyles.onlyIconMobile}>Dashboard</span>
          </NavLink>
        </div>
        <MenuButton />
      </nav>
      <Routes>
        <Route path="/add-session" element={<AddSession />} />
        <Route path="/add-game" element={<AddGame />} />
        <Route path="/games" element={<Games />} />
        <Route path="/log" element={<Log />} />
        <Route path="/auth" element={<Auth />} />
        <Route path="/dashboard" element={<Dashboard />} />
        <Route path="/" element={<AddSession />} />
      </Routes>
    </HashRouter>
  )
}