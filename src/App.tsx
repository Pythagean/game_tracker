import { HashRouter, Routes, Route, NavLink } from 'react-router-dom'
import AddGame from '@/pages/AddGame'
import AddSession from '@/pages/AddSession'
import Stats from '@/pages/Stats'
import Auth from '@/pages/Auth'
import Dashboard from '@/pages/Dashboard'
import Games from '@/pages/Games'
import appStyles from './App.module.css'

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
          <NavLink to="/games" className={navLinkClass}>
            <span style={{ fontSize: 14 }}>📚</span>
            <span className={appStyles.onlyIconMobile}>Games</span>
          </NavLink>
          <NavLink to="/stats" className={navLinkClass}>
            <span style={{ fontSize: 14 }}>📊</span>
            <span className={appStyles.onlyIconMobile}>Stats</span>
          </NavLink>
          <NavLink to="/dashboard" className={navLinkClass}>
            <span style={{ fontSize: 14 }}>📈</span>
            <span className={appStyles.onlyIconMobile}>Dashboard</span>
          </NavLink>
        </div>
        
      </nav>
      <Routes>
        <Route path="/add-session" element={<AddSession />} />
        <Route path="/add-game" element={<AddGame />} />
        <Route path="/games" element={<Games />} />
        <Route path="/stats" element={<Stats />} />
        <Route path="/auth" element={<Auth />} />
        <Route path="/dashboard" element={<Dashboard />} />
        <Route path="/" element={<AddSession />} />
      </Routes>
    </HashRouter>
  )
}