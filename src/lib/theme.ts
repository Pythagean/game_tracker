import { useSyncExternalStore } from 'react'

export type Theme = 'dark' | 'light'

const STORAGE_KEY = 'game-tracker-theme'
const listeners = new Set<() => void>()

function readStoredTheme(): Theme {
  try {
    return localStorage.getItem(STORAGE_KEY) === 'light' ? 'light' : 'dark'
  } catch {
    return 'dark'
  }
}

function currentTheme(): Theme {
  return document.documentElement.dataset.theme === 'light' ? 'light' : 'dark'
}

/** Applies the saved theme to <html>. Call once before the first render to avoid a flash. */
export function initTheme() {
  document.documentElement.dataset.theme = readStoredTheme()
}

export function setTheme(theme: Theme) {
  document.documentElement.dataset.theme = theme
  try {
    localStorage.setItem(STORAGE_KEY, theme)
  } catch {
    // Storage unavailable (e.g. private mode); the theme still applies for this session.
  }
  listeners.forEach((l) => l())
}

export function useTheme(): [Theme, (theme: Theme) => void] {
  const theme = useSyncExternalStore(
    (cb) => {
      listeners.add(cb)
      return () => listeners.delete(cb)
    },
    currentTheme,
  )
  return [theme, setTheme]
}
