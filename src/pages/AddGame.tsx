import { useState, useCallback, useRef } from 'react'
import { searchIgdb, igdbCoverUrl, igdbReleaseDate } from '@/lib/igdb'
import { supabase } from '@/lib/supabase'
import type { IgdbGame } from '@/types/igdb'
import styles from './AddGame.module.css'

export default function AddGame() {
  const [query, setQuery] = useState('')
  const [results, setResults] = useState<IgdbGame[]>([])
  const [searching, setSearching] = useState(false)
  const [searchError, setSearchError] = useState<string | null>(null)
  const [selected, setSelected] = useState<IgdbGame | null>(null)
  const [saving, setSaving] = useState(false)
  const [saveError, setSaveError] = useState<string | null>(null)
  const [saveSuccess, setSaveSuccess] = useState(false)
  const debounceTimer = useRef<ReturnType<typeof setTimeout> | null>(null)

  const handleQueryChange = useCallback((value: string) => {
    setQuery(value)
    setSelected(null)
    setSaveSuccess(false)
    setSaveError(null)

    if (debounceTimer.current) clearTimeout(debounceTimer.current)

    if (value.trim().length < 2) {
      setResults([])
      return
    }

    debounceTimer.current = setTimeout(async () => {
      setSearching(true)
      setSearchError(null)
      try {
        const games = await searchIgdb(value)
        setResults(games)
      } catch (err) {
        setSearchError(err instanceof Error ? err.message : 'Search failed')
      } finally {
        setSearching(false)
      }
    }, 400)
  }, [])

  const handleSelect = useCallback((game: IgdbGame) => {
    setSelected(game)
    setResults([])
    setQuery(game.name)
  }, [])

  const handleSave = useCallback(async () => {
    if (!selected) return

    setSaving(true)
    setSaveError(null)
    setSaveSuccess(false)

    try {
      const {
        data: { user },
      } = await supabase.auth.getUser()

      if (!user) throw new Error('You must be logged in to add a game')

      const releaseDate = igdbReleaseDate(selected.first_release_date)

      // Upsert lookup rows for publisher, franchise, then insert the game
      const publisherName =
        selected.involved_companies?.find((c) => c.publisher)?.company.name ?? null
      const developerName =
        selected.involved_companies?.find((c) => c.developer)?.company.name ?? null
      const franchiseName = selected.franchises?.[0]?.name ?? null

      // Resolve / create publisher
      let publisherId: number | null = null
      if (publisherName) {
        const { data: pub } = await supabase
          .from('publishers')
          .upsert({ name: publisherName }, { onConflict: 'name' })
          .select('publisher_id')
          .single()
        publisherId = pub?.publisher_id ?? null
      }

      // Resolve / create franchise
      let franchiseId: number | null = null
      if (franchiseName) {
        const { data: fran } = await supabase
          .from('franchises')
          .upsert({ name: franchiseName }, { onConflict: 'name' })
          .select('franchise_id')
          .single()
        franchiseId = fran?.franchise_id ?? null
      }

      // Insert game
      const coverUrl = selected.cover?.url ? igdbCoverUrl(selected.cover.url) : null
      const { data: game, error: gameError } = await supabase
        .from('games')
        .insert({
          title: selected.name,
          igdb_id: selected.id,
          release_date: releaseDate?.toISOString().split('T')[0] ?? null,
          metacritic_score: null,
          cover_url: coverUrl,
          publisher_id: publisherId,
          franchise_id: franchiseId,
          user_id: user.id,
        })
        .select('game_id')
        .single()

      if (gameError) throw new Error(gameError.message)

      // Insert junction rows for genres, themes and developer (fire-and-forget upserts)
      if (selected.genres?.length) {
        for (const g of selected.genres) {
          const { data: genre } = await supabase
            .from('genres')
            .upsert({ name: g.name }, { onConflict: 'name' })
            .select('genre_id')
            .single()
          if (genre) {
            await supabase.from('game_genre').upsert({
              game_id: game!.game_id,
              genre_id: genre.genre_id,
            })
          }
        }
      }

      if (selected.themes?.length) {
        for (const t of selected.themes) {
          const { data: theme } = await supabase
            .from('themes')
            .upsert({ name: t.name }, { onConflict: 'name' })
            .select('theme_id')
            .single()
          if (theme) {
            await supabase.from('game_theme').upsert({
              game_id: game!.game_id,
              theme_id: theme.theme_id,
            })
          }
        }
      }

      if (developerName) {
        const { data: dev } = await supabase
          .from('developers')
          .upsert({ name: developerName }, { onConflict: 'name' })
          .select('developer_id')
          .single()
        if (dev) {
          await supabase.from('game_developer').upsert({
            game_id: game!.game_id,
            developer_id: dev.developer_id,
          })
        }
      }

      setSelected(null)
      setQuery('')
      setSaveSuccess(true)
    } catch (err) {
      setSaveError(err instanceof Error ? err.message : 'Failed to save game')
    } finally {
      setSaving(false)
    }
  }, [selected])

  return (
    <div className={styles.container}>
      <h1 className={styles.heading}>Add a Game</h1>

      <div className={styles.searchWrapper}>
        <input
          className={styles.input}
          type="text"
          placeholder="Search for a game title…"
          value={query}
          onChange={(e) => handleQueryChange(e.target.value)}
          autoComplete="off"
        />
        {searching && <p className={styles.hint}>Searching…</p>}
        {searchError && <p className={styles.error}>{searchError}</p>}

        {results.length > 0 && (
          <ul className={styles.results}>
            {results.map((game) => {
              const releaseYear = igdbReleaseDate(game.first_release_date)?.getFullYear()
              const cover = game.cover?.url ? igdbCoverUrl(game.cover.url) : null
              return (
                <li
                  key={game.id}
                  className={styles.resultItem}
                  onClick={() => handleSelect(game)}
                >
                  {cover && (
                    <img
                      className={styles.thumb}
                      src={cover}
                      alt={`${game.name} cover`}
                    />
                  )}
                  <span className={styles.resultName}>
                    {game.name}
                    {releaseYear && (
                      <span className={styles.year}> ({releaseYear})</span>
                    )}
                  </span>
                </li>
              )
            })}
          </ul>
        )}
      </div>

      {selected && (
        <div className={styles.preview}>
          <h2 className={styles.previewTitle}>{selected.name}</h2>

          <div className={styles.previewBody}>
            {selected.cover?.url && (
              <img
                className={styles.cover}
                src={igdbCoverUrl(selected.cover.url)}
                alt={`${selected.name} cover`}
              />
            )}

            <dl className={styles.details}>
              {igdbReleaseDate(selected.first_release_date) && (
                <>
                  <dt>Release date</dt>
                  <dd>{igdbReleaseDate(selected.first_release_date)!.toLocaleDateString()}</dd>
                </>
              )}
              {selected.franchises?.[0] && (
                <>
                  <dt>Franchise</dt>
                  <dd>{selected.franchises[0].name}</dd>
                </>
              )}
              {selected.involved_companies?.find((c) => c.developer) && (
                <>
                  <dt>Developer</dt>
                  <dd>{selected.involved_companies.find((c) => c.developer)!.company.name}</dd>
                </>
              )}
              {selected.involved_companies?.find((c) => c.publisher) && (
                <>
                  <dt>Publisher</dt>
                  <dd>{selected.involved_companies.find((c) => c.publisher)!.company.name}</dd>
                </>
              )}
              {selected.genres?.length && (
                <>
                  <dt>Genres</dt>
                  <dd>{selected.genres.map((g) => g.name).join(', ')}</dd>
                </>
              )}
              {selected.themes?.length && (
                <>
                  <dt>Themes</dt>
                  <dd>{selected.themes.map((t) => t.name).join(', ')}</dd>
                </>
              )}
            </dl>
          </div>

          <button
            className={styles.saveButton}
            onClick={handleSave}
            disabled={saving}
          >
            {saving ? 'Saving…' : 'Add to My Games'}
          </button>

          {saveError && <p className={styles.error}>{saveError}</p>}
        </div>
      )}

      {saveSuccess && (
        <p className={styles.success}>Game added successfully!</p>
      )}
    </div>
  )
}
