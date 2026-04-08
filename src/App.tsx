import { BrowserRouter, Routes, Route, Link } from 'react-router-dom'
import AddGame from '@/pages/AddGame'

export default function App() {
  return (
    <BrowserRouter>
      <nav style={{ padding: '1rem', borderBottom: '1px solid #e2e8f0', fontFamily: 'system-ui, sans-serif' }}>
        <Link to="/add-game" style={{ textDecoration: 'none', fontWeight: 600, color: '#6366f1' }}>
          + Add Game
        </Link>
      </nav>
      <Routes>
        <Route path="/add-game" element={<AddGame />} />
        <Route path="/" element={<AddGame />} />
      </Routes>
    </BrowserRouter>
  )
}
