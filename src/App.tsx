import { HashRouter, Routes, Route, Link } from 'react-router-dom'
import AddGame from '@/pages/AddGame'
import AddSession from '@/pages/AddSession'
import Stats from '@/pages/Stats'
import Auth from '@/pages/Auth'
import Dashboard from '@/pages/Dashboard'
import appStyles from './App.module.css'

export default function App() {

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
        <div style={{ display: 'flex', gap: 8, alignItems: 'center' }}>
          <Link to="/add-session" style={navBtnStyle} className={appStyles.navBtn}>
            <span style={{ fontSize: 14 }}>🕒</span>
            <span className={appStyles.onlyIconMobile}>Add Session</span>
          </Link>
          <Link to="/add-game" style={navBtnStyle} className={appStyles.navBtn}>
            <span style={{ fontSize: 14 }}>🎮</span>
            <span className={appStyles.onlyIconMobile}>Add Game</span>
          </Link>
          <Link to="/stats" style={navBtnStyle} className={appStyles.navBtn}>
            <span style={{ fontSize: 14 }}>📊</span>
            <span className={appStyles.onlyIconMobile}>Stats</span>
          </Link>
          <Link to="/dashboard" style={navBtnStyle} className={appStyles.navBtn}>
            <span style={{ fontSize: 14 }}>📈</span>
            <span className={appStyles.onlyIconMobile}>Dashboard</span>
          </Link>
        </div>
        
      </nav>
      <Routes>
        <Route path="/add-session" element={<AddSession />} />
        <Route path="/add-game" element={<AddGame />} />
        <Route path="/stats" element={<Stats />} />
        <Route path="/auth" element={<Auth />} />
        <Route path="/dashboard" element={<Dashboard />} />
        <Route path="/" element={<AddSession />} />
      </Routes>
    </HashRouter>
  )
}
