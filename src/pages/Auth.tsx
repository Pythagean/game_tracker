import { useState, useEffect } from 'react'
import { supabase } from '@/lib/supabase'

export default function Auth() {
  const [email, setEmail] = useState('')
  const [message, setMessage] = useState<string | null>(null)
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

    return () => {
      mounted = false
      listener.subscription.unsubscribe()
    }
  }, [])

  async function handleSignIn() {
    setMessage(null)
    if (!email || email.indexOf('@') === -1) {
      setMessage('Please enter a valid email')
      return
    }

    const { error } = await supabase.auth.signInWithOtp({
      email,
      options: { emailRedirectTo: window.location.origin },
    })
    if (error) setMessage(error.message)
    else setMessage('Check your email for the magic link to sign in')
  }

  async function handleSignOut() {
    await supabase.auth.signOut()
    setMessage('Signed out')
  }

  return (
    <div style={{ maxWidth: 420, margin: '2rem auto', fontFamily: 'system-ui, sans-serif' }}>
      <h2 style={{ marginBottom: 12 }}>Sign In</h2>

      {user ? (
        <div>
          <p>Signed in as <strong>{user.email}</strong></p>
          <button onClick={handleSignOut} style={{ padding: '0.5rem 0.75rem', borderRadius: 6, background: '#ef4444', color: '#fff', border: 'none' }}>Sign out</button>
        </div>
      ) : (
        <div style={{ display: 'grid', gap: 8 }}>
          <input
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            placeholder="Your email"
            style={{ padding: 8, borderRadius: 6, border: '1px solid #ccc' }}
          />
          <div style={{ display: 'flex', gap: 8 }}>
            <button onClick={handleSignIn} style={{ padding: '0.5rem 0.75rem', borderRadius: 6, background: '#6366f1', color: '#fff', border: 'none' }}>Send magic link</button>
          </div>
        </div>
      )}

      {message && <p style={{ marginTop: 12 }}>{message}</p>}
    </div>
  )
}
