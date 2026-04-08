export interface IgdbGame {
  id: number
  name: string
  cover?: { url: string }
  first_release_date?: number // Unix timestamp
  aggregated_rating?: number
  genres?: { name: string }[]
  themes?: { name: string }[]
  franchises?: { name: string }[]
  involved_companies?: {
    developer: boolean
    publisher: boolean
    company: { name: string }
  }[]
}
