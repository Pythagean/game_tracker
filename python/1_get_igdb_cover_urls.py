import csv
import requests
import time
import os
import sys
import argparse

# ==========================================
# CONFIG
# ==========================================
TWITCH_TOKEN_URL = 'https://id.twitch.tv/oauth2/token'
IGDB_URL = "https://api.igdb.com/v4/games"


def get_twitch_token(client_id, client_secret):
    """Get a fresh Twitch OAuth token for IGDB API access"""
    r = requests.post(TWITCH_TOKEN_URL, data={
        'client_id': client_id,
        'client_secret': client_secret,
        'grant_type': 'client_credentials'
    })
    r.raise_for_status()
    return r.json()['access_token']


def get_cover_url(game_name, token, client_id):
    query = f'''
    search "{game_name}";
    fields name,cover.image_id;
    limit 1;
    '''

    headers = {
        "Client-ID": client_id,
        "Authorization": f"Bearer {token}"
    }

    response = requests.post(
        IGDB_URL,
        headers=headers,
        data=query
    )

    response.raise_for_status()

    results = response.json()

    if not results:
        return None

    game = results[0]

    if "cover" not in game:
        return None

    image_id = game["cover"].get("image_id")

    if not image_id:
        return None

    return f"https://images.igdb.com/igdb/image/upload/t_cover_big/{image_id}.jpg"


def main():
    p = argparse.ArgumentParser(description='Fetch IGDB cover URLs for games')
    p.add_argument('--input', '-i', default='games.csv', help='Input CSV file')
    p.add_argument('--output', '-o', default='games_with_covers.csv', help='Output CSV file')
    p.add_argument('--client-id', default=os.getenv('IGDB_CLIENT_ID'), help='IGDB Client ID (or set IGDB_CLIENT_ID env var)')
    p.add_argument('--client-secret', default=os.getenv('IGDB_CLIENT_SECRET'), help='IGDB Client Secret (or set IGDB_CLIENT_SECRET env var)')
    p.add_argument('--sleep', type=float, default=0.25, help='Sleep between requests (seconds)')
    args = p.parse_args()

    if not args.client_id or not args.client_secret:
        print('Set IGDB_CLIENT_ID and IGDB_CLIENT_SECRET env vars or pass --client-id/--client-secret', file=sys.stderr)
        sys.exit(1)

    # Get token once at the beginning
    print('Getting Twitch OAuth token...')
    token = get_twitch_token(args.client_id, args.client_secret)
    print('Token acquired!')

    rows = []

    with open(args.input, newline="", encoding="utf-8") as infile:
        reader = csv.DictReader(infile)
        total = sum(1 for _ in open(args.input)) - 1  # Count rows
        
        for i, row in enumerate(reader, 1):
            # Clean up None keys from malformed CSV rows
            row = {k: v for k, v in row.items() if k is not None}
            
            game_name = row.get("game_name")
            if not game_name:
                print(f"[{i}/{total}] ⚠ Skipping row with missing game_name")
                continue

            try:
                cover_url = get_cover_url(game_name, token, args.client_id)
                print(f"[{i}/{total}] ✓ {game_name}")

            except Exception as e:
                print(f"[{i}/{total}] ✗ {game_name}: {e}")
                cover_url = None

            row["cover_url"] = cover_url
            rows.append(row)

            # Be nice to the API
            time.sleep(args.sleep)

    if not rows:
        print("Error: No rows to write!")
        sys.exit(1)
    
    fieldnames = list(rows[0].keys())

    with open(args.output, "w", newline="", encoding="utf-8") as outfile:
        writer = csv.DictWriter(outfile, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(rows)

    print(f"\nDone! Results saved to {args.output}")


if __name__ == "__main__":
    main()