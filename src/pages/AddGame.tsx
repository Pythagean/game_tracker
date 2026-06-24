import { useState, useCallback, useRef, useEffect } from 'react'
import { searchIgdb, igdbCoverUrl, igdbReleaseDate } from '@/lib/igdb'
import { supabase, FIXED_USER_ID } from '@/lib/supabase'
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
  const [platforms, setPlatforms] = useState<{ platform_id: number; name: string; manufacturer: string }[]>([])
  const [selectedPlatformId, setSelectedPlatformId] = useState<number | null>(null)
  const [addingPlatform, setAddingPlatform] = useState(false)
  const [newPlatformName, setNewPlatformName] = useState('')
  const [newPlatformManufacturer, setNewPlatformManufacturer] = useState('')
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
    if (!selectedPlatformId && !addingPlatform) {
      setSaveError('Please select a platform or add a new one')
      return
    }

    setSaving(true)
    setSaveError(null)
    setSaveSuccess(false)

    try {
      const releaseDate = igdbReleaseDate(selected.first_release_date)

      // Upsert lookup rows for publishers, developers, franchise, then insert the game
      const publisherNames: string[] = (selected.involved_companies || [])
        .filter((c) => c.publisher)
        .map((c) => c.company?.name)
        .filter(Boolean) as string[]

      const developerNames: string[] = (selected.involved_companies || [])
        .filter((c) => c.developer)
        .map((c) => c.company?.name)
        .filter(Boolean) as string[]

      const franchiseName = selected.franchises?.[0]?.name ?? null

      // Resolve / create publishers (use the first publisher as the game's publisher_id)
      let publisherId: number | null = null
      if (publisherNames.length > 0) {
        // Upsert each publisher; capture the first returned id for the game's FK
        for (let i = 0; i < publisherNames.length; i++) {
          const name = publisherNames[i].trim()
          if (!name) continue
          const { data: pub } = await supabase
            .from('publishers')
            .upsert({ name }, { onConflict: 'name' })
            .select('publisher_id')
            .single()
          if (i === 0) publisherId = pub?.publisher_id ?? null
        }
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
          metacritic_score: selected.aggregated_rating ? Math.round(selected.aggregated_rating) : null,
          cover_url: coverUrl,
          publisher_id: publisherId,
          franchise_id: franchiseId,
          user_id: FIXED_USER_ID,
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

      // Resolve / create developers and link them
      if (developerNames.length > 0) {
        for (const nameRaw of developerNames) {
          const name = nameRaw.trim()
          if (!name) continue
          const { data: dev } = await supabase
            .from('developers')
            .upsert({ name }, { onConflict: 'name' })
            .select('developer_id')
            .single()
          if (dev) {
            await supabase.from('game_developer').upsert({
              game_id: game!.game_id,
              developer_id: dev.developer_id,
            })
          }
        }
      }

      // Ensure platform exists (upsert when user added a new platform)
      let platformIdToUse: number | null = selectedPlatformId
      if (addingPlatform && newPlatformName.trim()) {
        const { data: plat } = await supabase
          .from('platforms')
          .upsert({ name: newPlatformName.trim(), manufacturer: newPlatformManufacturer.trim() }, { onConflict: 'name' })
          .select('platform_id')
          .single()
        platformIdToUse = plat?.platform_id ?? null
      }

      // Link game -> platform
      if (platformIdToUse && game) {
        await supabase.from('game_platform').upsert({
          game_id: game.game_id,
          platform_id: platformIdToUse,
        })
      }

      setSelected(null)
      setQuery('')
      setSaveSuccess(true)
    } catch (err) {
      setSaveError(err instanceof Error ? err.message : 'Failed to save game')
    } finally {
      setSaving(false)
    }
  }, [selected, selectedPlatformId, addingPlatform, newPlatformName, newPlatformManufacturer])

  useEffect(() => {
    let mounted = true
    async function fetchPlatforms() {
      const { data } = await supabase.from('platforms').select('platform_id, name, manufacturer').order('name')
      if (!mounted) return
      setPlatforms((data as any) || [])
    }
    fetchPlatforms()
    return () => {
      mounted = false
    }
  }, [])

  // Auto-hide the success message after 2 seconds
  useEffect(() => {
    if (!saveSuccess) return
    const t = setTimeout(() => setSaveSuccess(false), 2000)
    return () => clearTimeout(t)
  }, [saveSuccess])

  async function handleAddPlatform() {
    if (!newPlatformName.trim()) {
      setSaveError('Platform name is required')
      return
    }
    setSaveError(null)
    const { data: plat, error } = await supabase
      .from('platforms')
      .upsert({ name: newPlatformName.trim(), manufacturer: newPlatformManufacturer.trim() }, { onConflict: 'name' })
      .select('platform_id, name, manufacturer')
      .single()

    if (error) {
      setSaveError(error.message)
      return
    }

    // refresh platforms list and select the newly created platform
    const { data } = await supabase.from('platforms').select('platform_id, name, manufacturer').order('name')
    setPlatforms((data as any) || [])
    setSelectedPlatformId(plat?.platform_id ?? null)
    setAddingPlatform(false)
    setNewPlatformName('')
    setNewPlatformManufacturer('')
  }

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

      {/* Platform selector: shown once a game is selected */}
      {selected && (
        <div className={styles.platformSection}>
          <label className={styles.fieldLabel}>Platform</label>
          {!addingPlatform && (
            <select
              value={selectedPlatformId ?? ''}
              onChange={(e) => {
                const v = e.target.value
                if (v === '__add__') {
                  setAddingPlatform(true)
                  setSelectedPlatformId(null)
                } else {
                  setSelectedPlatformId(v ? Number(v) : null)
                }
              }}
              className={`${styles.input} ${styles.platformSelect}`}
            >
              <option value="">Select platform...</option>
              {platforms.map((p) => (
                <option key={p.platform_id} value={p.platform_id}>{p.name} {p.manufacturer ? `(${p.manufacturer})` : ''}</option>
              ))}
              <option value="__add__">+ Add new platform</option>
            </select>
          )}

          {addingPlatform && (
            <div className={styles.addPlatformForm}>
              <input
                placeholder="Platform name (e.g. PS4, Switch)"
                value={newPlatformName}
                onChange={(e) => setNewPlatformName(e.target.value)}
                className={styles.input}
              />
              <input
                placeholder="Manufacturer (optional, e.g. Sony)"
                value={newPlatformManufacturer}
                onChange={(e) => setNewPlatformManufacturer(e.target.value)}
                className={styles.input}
              />
              <div style={{ display: 'flex', gap: 8, flexWrap: 'wrap' }}>
                <button onClick={handleAddPlatform} className={styles.saveButton}>Save platform</button>
                <button onClick={() => setAddingPlatform(false)} className={styles.secondaryButton}>Cancel</button>
              </div>
            </div>
          )}
        </div>
      )}

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