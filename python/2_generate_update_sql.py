import csv

INPUT_CSV = "games_with_covers.csv"
OUTPUT_SQL = "update_game_covers.sql"


def escape_sql(value: str) -> str:
    """Escape single quotes for SQL strings."""
    if value is None:
        return None
    return value.replace("'", "''")


def main():
    sql_lines = []

    with open(INPUT_CSV, newline="", encoding="utf-8") as infile:
        reader = csv.DictReader(infile)

        for row in reader:
            game_name = row.get("game_name")
            cover_url = row.get("cover_url")

            # Skip if missing or empty
            if not game_name or not cover_url or cover_url.strip() == "":
                continue

            game_name_escaped = escape_sql(game_name)
            cover_url_escaped = escape_sql(cover_url)

            sql_lines.append(
                f"UPDATE games\n"
                f"SET cover_url = '{cover_url_escaped}'\n"
                f"WHERE title = '{game_name_escaped}';"
            )

    with open(OUTPUT_SQL, "w", encoding="utf-8") as outfile:
        outfile.write("\n\n".join(sql_lines))

    print(f"Done! Wrote {len(sql_lines)} update statements to {OUTPUT_SQL}")


if __name__ == "__main__":
    main()