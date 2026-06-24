import { supabase } from '@/lib/supabase'
import type { IgdbGame } from '@/types/igdb'

const LOCAL_SEARCH_URL = (import.meta.env.VITE_SEARCH_FUNCTION_URL as string) || ''
const SUPABASE_ANON = (import.meta.env.VITE_SUPABASE_ANON_KEY as string) || ''

export async function searchIgdb(query: string): Promise<IgdbGame[]> {
  // If a local function URL is provided (useful for `supabase functions serve`),
  // call it directly from the browser and attach the anon key for testing.
  if (LOCAL_SEARCH_URL) {
    try {
      const res = await fetch(LOCAL_SEARCH_URL, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          // Use the anon/public key for quick local testing. For authenticated
          // behavior use a real user token instead.
          ...(SUPABASE_ANON ? { Authorization: `Bearer ${SUPABASE_ANON}` } : {}),
        },
        body: JSON.stringify({ query }),
      })

      if (!res.ok) {
        const text = await res.text()
        throw new Error(`Local edge function error: ${res.status} - ${text}`)
      }

      return (await res.json()) as IgdbGame[]
    } catch (err) {
      const message = err instanceof Error ? err.message : 'Local search failed'
      throw new Error(`${message}. Make sure VITE_SEARCH_FUNCTION_URL is set correctly.`)
    }
  }

  // Fallback: call the deployed Supabase Edge Function via the client
  try {
    const { data, error } = await supabase.functions.invoke('search-games', {
      body: { query },
      headers: {
        'Content-Type': 'application/json',
      },
    })

    if (error) {
      const errorMsg = typeof error === 'string' ? error : error.message || JSON.stringify(error)
      throw new Error(errorMsg)
    }
    
    if (!data) throw new Error('No data returned from search function')
    return data as IgdbGame[]
  } catch (err) {
    const message = err instanceof Error ? err.message : 'Search failed'
    throw new Error(`Failed to search games: ${message}`)
  }
}

/** Convert an IGDB cover URL to a proper https URL at a decent resolution */
export function igdbCoverUrl(url: string): string {
  return url.replace(/^\/\//, 'https://').replace('t_thumb', 't_cover_big')
}

/** Unix timestamp → JS Date */
export function igdbReleaseDate(timestamp?: number): Date | null {
  return timestamp ? new Date(timestamp * 1000) : null
}
