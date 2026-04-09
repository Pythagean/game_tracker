-- Generated IGDB populate script
BEGIN;

INSERT INTO public.publishers (name) VALUES ('Majesco Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Psychonauts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Double Fine Productions') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('THQ') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Double Fine Productions') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Majesco Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Psychonauts', (SELECT franchise_id FROM public.franchises WHERE name = 'Psychonauts' LIMIT 1), '2005-04-19', (SELECT publisher_id FROM public.publishers WHERE name = 'Majesco Entertainment' LIMIT 1), 85, 'https://images.igdb.com/igdb/image/upload/t_thumb/cob7ms.jpg', 1339 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1339), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1339), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1339), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1339), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1339), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1339), (SELECT developer_id FROM public.developers WHERE name = 'Double Fine Productions' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Maxint LLC') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Soundboxing', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2016-09-29', (SELECT publisher_id FROM public.publishers WHERE name = 'Maxint LLC' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/e1dzdjtujxn1gqfvuobu.jpg', 31625 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 31625), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Aspyr Media, Inc.') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Star Wars') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Pandemic Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Savage Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('LucasArts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Activision') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Star Wars: Battlefront 2 (Classic, 2005)', (SELECT franchise_id FROM public.franchises WHERE name = 'Star Wars' LIMIT 1), '2005-10-31', (SELECT publisher_id FROM public.publishers WHERE name = 'Aspyr Media, Inc.' LIMIT 1), 76, 'https://images.igdb.com/igdb/image/upload/t_thumb/cob1g4.jpg', 142 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 142), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 142), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 142), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 142), (SELECT developer_id FROM public.developers WHERE name = 'Pandemic Studios' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 142), (SELECT developer_id FROM public.developers WHERE name = 'Savage Entertainment' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Legend of Zelda') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Sandbox') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Nintendo EPD Production Group No. 3') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Legend of Zelda: Breath of the Wild', (SELECT franchise_id FROM public.franchises WHERE name = 'Legend of Zelda' LIMIT 1), '2017-03-03', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), 98, 'https://images.igdb.com/igdb/image/upload/t_thumb/co3p2d.jpg', 7346 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 7346), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 7346), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 7346), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 7346), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 7346), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 7346), (SELECT theme_id FROM public.themes WHERE name = 'Sandbox' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 7346), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 7346), (SELECT developer_id FROM public.developers WHERE name = 'Nintendo EPD Production Group No. 3' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Studio MDHR') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Studio MDHR') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Studio MDHR') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Cuphead', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2017-09-29', (SELECT publisher_id FROM public.publishers WHERE name = 'Studio MDHR' LIMIT 1), 87, 'https://images.igdb.com/igdb/image/upload/t_thumb/co62ao.jpg', 9061 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9061), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9061), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9061), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9061), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9061), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9061), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9061), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9061), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9061), (SELECT developer_id FROM public.developers WHERE name = 'Studio MDHR' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Whirlybird Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Business') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Party') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Whirlybird Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Whirlybird Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'VR The Diner Duo', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2016-11-02', (SELECT publisher_id FROM public.publishers WHERE name = 'Whirlybird Games' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/xyg8nmkxicbuiv5dtroa.jpg', 25118 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25118), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25118), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25118), (SELECT theme_id FROM public.themes WHERE name = 'Business' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25118), (SELECT theme_id FROM public.themes WHERE name = 'Party' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25118), (SELECT developer_id FROM public.developers WHERE name = 'Whirlybird Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Epic Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Tencent Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Tencent Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Fortnite', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2018-01-10', (SELECT publisher_id FROM public.publishers WHERE name = 'Epic Games' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/co5ztm.jpg', 231090 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 231090), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 231090), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 231090), (SELECT developer_id FROM public.developers WHERE name = 'Tencent Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Slightly Mad Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Racing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Sport') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Slightly Mad Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Slightly Mad Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Bandai Namco Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Project CARS', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2015-05-07', (SELECT publisher_id FROM public.publishers WHERE name = 'Slightly Mad Studios' LIMIT 1), 82, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2r07.jpg', 5319 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 5319), (SELECT genre_id FROM public.genres WHERE name = 'Racing' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 5319), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 5319), (SELECT genre_id FROM public.genres WHERE name = 'Sport' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 5319), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 5319), (SELECT developer_id FROM public.developers WHERE name = 'Slightly Mad Studios' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Paradox Interactive AB') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Cities') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Business') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Sandbox') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Colossal Order') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Paradox Interactive') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Cities: Skylines', (SELECT franchise_id FROM public.franchises WHERE name = 'Cities' LIMIT 1), '2015-03-10', (SELECT publisher_id FROM public.publishers WHERE name = 'Paradox Interactive AB' LIMIT 1), 76, 'https://images.igdb.com/igdb/image/upload/t_thumb/coaas0.jpg', 9066 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9066), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9066), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9066), (SELECT theme_id FROM public.themes WHERE name = 'Business' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9066), (SELECT theme_id FROM public.themes WHERE name = 'Sandbox' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9066), (SELECT developer_id FROM public.developers WHERE name = 'Colossal Order' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Mario') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Nintendo Entertainment Analysis & Development') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Playtronic') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Gradiente') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Hyundai') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Super Mario World', (SELECT franchise_id FROM public.franchises WHERE name = 'Mario' LIMIT 1), '1990-11-21', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), 100, 'https://images.igdb.com/igdb/image/upload/t_thumb/co8lo8.jpg', 1070 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1070), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1070), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1070), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1070), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1070), (SELECT developer_id FROM public.developers WHERE name = 'Nintendo Entertainment Analysis & Development' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Mario') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Sandbox') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Nintendo EPD Production Group No. 8') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Super Mario: Odyssey', (SELECT franchise_id FROM public.franchises WHERE name = 'Mario' LIMIT 1), '2017-10-27', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), 97, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1mxf.jpg', 26758 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26758), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26758), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26758), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26758), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26758), (SELECT theme_id FROM public.themes WHERE name = 'Sandbox' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26758), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26758), (SELECT developer_id FROM public.developers WHERE name = 'Nintendo EPD Production Group No. 8' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Sealost Interactive LLC') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Fighting') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Sport') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'The Thrill of the Fight', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2016-07-01', (SELECT publisher_id FROM public.publishers WHERE name = 'Sealost Interactive LLC' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/co63lk.jpg', 174558 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 174558), (SELECT genre_id FROM public.genres WHERE name = 'Fighting' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 174558), (SELECT genre_id FROM public.genres WHERE name = 'Sport' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Oculus Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Lone Echo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Ready At Dawn') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Oculus Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Lone Echo', (SELECT franchise_id FROM public.franchises WHERE name = 'Lone Echo' LIMIT 1), '2017-07-20', (SELECT publisher_id FROM public.publishers WHERE name = 'Oculus Studios' LIMIT 1), 89, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2olq.jpg', 24917 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 24917), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 24917), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 24917), (SELECT developer_id FROM public.developers WHERE name = 'Ready At Dawn' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Team Cherry') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Hollow Knight') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Team Cherry') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Team Cherry') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Hollow Knight', (SELECT franchise_id FROM public.franchises WHERE name = 'Hollow Knight' LIMIT 1), '2017-02-24', (SELECT publisher_id FROM public.publishers WHERE name = 'Team Cherry' LIMIT 1), 91, 'https://images.igdb.com/igdb/image/upload/t_thumb/cobfzp.jpg', 14593 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 14593), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 14593), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 14593), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 14593), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 14593), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 14593), (SELECT developer_id FROM public.developers WHERE name = 'Team Cherry' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Oculus Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Lone Echo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Sport') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Ready At Dawn') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Oculus Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Echo Arena', (SELECT franchise_id FROM public.franchises WHERE name = 'Lone Echo' LIMIT 1), '2017-07-20', (SELECT publisher_id FROM public.publishers WHERE name = 'Oculus Studios' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/co63ja.jpg', 141378 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 141378), (SELECT genre_id FROM public.genres WHERE name = 'Sport' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 141378), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 141378), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 141378), (SELECT developer_id FROM public.developers WHERE name = 'Ready At Dawn' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Vertigo Gaming Inc.') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Cook, Serve, Delicious!') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Business') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Vertigo Gaming') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Vertigo Gaming') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Cook, Serve, Delicious! 2!!', (SELECT franchise_id FROM public.franchises WHERE name = 'Cook, Serve, Delicious!' LIMIT 1), '2017-09-13', (SELECT publisher_id FROM public.publishers WHERE name = 'Vertigo Gaming Inc.' LIMIT 1), 82, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1j7y.jpg', 23236 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 23236), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 23236), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 23236), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 23236), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 23236), (SELECT theme_id FROM public.themes WHERE name = 'Business' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 23236), (SELECT developer_id FROM public.developers WHERE name = 'Vertigo Gaming' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Epic Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Epic Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Robo Recall', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2017-03-01', (SELECT publisher_id FROM public.publishers WHERE name = 'Epic Games' LIMIT 1), 90, 'https://images.igdb.com/igdb/image/upload/t_thumb/co27wg.jpg', 26451 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26451), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26451), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26451), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26451), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26451), (SELECT developer_id FROM public.developers WHERE name = 'Epic Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Limited Run Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Survival') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('The Molasses Flood') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('The Molasses Flood') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('The Molasses Flood') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Curve Digital') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'The Flame in the Flood', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2016-02-24', (SELECT publisher_id FROM public.publishers WHERE name = 'Limited Run Games' LIMIT 1), 77, 'https://images.igdb.com/igdb/image/upload/t_thumb/co23e4.jpg', 9732 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9732), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9732), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9732), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9732), (SELECT theme_id FROM public.themes WHERE name = 'Survival' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9732), (SELECT developer_id FROM public.developers WHERE name = 'The Molasses Flood' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9732), (SELECT developer_id FROM public.developers WHERE name = 'The Molasses Flood' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Bethesda Softworks') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Fallout') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Survival') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Stealth') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Sandbox') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Obsidian Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Bandai Namco Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('1C/Cenega') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Bethesda Softworks') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Fallout: New Vegas', (SELECT franchise_id FROM public.franchises WHERE name = 'Fallout' LIMIT 1), '2010-10-19', (SELECT publisher_id FROM public.publishers WHERE name = 'Bethesda Softworks' LIMIT 1), 82, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1u60.jpg', 16 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 16), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 16), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 16), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 16), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 16), (SELECT theme_id FROM public.themes WHERE name = 'Survival' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 16), (SELECT theme_id FROM public.themes WHERE name = 'Stealth' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 16), (SELECT theme_id FROM public.themes WHERE name = 'Sandbox' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 16), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 16), (SELECT developer_id FROM public.developers WHERE name = 'Obsidian Entertainment' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Annapurna Interactive') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Point-and-click') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Mystery') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Jason Roberts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Annapurna Interactive') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Gorogoa', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2017-12-13', (SELECT publisher_id FROM public.publishers WHERE name = 'Annapurna Interactive' LIMIT 1), 82, 'https://images.igdb.com/igdb/image/upload/t_thumb/co3kby.jpg', 9136 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9136), (SELECT genre_id FROM public.genres WHERE name = 'Point-and-click' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9136), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9136), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9136), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9136), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9136), (SELECT theme_id FROM public.themes WHERE name = 'Mystery' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9136), (SELECT developer_id FROM public.developers WHERE name = 'Jason Roberts' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Square Enix') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Life is Strange') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Drama') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Mystery') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Deck Nine') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Square Enix') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Life is Strange: Before the Storm', (SELECT franchise_id FROM public.franchises WHERE name = 'Life is Strange' LIMIT 1), '2017-08-31', (SELECT publisher_id FROM public.publishers WHERE name = 'Square Enix' LIMIT 1), 77, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1twj.jpg', 29004 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 29004), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 29004), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 29004), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 29004), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 29004), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 29004), (SELECT theme_id FROM public.themes WHERE name = 'Drama' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 29004), (SELECT theme_id FROM public.themes WHERE name = 'Mystery' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 29004), (SELECT developer_id FROM public.developers WHERE name = 'Deck Nine' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('THQ') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Warhammer') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Relic Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('THQ') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Sega') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Warhammer 40,000: Space Marine', (SELECT franchise_id FROM public.franchises WHERE name = 'Warhammer' LIMIT 1), '2011-09-06', (SELECT publisher_id FROM public.publishers WHERE name = 'THQ' LIMIT 1), 78, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1tx9.jpg', 578 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 578), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 578), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 578), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 578), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 578), (SELECT developer_id FROM public.developers WHERE name = 'Relic Entertainment' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('The Munky') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Fighting') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Hack and slash/Beat ''em up') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('The Munky') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Drunkn Bar Fight', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2018-02-13', (SELECT publisher_id FROM public.publishers WHERE name = 'The Munky' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/coa1hy.jpg', 31302 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 31302), (SELECT genre_id FROM public.genres WHERE name = 'Fighting' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 31302), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 31302), (SELECT genre_id FROM public.genres WHERE name = 'Hack and slash/Beat ''em up' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 31302), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 31302), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 31302), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 31302), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Q-Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Business') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Black Market Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Black Market Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Dead Hungry', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2012-05-16', (SELECT publisher_id FROM public.publishers WHERE name = 'Q-Games' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/co9u9r.jpg', 8442 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 8442), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 8442), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 8442), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 8442), (SELECT theme_id FROM public.themes WHERE name = 'Business' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 8442), (SELECT developer_id FROM public.developers WHERE name = 'Black Market Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Against Gravity') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Fighting') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Music') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Sport') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Horror') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Sandbox') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Educational') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Kids') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Party') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Against Gravity') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Against Gravity') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Rec Room', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2016-06-01', (SELECT publisher_id FROM public.publishers WHERE name = 'Against Gravity' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/coar2c.jpg', 32617 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 32617), (SELECT genre_id FROM public.genres WHERE name = 'Fighting' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 32617), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 32617), (SELECT genre_id FROM public.genres WHERE name = 'Music' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 32617), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 32617), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 32617), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 32617), (SELECT genre_id FROM public.genres WHERE name = 'Sport' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 32617), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 32617), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 32617), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 32617), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 32617), (SELECT theme_id FROM public.themes WHERE name = 'Horror' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 32617), (SELECT theme_id FROM public.themes WHERE name = 'Sandbox' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 32617), (SELECT theme_id FROM public.themes WHERE name = 'Educational' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 32617), (SELECT theme_id FROM public.themes WHERE name = 'Kids' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 32617), (SELECT theme_id FROM public.themes WHERE name = 'Party' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 32617), (SELECT developer_id FROM public.developers WHERE name = 'Against Gravity' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Team17 Software Limited') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Overcooked') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Kids') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Ghost Town Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Team17') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Overcooked', (SELECT franchise_id FROM public.franchises WHERE name = 'Overcooked' LIMIT 1), '2016-08-03', (SELECT publisher_id FROM public.publishers WHERE name = 'Team17 Software Limited' LIMIT 1), 82, 'https://images.igdb.com/igdb/image/upload/t_thumb/co262g.jpg', 18433 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 18433), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 18433), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 18433), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 18433), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 18433), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 18433), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 18433), (SELECT theme_id FROM public.themes WHERE name = 'Kids' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 18433), (SELECT developer_id FROM public.developers WHERE name = 'Ghost Town Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Oculus Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Weeping studio') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Weeping studio') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Unspoken', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2024-04-01', (SELECT publisher_id FROM public.publishers WHERE name = 'Oculus Studios' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/co82pn.jpg', 288515 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 288515), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 288515), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 288515), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 288515), (SELECT developer_id FROM public.developers WHERE name = 'Weeping studio' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('PigeoNation Inc.') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Visual Novel') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Drama') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Mystery') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Romance') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Mediatonic') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Devolver Digital') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Hatoful Boyfriend', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2011-07-31', (SELECT publisher_id FROM public.publishers WHERE name = 'PigeoNation Inc.' LIMIT 1), 75, 'https://images.igdb.com/igdb/image/upload/t_thumb/co6dsc.jpg', 8874 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 8874), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 8874), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 8874), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 8874), (SELECT genre_id FROM public.genres WHERE name = 'Visual Novel' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 8874), (SELECT theme_id FROM public.themes WHERE name = 'Drama' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 8874), (SELECT theme_id FROM public.themes WHERE name = 'Mystery' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 8874), (SELECT theme_id FROM public.themes WHERE name = 'Romance' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 8874), (SELECT developer_id FROM public.developers WHERE name = 'Mediatonic' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('VRChat Inc.') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Sport') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Drama') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('VRChat Inc.') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('VRChat Inc.') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'VRChat', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2017-02-01', (SELECT publisher_id FROM public.publishers WHERE name = 'VRChat Inc.' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/cobuhu.jpg', 33615 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 33615), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 33615), (SELECT genre_id FROM public.genres WHERE name = 'Sport' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 33615), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 33615), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 33615), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 33615), (SELECT theme_id FROM public.themes WHERE name = 'Drama' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 33615), (SELECT developer_id FROM public.developers WHERE name = 'VRChat Inc.' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Paradox Interactive AB') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Pillars of Eternity') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Obsidian Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Obsidian Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Paradox Interactive') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Pillars of Eternity', (SELECT franchise_id FROM public.franchises WHERE name = 'Pillars of Eternity' LIMIT 1), '2015-03-26', (SELECT publisher_id FROM public.publishers WHERE name = 'Paradox Interactive AB' LIMIT 1), 81, 'https://images.igdb.com/igdb/image/upload/t_thumb/co8tzg.jpg', 1593 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1593), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1593), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1593), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1593), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1593), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1593), (SELECT developer_id FROM public.developers WHERE name = 'Obsidian Entertainment' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Survios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Racing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Sport') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Survios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Survios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Sprint Vector', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2018-02-08', (SELECT publisher_id FROM public.publishers WHERE name = 'Survios' LIMIT 1), 77, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1hyf.jpg', 27506 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27506), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27506), (SELECT genre_id FROM public.genres WHERE name = 'Racing' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27506), (SELECT genre_id FROM public.genres WHERE name = 'Sport' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27506), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27506), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27506), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27506), (SELECT developer_id FROM public.developers WHERE name = 'Survios' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Unknown Worlds') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Subnautica') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Survival') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Unknown Worlds') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Gearbox Publishing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Unknown Worlds') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Subnautica', (SELECT franchise_id FROM public.franchises WHERE name = 'Subnautica' LIMIT 1), '2018-01-23', (SELECT publisher_id FROM public.publishers WHERE name = 'Unknown Worlds' LIMIT 1), 84, 'https://images.igdb.com/igdb/image/upload/t_thumb/coa938.jpg', 9254 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9254), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9254), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9254), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9254), (SELECT theme_id FROM public.themes WHERE name = 'Survival' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9254), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9254), (SELECT developer_id FROM public.developers WHERE name = 'Unknown Worlds' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Hazelight Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'A Way Out', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2018-03-23', (SELECT publisher_id FROM public.publishers WHERE name = 'Electronic Arts' LIMIT 1), 75, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1vca.jpg', 36897 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 36897), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 36897), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 36897), (SELECT developer_id FROM public.developers WHERE name = 'Hazelight Studios' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Legend of Zelda') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Nintendo Entertainment Analysis & Development') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('St. GIGA') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Playtronic') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Gradiente') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Hyundai') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Zelda: Link to the Past', (SELECT franchise_id FROM public.franchises WHERE name = 'Legend of Zelda' LIMIT 1), '1991-11-21', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), 100, 'https://images.igdb.com/igdb/image/upload/t_thumb/co3vzn.jpg', 1026 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1026), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1026), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1026), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1026), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1026), (SELECT developer_id FROM public.developers WHERE name = 'Nintendo Entertainment Analysis & Development' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Chucklefish Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Business') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Sandbox') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Romance') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('ConcernedApe') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Chucklefish Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('ConcernedApe') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('505 Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Stardew Valley', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2016-02-26', (SELECT publisher_id FROM public.publishers WHERE name = 'Chucklefish Games' LIMIT 1), 91, 'https://images.igdb.com/igdb/image/upload/t_thumb/coa93h.jpg', 17000 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 17000), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 17000), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 17000), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 17000), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 17000), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 17000), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 17000), (SELECT theme_id FROM public.themes WHERE name = 'Business' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 17000), (SELECT theme_id FROM public.themes WHERE name = 'Sandbox' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 17000), (SELECT theme_id FROM public.themes WHERE name = 'Romance' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 17000), (SELECT developer_id FROM public.developers WHERE name = 'ConcernedApe' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Jackbox Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Jackbox') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Quiz/Trivia') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Kids') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Party') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Jackbox Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Jackbox Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'The Jackbox Party Pack 3', (SELECT franchise_id FROM public.franchises WHERE name = 'Jackbox' LIMIT 1), '2016-10-18', (SELECT publisher_id FROM public.publishers WHERE name = 'Jackbox Games' LIMIT 1), 78, 'https://images.igdb.com/igdb/image/upload/t_thumb/co4zen.jpg', 19082 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19082), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19082), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19082), (SELECT genre_id FROM public.genres WHERE name = 'Quiz/Trivia' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19082), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19082), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19082), (SELECT theme_id FROM public.themes WHERE name = 'Kids' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19082), (SELECT theme_id FROM public.themes WHERE name = 'Party' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19082), (SELECT developer_id FROM public.developers WHERE name = 'Jackbox Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Rare') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Sea of Thieves', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2018-03-20', (SELECT publisher_id FROM public.publishers WHERE name = 'Xbox Game Studios' LIMIT 1), 66, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2558.jpg', 11137 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11137), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11137), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11137), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11137), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11137), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11137), (SELECT developer_id FROM public.developers WHERE name = 'Rare' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Motion Twin') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Motion Twin') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Evil Empire') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Motion Twin') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Dead Cells', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2018-08-06', (SELECT publisher_id FROM public.publishers WHERE name = 'Motion Twin' LIMIT 1), 90, 'https://images.igdb.com/igdb/image/upload/t_thumb/co7jfv.jpg', 26855 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26855), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26855), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26855), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26855), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26855), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26855), (SELECT developer_id FROM public.developers WHERE name = 'Motion Twin' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26855), (SELECT developer_id FROM public.developers WHERE name = 'Evil Empire' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Frictional Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Horror') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Stealth') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Mystery') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Frictional Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Frictional Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'SOMA', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2015-09-21', (SELECT publisher_id FROM public.publishers WHERE name = 'Frictional Games' LIMIT 1), 81, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2a20.jpg', 9727 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9727), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9727), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9727), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9727), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9727), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9727), (SELECT theme_id FROM public.themes WHERE name = 'Horror' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9727), (SELECT theme_id FROM public.themes WHERE name = 'Stealth' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9727), (SELECT theme_id FROM public.themes WHERE name = 'Mystery' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9727), (SELECT developer_id FROM public.developers WHERE name = 'Frictional Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Sony Interactive Entertainment America') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Wipeout') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Racing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Clever Beans') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('EPOS Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Sony XDev') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Sony Interactive Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Wipeout: Omega Collection', (SELECT franchise_id FROM public.franchises WHERE name = 'Wipeout' LIMIT 1), '2017-06-06', (SELECT publisher_id FROM public.publishers WHERE name = 'Sony Interactive Entertainment America' LIMIT 1), 88, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2iv6.jpg', 26195 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26195), (SELECT genre_id FROM public.genres WHERE name = 'Racing' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26195), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26195), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26195), (SELECT developer_id FROM public.developers WHERE name = 'Clever Beans' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26195), (SELECT developer_id FROM public.developers WHERE name = 'EPOS Game Studios' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26195), (SELECT developer_id FROM public.developers WHERE name = 'Sony XDev' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Beat Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Music') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Sport') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Kids') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Party') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Beat Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Hyperbolic Magnetism') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Beat Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Hyperbolic Magnetism') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Beat Saber', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2018-05-01', (SELECT publisher_id FROM public.publishers WHERE name = 'Beat Games' LIMIT 1), 85, 'https://images.igdb.com/igdb/image/upload/t_thumb/co20ux.jpg', 83731 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 83731), (SELECT genre_id FROM public.genres WHERE name = 'Music' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 83731), (SELECT genre_id FROM public.genres WHERE name = 'Sport' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 83731), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 83731), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 83731), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 83731), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 83731), (SELECT theme_id FROM public.themes WHERE name = 'Kids' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 83731), (SELECT theme_id FROM public.themes WHERE name = 'Party' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 83731), (SELECT developer_id FROM public.developers WHERE name = 'Beat Games' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 83731), (SELECT developer_id FROM public.developers WHERE name = 'Hyperbolic Magnetism' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Insomniac Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Microsoft Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Sunset Overdrive', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2014-10-28', (SELECT publisher_id FROM public.publishers WHERE name = 'Xbox Game Studios' LIMIT 1), 82, 'https://images.igdb.com/igdb/image/upload/t_thumb/co20td.jpg', 3247 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3247), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3247), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3247), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3247), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3247), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3247), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3247), (SELECT developer_id FROM public.developers WHERE name = 'Insomniac Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Team17 Software Limited') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('The Escapists') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Tactical') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Stealth') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Sandbox') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Mouldy Toof Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Team17') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'The Escapists 2', (SELECT franchise_id FROM public.franchises WHERE name = 'The Escapists' LIMIT 1), '2017-08-22', (SELECT publisher_id FROM public.publishers WHERE name = 'Team17 Software Limited' LIMIT 1), 75, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1uvu.jpg', 25653 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25653), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25653), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25653), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25653), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25653), (SELECT genre_id FROM public.genres WHERE name = 'Tactical' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25653), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25653), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25653), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25653), (SELECT theme_id FROM public.themes WHERE name = 'Stealth' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25653), (SELECT theme_id FROM public.themes WHERE name = 'Sandbox' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25653), (SELECT developer_id FROM public.developers WHERE name = 'Mouldy Toof Studios' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('LucasArts Entertainment Company LLC') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Star Wars') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Racing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('LucasArts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Aspyr Media') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('LucasArts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Gradiente') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Star Wars Episode I: Racer', (SELECT franchise_id FROM public.franchises WHERE name = 'Star Wars' LIMIT 1), '1999-05-18', (SELECT publisher_id FROM public.publishers WHERE name = 'LucasArts Entertainment Company LLC' LIMIT 1), 70, 'https://images.igdb.com/igdb/image/upload/t_thumb/co3wj7.jpg', 154 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 154), (SELECT genre_id FROM public.genres WHERE name = 'Racing' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 154), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 154), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 154), (SELECT developer_id FROM public.developers WHERE name = 'LucasArts' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('State of Decay') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Horror') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Survival') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Undead Labs') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Microsoft Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'State of Decay 2', (SELECT franchise_id FROM public.franchises WHERE name = 'State of Decay' LIMIT 1), '2018-05-22', (SELECT publisher_id FROM public.publishers WHERE name = 'Xbox Game Studios' LIMIT 1), 66, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2569.jpg', 19541 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19541), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19541), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19541), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19541), (SELECT theme_id FROM public.themes WHERE name = 'Horror' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19541), (SELECT theme_id FROM public.themes WHERE name = 'Survival' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19541), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19541), (SELECT developer_id FROM public.developers WHERE name = 'Undead Labs' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Square Enix') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Drama') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('DON''T NOD') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Square Enix') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'The Awesome Adventures of Captain Spirit', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2018-06-25', (SELECT publisher_id FROM public.publishers WHERE name = 'Square Enix' LIMIT 1), 81, 'https://images.igdb.com/igdb/image/upload/t_thumb/cobugo.jpg', 103283 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103283), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103283), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103283), (SELECT theme_id FROM public.themes WHERE name = 'Drama' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103283), (SELECT developer_id FROM public.developers WHERE name = 'DON''T NOD' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Ori') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Moon Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Microsoft Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Ori and the Blind Forest: Definitive Edition', (SELECT franchise_id FROM public.franchises WHERE name = 'Ori' LIMIT 1), '2016-03-11', (SELECT publisher_id FROM public.publishers WHERE name = 'Xbox Game Studios' LIMIT 1), 86, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2s0m.jpg', 19456 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19456), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19456), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19456), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19456), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19456), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19456), (SELECT developer_id FROM public.developers WHERE name = 'Moon Studios' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Square Enix') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Bulkhead') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Square Enix Europe') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Square Enix Collective') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'The Turing Test', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2016-08-30', (SELECT publisher_id FROM public.publishers WHERE name = 'Square Enix' LIMIT 1), 76, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1uya.jpg', 18311 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 18311), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 18311), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 18311), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 18311), (SELECT developer_id FROM public.developers WHERE name = 'Bulkhead' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Downpour Interactive') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Tactical') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Warfare') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Downpour Interactive') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Downpour Interactive') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Onward', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2017-09-11', (SELECT publisher_id FROM public.publishers WHERE name = 'Downpour Interactive' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2a4e.jpg', 27575 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27575), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27575), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27575), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27575), (SELECT genre_id FROM public.genres WHERE name = 'Tactical' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27575), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27575), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27575), (SELECT theme_id FROM public.themes WHERE name = 'Warfare' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27575), (SELECT developer_id FROM public.developers WHERE name = 'Downpour Interactive' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Devolver Digital') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Dodge Roll') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Devolver Digital') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Enter the Gungeon', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2016-04-05', (SELECT publisher_id FROM public.publishers WHERE name = 'Devolver Digital' LIMIT 1), 82, 'https://images.igdb.com/igdb/image/upload/t_thumb/cobl6c.jpg', 11182 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11182), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11182), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11182), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11182), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11182), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11182), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11182), (SELECT developer_id FROM public.developers WHERE name = 'Dodge Roll' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Hello Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Survival') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Sandbox') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Hello Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('505 Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Sony Interactive Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Hello Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'No Mans Sky', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2016-08-09', (SELECT publisher_id FROM public.publishers WHERE name = 'Hello Games' LIMIT 1), 74, 'https://images.igdb.com/igdb/image/upload/t_thumb/coacrk.jpg', 3225 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3225), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3225), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3225), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3225), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3225), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3225), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3225), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3225), (SELECT theme_id FROM public.themes WHERE name = 'Survival' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3225), (SELECT theme_id FROM public.themes WHERE name = 'Sandbox' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3225), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3225), (SELECT developer_id FROM public.developers WHERE name = 'Hello Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Mossmouth, LLC') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Spelunky') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Survival') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('BlitWorks') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Mossmouth') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Microsoft Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Mossmouth') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Spelunky', (SELECT franchise_id FROM public.franchises WHERE name = 'Spelunky' LIMIT 1), '2012-07-04', (SELECT publisher_id FROM public.publishers WHERE name = 'Mossmouth, LLC' LIMIT 1), 91, 'https://images.igdb.com/igdb/image/upload/t_thumb/co47m4.jpg', 3029 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3029), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3029), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3029), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3029), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3029), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3029), (SELECT theme_id FROM public.themes WHERE name = 'Survival' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3029), (SELECT developer_id FROM public.developers WHERE name = 'BlitWorks' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3029), (SELECT developer_id FROM public.developers WHERE name = 'Mossmouth' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('EA Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('FIFA') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Sport') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Non-fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('EA Vancouver') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('EA Romania') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('EA Sports') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Fifa 18', (SELECT franchise_id FROM public.franchises WHERE name = 'FIFA' LIMIT 1), '2017-09-29', (SELECT publisher_id FROM public.publishers WHERE name = 'EA Games' LIMIT 1), 58, 'https://images.igdb.com/igdb/image/upload/t_thumb/co68bu.jpg', 240452 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 240452), (SELECT genre_id FROM public.genres WHERE name = 'Sport' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 240452), (SELECT theme_id FROM public.themes WHERE name = 'Non-fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 240452), (SELECT developer_id FROM public.developers WHERE name = 'EA Vancouver' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 240452), (SELECT developer_id FROM public.developers WHERE name = 'EA Romania' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Ninja Theory') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Hellblade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Hack and slash/Beat ''em up') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Ninja Theory') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Ninja Theory') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Hellblade: Senuas Sacrifice VR Edition', (SELECT franchise_id FROM public.franchises WHERE name = 'Hellblade' LIMIT 1), '2018-07-31', (SELECT publisher_id FROM public.publishers WHERE name = 'Ninja Theory' LIMIT 1), 95, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2l7t.jpg', 106107 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 106107), (SELECT genre_id FROM public.genres WHERE name = 'Hack and slash/Beat ''em up' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 106107), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 106107), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 106107), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 106107), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 106107), (SELECT developer_id FROM public.developers WHERE name = 'Ninja Theory' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Star Wars') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('EA Digital Illusions CE') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Battlefront 2', (SELECT franchise_id FROM public.franchises WHERE name = 'Star Wars' LIMIT 1), '2017-11-17', (SELECT publisher_id FROM public.publishers WHERE name = 'Electronic Arts' LIMIT 1), 72, 'https://images.igdb.com/igdb/image/upload/t_thumb/co3wi7.jpg', 26401 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26401), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26401), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26401), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26401), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26401), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26401), (SELECT developer_id FROM public.developers WHERE name = 'EA Digital Illusions CE' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Adult Swim Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('SuperJoeBob') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Adult Swim Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Duck Game', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2014-05-13', (SELECT publisher_id FROM public.publishers WHERE name = 'Adult Swim Games' LIMIT 1), 83, 'https://images.igdb.com/igdb/image/upload/t_thumb/co4wex.jpg', 11247 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11247), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11247), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11247), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11247), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11247), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11247), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11247), (SELECT developer_id FROM public.developers WHERE name = 'SuperJoeBob' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('WeirdBeard') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Kids') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Party') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('WeirdBeard') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('WeirdBeard') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Tricky Towers', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2016-08-02', (SELECT publisher_id FROM public.publishers WHERE name = 'WeirdBeard' LIMIT 1), 68, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1hj7.jpg', 21623 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 21623), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 21623), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 21623), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 21623), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 21623), (SELECT theme_id FROM public.themes WHERE name = 'Kids' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 21623), (SELECT theme_id FROM public.themes WHERE name = 'Party' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 21623), (SELECT developer_id FROM public.developers WHERE name = 'WeirdBeard' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Subset Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Turn-based strategy (TBS)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Subset Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Subset Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Into the Breach', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2018-02-27', (SELECT publisher_id FROM public.publishers WHERE name = 'Subset Games' LIMIT 1), 90, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2gjp.jpg', 27117 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27117), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27117), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27117), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27117), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27117), (SELECT genre_id FROM public.genres WHERE name = 'Turn-based strategy (TBS)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27117), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27117), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27117), (SELECT developer_id FROM public.developers WHERE name = 'Subset Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('LucasArts Entertainment Company LLC') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Star Wars') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Universomo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Giant Interactive Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Lego Star Wars', (SELECT franchise_id FROM public.franchises WHERE name = 'Star Wars' LIMIT 1), '2006-12-31', (SELECT publisher_id FROM public.publishers WHERE name = 'LucasArts Entertainment Company LLC' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/co7qc9.jpg', 285677 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 285677), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 285677), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 285677), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 285677), (SELECT developer_id FROM public.developers WHERE name = 'Universomo' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Sony Interactive Entertainment America') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Spiderman') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Hack and slash/Beat ''em up') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Stealth') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Drama') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Insomniac Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Sony Interactive Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Marvels Spiderman', (SELECT franchise_id FROM public.franchises WHERE name = 'Spiderman' LIMIT 1), '2018-09-07', (SELECT publisher_id FROM public.publishers WHERE name = 'Sony Interactive Entertainment America' LIMIT 1), 90, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1r77.jpg', 19565 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19565), (SELECT genre_id FROM public.genres WHERE name = 'Hack and slash/Beat ''em up' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19565), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19565), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19565), (SELECT theme_id FROM public.themes WHERE name = 'Stealth' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19565), (SELECT theme_id FROM public.themes WHERE name = 'Drama' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19565), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19565), (SELECT developer_id FROM public.developers WHERE name = 'Insomniac Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Forza') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Racing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Sport') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Playground Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Forza Horizon 4', (SELECT franchise_id FROM public.franchises WHERE name = 'Forza' LIMIT 1), '2018-10-02', (SELECT publisher_id FROM public.publishers WHERE name = 'Xbox Game Studios' LIMIT 1), 91, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2e1a.jpg', 82090 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 82090), (SELECT genre_id FROM public.genres WHERE name = 'Racing' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 82090), (SELECT genre_id FROM public.genres WHERE name = 'Sport' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 82090), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 82090), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 82090), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 82090), (SELECT developer_id FROM public.developers WHERE name = 'Playground Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Mario') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Card & Board Game') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Kids') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Party') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('NDCube') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Super Mario Party', (SELECT franchise_id FROM public.franchises WHERE name = 'Mario' LIMIT 1), '2018-10-05', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), 73, 'https://images.igdb.com/igdb/image/upload/t_thumb/cobaa9.jpg', 103339 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103339), (SELECT genre_id FROM public.genres WHERE name = 'Card & Board Game' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103339), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103339), (SELECT theme_id FROM public.themes WHERE name = 'Kids' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103339), (SELECT theme_id FROM public.themes WHERE name = 'Party' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103339), (SELECT developer_id FROM public.developers WHERE name = 'NDCube' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103339), (SELECT developer_id FROM public.developers WHERE name = 'Nintendo' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Mario') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Racing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Kids') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Party') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Nintendo Entertainment Analysis & Development') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('iQue') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Mario Kart 64', (SELECT franchise_id FROM public.franchises WHERE name = 'Mario' LIMIT 1), '1996-12-14', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), 81, 'https://images.igdb.com/igdb/image/upload/t_thumb/co67hm.jpg', 2342 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2342), (SELECT genre_id FROM public.genres WHERE name = 'Racing' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2342), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2342), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2342), (SELECT theme_id FROM public.themes WHERE name = 'Kids' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2342), (SELECT theme_id FROM public.themes WHERE name = 'Party' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2342), (SELECT developer_id FROM public.developers WHERE name = 'Nintendo Entertainment Analysis & Development' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Mario') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Quiz/Trivia') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Card & Board Game') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Party') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Hudson Soft') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('CAProductions') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Gradiente') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Mario Party', (SELECT franchise_id FROM public.franchises WHERE name = 'Mario' LIMIT 1), '1998-12-18', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), 72, 'https://images.igdb.com/igdb/image/upload/t_thumb/co22qr.jpg', 2327 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2327), (SELECT genre_id FROM public.genres WHERE name = 'Quiz/Trivia' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2327), (SELECT genre_id FROM public.genres WHERE name = 'Card & Board Game' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2327), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2327), (SELECT theme_id FROM public.themes WHERE name = 'Party' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2327), (SELECT developer_id FROM public.developers WHERE name = 'Hudson Soft' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2327), (SELECT developer_id FROM public.developers WHERE name = 'CAProductions' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Oblix LLC') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Go Guess', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2018-04-27', (SELECT publisher_id FROM public.publishers WHERE name = 'Oblix LLC' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/cobe6g.jpg', 89981 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 89981), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 89981), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Curve Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Perfectly Paranormal') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Curve Digital') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Manual Samuel', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2016-10-11', (SELECT publisher_id FROM public.publishers WHERE name = 'Curve Games' LIMIT 1), 61, 'https://images.igdb.com/igdb/image/upload/t_thumb/co27lt.jpg', 18688 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 18688), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 18688), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 18688), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 18688), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 18688), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 18688), (SELECT developer_id FROM public.developers WHERE name = 'Perfectly Paranormal' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Hack and slash/Beat ''em up') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Historical') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Crytek Frankfurt') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Crytek') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Deep Silver') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Microsoft Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Crytek') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Ryse: Son of Rome', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2013-11-22', (SELECT publisher_id FROM public.publishers WHERE name = 'Xbox Game Studios' LIMIT 1), 66, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2r7y.jpg', 3812 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3812), (SELECT genre_id FROM public.genres WHERE name = 'Hack and slash/Beat ''em up' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3812), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3812), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3812), (SELECT theme_id FROM public.themes WHERE name = 'Historical' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3812), (SELECT developer_id FROM public.developers WHERE name = 'Crytek Frankfurt' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3812), (SELECT developer_id FROM public.developers WHERE name = 'Crytek' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Activision') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Spyro') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Toys for Bob') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Activision') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Spyro: Reignited Trilogy', (SELECT franchise_id FROM public.franchises WHERE name = 'Spyro' LIMIT 1), '2018-11-13', (SELECT publisher_id FROM public.publishers WHERE name = 'Activision' LIMIT 1), 84, 'https://images.igdb.com/igdb/image/upload/t_thumb/cobaat.jpg', 87683 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 87683), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 87683), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 87683), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 87683), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 87683), (SELECT developer_id FROM public.developers WHERE name = 'Toys for Bob' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Dance Central') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Music') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Harmonix Music Systems') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Microsoft Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Dance Central: Spotlight', (SELECT franchise_id FROM public.franchises WHERE name = 'Dance Central' LIMIT 1), '2014-09-02', (SELECT publisher_id FROM public.publishers WHERE name = 'Xbox Game Studios' LIMIT 1), 77, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1ws9.jpg', 19901 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19901), (SELECT genre_id FROM public.genres WHERE name = 'Music' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19901), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19901), (SELECT developer_id FROM public.developers WHERE name = 'Harmonix Music Systems' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('The Pokémon Company') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Pokemon') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Kids') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Game Freak') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Pokemon: Lets Go, Eevee!', (SELECT franchise_id FROM public.franchises WHERE name = 'Pokemon' LIMIT 1), '2018-11-16', (SELECT publisher_id FROM public.publishers WHERE name = 'The Pokémon Company' LIMIT 1), 80, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1zjz.jpg', 102873 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 102873), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 102873), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 102873), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 102873), (SELECT theme_id FROM public.themes WHERE name = 'Kids' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 102873), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 102873), (SELECT developer_id FROM public.developers WHERE name = 'Game Freak' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('WB Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Music') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Kids') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Party') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Harmonix Music Systems') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('TT Fusion') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('WB Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('MTV Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Lego Rock Band', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2009-11-03', (SELECT publisher_id FROM public.publishers WHERE name = 'WB Games' LIMIT 1), 77, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wpb.jpg', 2695 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2695), (SELECT genre_id FROM public.genres WHERE name = 'Music' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2695), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2695), (SELECT theme_id FROM public.themes WHERE name = 'Kids' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2695), (SELECT theme_id FROM public.themes WHERE name = 'Party' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2695), (SELECT developer_id FROM public.developers WHERE name = 'Harmonix Music Systems' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2695), (SELECT developer_id FROM public.developers WHERE name = 'TT Fusion' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('BioWare') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Anthem', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2019-02-22', (SELECT publisher_id FROM public.publishers WHERE name = 'Electronic Arts' LIMIT 1), 60, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2n94.jpg', 36950 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 36950), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 36950), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 36950), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 36950), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 36950), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 36950), (SELECT developer_id FROM public.developers WHERE name = 'BioWare' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Mojang AB') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Minecraft') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Survival') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Sandbox') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Kids') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('4X (explore, expand, exploit, and exterminate)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Mojang Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Mojang Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Minecraft', (SELECT franchise_id FROM public.franchises WHERE name = 'Minecraft' LIMIT 1), '2016-12-19', (SELECT publisher_id FROM public.publishers WHERE name = 'Mojang AB' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/co8fu7.jpg', 135400 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 135400), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 135400), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 135400), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 135400), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 135400), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 135400), (SELECT theme_id FROM public.themes WHERE name = 'Survival' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 135400), (SELECT theme_id FROM public.themes WHERE name = 'Sandbox' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 135400), (SELECT theme_id FROM public.themes WHERE name = 'Kids' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 135400), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 135400), (SELECT theme_id FROM public.themes WHERE name = '4X (explore, expand, exploit, and exterminate)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 135400), (SELECT developer_id FROM public.developers WHERE name = 'Mojang Studios' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Super Smash Bros.') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Fighting') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Party') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Sora') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Bandai Namco Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Super Smash Bros. Ultimate', (SELECT franchise_id FROM public.franchises WHERE name = 'Super Smash Bros.' LIMIT 1), '2018-12-07', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), 87, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2255.jpg', 90101 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 90101), (SELECT genre_id FROM public.genres WHERE name = 'Fighting' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 90101), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 90101), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 90101), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 90101), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 90101), (SELECT theme_id FROM public.themes WHERE name = 'Party' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 90101), (SELECT developer_id FROM public.developers WHERE name = 'Sora' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 90101), (SELECT developer_id FROM public.developers WHERE name = 'Bandai Namco Studios' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Bossa Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Bae Team') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Bossa Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Purrfect Date', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2017-12-15', (SELECT publisher_id FROM public.publishers WHERE name = 'Bossa Studios' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1u0x.jpg', 54634 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 54634), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 54634), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 54634), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 54634), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 54634), (SELECT developer_id FROM public.developers WHERE name = 'Bae Team' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Image & Form') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Steamworld') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Image & Form') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Image & Form') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Steamworld Dig 2', (SELECT franchise_id FROM public.franchises WHERE name = 'Steamworld' LIMIT 1), '2017-09-21', (SELECT publisher_id FROM public.publishers WHERE name = 'Image & Form' LIMIT 1), 89, 'https://images.igdb.com/igdb/image/upload/t_thumb/co24u8.jpg', 27433 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27433), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27433), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27433), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27433), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27433), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27433), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27433), (SELECT developer_id FROM public.developers WHERE name = 'Image & Form' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Tetris') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Arika') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo of America') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo of Europe') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Tetris 99', (SELECT franchise_id FROM public.franchises WHERE name = 'Tetris' LIMIT 1), '2019-02-13', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), 84, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1jaz.jpg', 115282 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 115282), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 115282), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 115282), (SELECT developer_id FROM public.developers WHERE name = 'Arika' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Chucklefish Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Wargroove') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Turn-based strategy (TBS)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Tactical') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Warfare') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Chucklefish Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Chucklefish Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Wargroove', (SELECT franchise_id FROM public.franchises WHERE name = 'Wargroove' LIMIT 1), '2019-01-02', (SELECT publisher_id FROM public.publishers WHERE name = 'Chucklefish Games' LIMIT 1), 85, 'https://images.igdb.com/igdb/image/upload/t_thumb/co4hgb.jpg', 27441 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27441), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27441), (SELECT genre_id FROM public.genres WHERE name = 'Turn-based strategy (TBS)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27441), (SELECT genre_id FROM public.genres WHERE name = 'Tactical' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27441), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27441), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27441), (SELECT theme_id FROM public.themes WHERE name = 'Warfare' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27441), (SELECT developer_id FROM public.developers WHERE name = 'Chucklefish Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Mega Crit') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Slay the Spire') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Turn-based strategy (TBS)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Card & Board Game') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Mega Crit Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Humble Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Slay the Spire', (SELECT franchise_id FROM public.franchises WHERE name = 'Slay the Spire' LIMIT 1), '2019-01-23', (SELECT publisher_id FROM public.publishers WHERE name = 'Mega Crit' LIMIT 1), 93, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1iyf.jpg', 40477 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 40477), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 40477), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 40477), (SELECT genre_id FROM public.genres WHERE name = 'Turn-based strategy (TBS)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 40477), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 40477), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 40477), (SELECT genre_id FROM public.genres WHERE name = 'Card & Board Game' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 40477), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 40477), (SELECT developer_id FROM public.developers WHERE name = 'Mega Crit Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Enhance') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Tetris') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Music') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Resonair') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Monstars Inc.') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Enhance') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Tetris Effect', (SELECT franchise_id FROM public.franchises WHERE name = 'Tetris' LIMIT 1), '2018-11-09', (SELECT publisher_id FROM public.publishers WHERE name = 'Enhance' LIMIT 1), 88, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2kfy.jpg', 103221 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103221), (SELECT genre_id FROM public.genres WHERE name = 'Music' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103221), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103221), (SELECT developer_id FROM public.developers WHERE name = 'Resonair' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103221), (SELECT developer_id FROM public.developers WHERE name = 'Monstars Inc.' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Night School Studio') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Thriller') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Drama') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Night School Studio') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Night School Studio') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Oxenfree', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2016-01-14', (SELECT publisher_id FROM public.publishers WHERE name = 'Night School Studio' LIMIT 1), 79, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2hlq.jpg', 14587 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 14587), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 14587), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 14587), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 14587), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 14587), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 14587), (SELECT theme_id FROM public.themes WHERE name = 'Thriller' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 14587), (SELECT theme_id FROM public.themes WHERE name = 'Drama' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 14587), (SELECT developer_id FROM public.developers WHERE name = 'Night School Studio' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Heart Machine') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Hack and slash/Beat ''em up') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Heart Machine') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Heart Machine') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Hyper Light Drifter', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2016-03-31', (SELECT publisher_id FROM public.publishers WHERE name = 'Heart Machine' LIMIT 1), 89, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2edn.jpg', 9806 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9806), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9806), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9806), (SELECT genre_id FROM public.genres WHERE name = 'Hack and slash/Beat ''em up' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9806), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9806), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9806), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9806), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9806), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 9806), (SELECT developer_id FROM public.developers WHERE name = 'Heart Machine' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Private Division') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Obsidian Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Private Division') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'The Outer Worlds', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2019-10-25', (SELECT publisher_id FROM public.publishers WHERE name = 'Private Division' LIMIT 1), 86, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2eew.jpg', 113114 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 113114), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 113114), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 113114), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 113114), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 113114), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 113114), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 113114), (SELECT developer_id FROM public.developers WHERE name = 'Obsidian Entertainment' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Star Wars') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Respawn Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Star Wars Jedi: Fallen Order', (SELECT franchise_id FROM public.franchises WHERE name = 'Star Wars' LIMIT 1), '2019-11-15', (SELECT publisher_id FROM public.publishers WHERE name = 'Electronic Arts' LIMIT 1), 83, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1rbi.jpg', 74701 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 74701), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 74701), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 74701), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 74701), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 74701), (SELECT developer_id FROM public.developers WHERE name = 'Respawn Entertainment' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Activision') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Historical') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Stealth') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('FromSoftware') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Activision') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Sekiro: Shadows Die Twice', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2019-03-22', (SELECT publisher_id FROM public.publishers WHERE name = 'Activision' LIMIT 1), 90, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2a23.jpg', 76882 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 76882), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 76882), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 76882), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 76882), (SELECT theme_id FROM public.themes WHERE name = 'Historical' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 76882), (SELECT theme_id FROM public.themes WHERE name = 'Stealth' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 76882), (SELECT developer_id FROM public.developers WHERE name = 'FromSoftware' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Annapurna Interactive') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Mystery') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Mobius Digital') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Annapurna Interactive') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Limited Run Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Outer Wilds', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2019-05-28', (SELECT publisher_id FROM public.publishers WHERE name = 'Annapurna Interactive' LIMIT 1), 85, 'https://images.igdb.com/igdb/image/upload/t_thumb/co65ac.jpg', 11737 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11737), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11737), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11737), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11737), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11737), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11737), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11737), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11737), (SELECT theme_id FROM public.themes WHERE name = 'Mystery' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11737), (SELECT developer_id FROM public.developers WHERE name = 'Mobius Digital' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('GIANTS Software GmbH') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Farming Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Business') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Giants Software') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Focus Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Farming Simulator 19', (SELECT franchise_id FROM public.franchises WHERE name = 'Farming Simulator' LIMIT 1), '2018-11-19', (SELECT publisher_id FROM public.publishers WHERE name = 'GIANTS Software GmbH' LIMIT 1), 68, 'https://images.igdb.com/igdb/image/upload/t_thumb/co20uu.jpg', 87210 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 87210), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 87210), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 87210), (SELECT theme_id FROM public.themes WHERE name = 'Business' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 87210), (SELECT developer_id FROM public.developers WHERE name = 'Giants Software' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('505 Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Educational') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Giant Squid') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('505 Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Abzu', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2016-08-02', (SELECT publisher_id FROM public.publishers WHERE name = '505 Games' LIMIT 1), 81, 'https://images.igdb.com/igdb/image/upload/t_thumb/co28sy.jpg', 7352 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 7352), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 7352), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 7352), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 7352), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 7352), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 7352), (SELECT theme_id FROM public.themes WHERE name = 'Educational' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 7352), (SELECT developer_id FROM public.developers WHERE name = 'Giant Squid' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Sony Interactive Entertainment America') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Horror') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Drama') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Mystery') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Giant Sparrow') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Annapurna Interactive') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'What Remains of Edith Finch', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2017-04-24', (SELECT publisher_id FROM public.publishers WHERE name = 'Sony Interactive Entertainment America' LIMIT 1), 87, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1rbj.jpg', 11233 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11233), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11233), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11233), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11233), (SELECT theme_id FROM public.themes WHERE name = 'Horror' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11233), (SELECT theme_id FROM public.themes WHERE name = 'Drama' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11233), (SELECT theme_id FROM public.themes WHERE name = 'Mystery' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11233), (SELECT developer_id FROM public.developers WHERE name = 'Giant Sparrow' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Cardboard Computer') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Point-and-click') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Thriller') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Drama') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Cardboard Computer') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Cardboard Computer') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Netflix') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Kentucky Route Zero', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2013-01-07', (SELECT publisher_id FROM public.publishers WHERE name = 'Cardboard Computer' LIMIT 1), 88, 'https://images.igdb.com/igdb/image/upload/t_thumb/co9dwn.jpg', 5614 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 5614), (SELECT genre_id FROM public.genres WHERE name = 'Point-and-click' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 5614), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 5614), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 5614), (SELECT theme_id FROM public.themes WHERE name = 'Thriller' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 5614), (SELECT theme_id FROM public.themes WHERE name = 'Drama' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 5614), (SELECT developer_id FROM public.developers WHERE name = 'Cardboard Computer' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Ubisoft Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Sport') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Ubisoft Annecy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Steep', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2016-12-01', (SELECT publisher_id FROM public.publishers WHERE name = 'Ubisoft Entertainment' LIMIT 1), 73, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2jpb.jpg', 19554 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19554), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19554), (SELECT genre_id FROM public.genres WHERE name = 'Sport' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19554), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19554), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19554), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19554), (SELECT developer_id FROM public.developers WHERE name = 'Ubisoft Annecy' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Pokemon') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Turn-based strategy (TBS)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Game Freak') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('The Pokémon Company') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Pokemon Shield', (SELECT franchise_id FROM public.franchises WHERE name = 'Pokemon' LIMIT 1), '2019-11-15', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), 68, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1zk1.jpg', 115653 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 115653), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 115653), (SELECT genre_id FROM public.genres WHERE name = 'Turn-based strategy (TBS)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 115653), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 115653), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 115653), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 115653), (SELECT developer_id FROM public.developers WHERE name = 'Game Freak' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Animal Crossing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Sandbox') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Kids') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Nintendo EPD Production Group No. 5') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Animal Crossing: New Horizons', (SELECT franchise_id FROM public.franchises WHERE name = 'Animal Crossing' LIMIT 1), '2020-03-20', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), 90, 'https://images.igdb.com/igdb/image/upload/t_thumb/co3wls.jpg', 109462 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 109462), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 109462), (SELECT theme_id FROM public.themes WHERE name = 'Sandbox' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 109462), (SELECT theme_id FROM public.themes WHERE name = 'Kids' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 109462), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 109462), (SELECT developer_id FROM public.developers WHERE name = 'Nintendo EPD Production Group No. 5' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Activision') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Call of Duty') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Infinity Ward') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Activision') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Call of Duty: Warzone', (SELECT franchise_id FROM public.franchises WHERE name = 'Call of Duty' LIMIT 1), '2020-03-10', (SELECT publisher_id FROM public.publishers WHERE name = 'Activision' LIMIT 1), 85, 'https://images.igdb.com/igdb/image/upload/t_thumb/co20o8.jpg', 131800 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 131800), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 131800), (SELECT developer_id FROM public.developers WHERE name = 'Infinity Ward' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Sega') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Business') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Two Point Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Sega') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Two Point Hospital', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2018-08-29', (SELECT publisher_id FROM public.publishers WHERE name = 'Sega' LIMIT 1), 87, 'https://images.igdb.com/igdb/image/upload/t_thumb/co235d.jpg', 82117 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 82117), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 82117), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 82117), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 82117), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 82117), (SELECT theme_id FROM public.themes WHERE name = 'Business' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 82117), (SELECT developer_id FROM public.developers WHERE name = 'Two Point Studios' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Ori') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Moon Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('iam8bit') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Ori: The Will of the Wisps', (SELECT franchise_id FROM public.franchises WHERE name = 'Ori' LIMIT 1), '2020-03-10', (SELECT publisher_id FROM public.publishers WHERE name = 'Xbox Game Studios' LIMIT 1), 91, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2e1l.jpg', 37001 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 37001), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 37001), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 37001), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 37001), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 37001), (SELECT developer_id FROM public.developers WHERE name = 'Moon Studios' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Activision') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Crash Bandicoot') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Racing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Party') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Beenox') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Activision Blizzard') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Activision') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Crash Team Racing Nitro-Fueled', (SELECT franchise_id FROM public.franchises WHERE name = 'Crash Bandicoot' LIMIT 1), '2019-06-21', (SELECT publisher_id FROM public.publishers WHERE name = 'Activision' LIMIT 1), 83, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2wvy.jpg', 113113 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 113113), (SELECT genre_id FROM public.genres WHERE name = 'Racing' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 113113), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 113113), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 113113), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 113113), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 113113), (SELECT theme_id FROM public.themes WHERE name = 'Party' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 113113), (SELECT developer_id FROM public.developers WHERE name = 'Beenox' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('System Era Softworks') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Survival') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Sandbox') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Kids') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('System Era Softworks') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('System Era Softworks') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Astroneer', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2019-02-06', (SELECT publisher_id FROM public.publishers WHERE name = 'System Era Softworks' LIMIT 1), 81, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1niz.jpg', 13205 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 13205), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 13205), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 13205), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 13205), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 13205), (SELECT theme_id FROM public.themes WHERE name = 'Survival' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 13205), (SELECT theme_id FROM public.themes WHERE name = 'Sandbox' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 13205), (SELECT theme_id FROM public.themes WHERE name = 'Kids' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 13205), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 13205), (SELECT developer_id FROM public.developers WHERE name = 'System Era Softworks' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Psyonix Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Racing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Sport') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Psyonix') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Psyonix') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Rocket League', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2015-07-06', (SELECT publisher_id FROM public.publishers WHERE name = 'Psyonix Studios' LIMIT 1), 89, 'https://images.igdb.com/igdb/image/upload/t_thumb/coaiyq.jpg', 11198 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11198), (SELECT genre_id FROM public.genres WHERE name = 'Racing' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11198), (SELECT genre_id FROM public.genres WHERE name = 'Sport' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11198), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11198), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11198), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11198), (SELECT developer_id FROM public.developers WHERE name = 'Psyonix' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Sony Interactive Entertainment America') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('The Last of Us') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Horror') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Survival') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Stealth') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Naughty Dog') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Sony Interactive Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'The Last of Us: Part II', (SELECT franchise_id FROM public.franchises WHERE name = 'The Last of Us' LIMIT 1), '2020-06-19', (SELECT publisher_id FROM public.publishers WHERE name = 'Sony Interactive Entertainment America' LIMIT 1), 95, 'https://images.igdb.com/igdb/image/upload/t_thumb/co5ziw.jpg', 26192 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26192), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26192), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26192), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26192), (SELECT theme_id FROM public.themes WHERE name = 'Horror' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26192), (SELECT theme_id FROM public.themes WHERE name = 'Survival' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26192), (SELECT theme_id FROM public.themes WHERE name = 'Stealth' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26192), (SELECT developer_id FROM public.developers WHERE name = 'Naughty Dog' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('WB Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Dying Light') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Horror') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Survival') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Stealth') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Techland') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Techland') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('WB Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Dying Light', (SELECT franchise_id FROM public.franchises WHERE name = 'Dying Light' LIMIT 1), '2015-01-26', (SELECT publisher_id FROM public.publishers WHERE name = 'WB Games' LIMIT 1), 72, 'https://images.igdb.com/igdb/image/upload/t_thumb/co65yq.jpg', 3042 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3042), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3042), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3042), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3042), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3042), (SELECT theme_id FROM public.themes WHERE name = 'Horror' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3042), (SELECT theme_id FROM public.themes WHERE name = 'Survival' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3042), (SELECT theme_id FROM public.themes WHERE name = 'Stealth' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3042), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3042), (SELECT developer_id FROM public.developers WHERE name = 'Techland' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Amplitude Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Endless Space') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Turn-based strategy (TBS)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('4X (explore, expand, exploit, and exterminate)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Amplitude Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Sega') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Sega Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Endless Space 2', (SELECT franchise_id FROM public.franchises WHERE name = 'Endless Space' LIMIT 1), '2017-05-18', (SELECT publisher_id FROM public.publishers WHERE name = 'Amplitude Studios' LIMIT 1), 80, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2svr.jpg', 11550 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11550), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11550), (SELECT genre_id FROM public.genres WHERE name = 'Turn-based strategy (TBS)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11550), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11550), (SELECT theme_id FROM public.themes WHERE name = '4X (explore, expand, exploit, and exterminate)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11550), (SELECT developer_id FROM public.developers WHERE name = 'Amplitude Studios' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Sega') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Football Manager') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Sport') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Sports Interactive') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Football Manager 2020', (SELECT franchise_id FROM public.franchises WHERE name = 'Football Manager' LIMIT 1), '2019-11-19', (SELECT publisher_id FROM public.publishers WHERE name = 'Sega' LIMIT 1), 88, 'https://images.igdb.com/igdb/image/upload/t_thumb/co20ui.jpg', 122080 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 122080), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 122080), (SELECT genre_id FROM public.genres WHERE name = 'Sport' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 122080), (SELECT developer_id FROM public.developers WHERE name = 'Sports Interactive' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Fullbright') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Drama') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Mystery') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Fullbright') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Fullbright') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Tacoma', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2017-08-02', (SELECT publisher_id FROM public.publishers WHERE name = 'Fullbright' LIMIT 1), 78, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2tge.jpg', 8259 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 8259), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 8259), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 8259), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 8259), (SELECT theme_id FROM public.themes WHERE name = 'Drama' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 8259), (SELECT theme_id FROM public.themes WHERE name = 'Mystery' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 8259), (SELECT developer_id FROM public.developers WHERE name = 'Fullbright' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('FIFA') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Sport') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Non-fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('EA Vancouver') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('EA Romania') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('EA Sports') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'FIFA 19', (SELECT franchise_id FROM public.franchises WHERE name = 'FIFA' LIMIT 1), '2018-09-28', (SELECT publisher_id FROM public.publishers WHERE name = 'Electronic Arts' LIMIT 1), 50, 'https://images.igdb.com/igdb/image/upload/t_thumb/co68bt.jpg', 240453 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 240453), (SELECT genre_id FROM public.genres WHERE name = 'Sport' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 240453), (SELECT theme_id FROM public.themes WHERE name = 'Non-fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 240453), (SELECT developer_id FROM public.developers WHERE name = 'EA Vancouver' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 240453), (SELECT developer_id FROM public.developers WHERE name = 'EA Romania' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Devolver Digital') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Horror') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Phobia Game Studio') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Devolver Digital') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Carrion', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2020-07-23', (SELECT publisher_id FROM public.publishers WHERE name = 'Devolver Digital' LIMIT 1), 75, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2eau.jpg', 90055 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 90055), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 90055), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 90055), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 90055), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 90055), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 90055), (SELECT theme_id FROM public.themes WHERE name = 'Horror' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 90055), (SELECT developer_id FROM public.developers WHERE name = 'Phobia Game Studio' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Devolver Digital') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Mystery') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Jan Willem Nijman') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Jukio Kallio') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Dominik Johann') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Kitty Calis') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Devolver Digital') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Minit', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2018-04-03', (SELECT publisher_id FROM public.publishers WHERE name = 'Devolver Digital' LIMIT 1), 78, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1vcj.jpg', 26970 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26970), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26970), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26970), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26970), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26970), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26970), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26970), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26970), (SELECT theme_id FROM public.themes WHERE name = 'Mystery' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26970), (SELECT developer_id FROM public.developers WHERE name = 'Jan Willem Nijman' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26970), (SELECT developer_id FROM public.developers WHERE name = 'Jukio Kallio' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26970), (SELECT developer_id FROM public.developers WHERE name = 'Dominik Johann' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26970), (SELECT developer_id FROM public.developers WHERE name = 'Kitty Calis' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('DrinkBox Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Guacamelee') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Fighting') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Hack and slash/Beat ''em up') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Drinkbox Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Drinkbox Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Guacamelee 2', (SELECT franchise_id FROM public.franchises WHERE name = 'Guacamelee' LIMIT 1), '2018-08-21', (SELECT publisher_id FROM public.publishers WHERE name = 'DrinkBox Studios' LIMIT 1), 84, 'https://images.igdb.com/igdb/image/upload/t_thumb/cob232.jpg', 75234 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75234), (SELECT genre_id FROM public.genres WHERE name = 'Fighting' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75234), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75234), (SELECT genre_id FROM public.genres WHERE name = 'Hack and slash/Beat ''em up' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75234), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75234), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75234), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75234), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75234), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75234), (SELECT developer_id FROM public.developers WHERE name = 'Drinkbox Studios' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Landfall Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Fighting') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Warfare') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Landfall Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Landfall Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('XD Inc.') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Totally Accurate Battle Simulator', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2021-04-01', (SELECT publisher_id FROM public.publishers WHERE name = 'Landfall Games' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1veb.jpg', 21642 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 21642), (SELECT genre_id FROM public.genres WHERE name = 'Fighting' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 21642), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 21642), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 21642), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 21642), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 21642), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 21642), (SELECT theme_id FROM public.themes WHERE name = 'Warfare' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 21642), (SELECT developer_id FROM public.developers WHERE name = 'Landfall Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Devolver Digital') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Racing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Party') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Mediatonic') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Epic Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Devolver Digital') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Fall Guys', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2020-08-04', (SELECT publisher_id FROM public.publishers WHERE name = 'Devolver Digital' LIMIT 1), 77, 'https://images.igdb.com/igdb/image/upload/t_thumb/coa7cs.jpg', 119313 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119313), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119313), (SELECT genre_id FROM public.genres WHERE name = 'Racing' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119313), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119313), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119313), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119313), (SELECT theme_id FROM public.themes WHERE name = 'Party' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119313), (SELECT developer_id FROM public.developers WHERE name = 'Mediatonic' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Thunder Lotus Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Thunder Lotus') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Thunder Lotus') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Spiritfarer', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2020-08-18', (SELECT publisher_id FROM public.publishers WHERE name = 'Thunder Lotus Games' LIMIT 1), 88, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2fe7.jpg', 119304 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119304), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119304), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119304), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119304), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119304), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119304), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119304), (SELECT developer_id FROM public.developers WHERE name = 'Thunder Lotus' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Non-fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Asobo Studio') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Microsoft Flight Simulator', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2020-08-17', (SELECT publisher_id FROM public.publishers WHERE name = 'Xbox Game Studios' LIMIT 1), 85, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2dqk.jpg', 119295 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119295), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119295), (SELECT theme_id FROM public.themes WHERE name = 'Non-fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119295), (SELECT developer_id FROM public.developers WHERE name = 'Asobo Studio' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Drama') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Mystery') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('DON''T NOD') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Tell Me Why', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2020-08-27', (SELECT publisher_id FROM public.publishers WHERE name = 'Xbox Game Studios' LIMIT 1), 81, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2ej1.jpg', 125628 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 125628), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 125628), (SELECT theme_id FROM public.themes WHERE name = 'Drama' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 125628), (SELECT theme_id FROM public.themes WHERE name = 'Mystery' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 125628), (SELECT developer_id FROM public.developers WHERE name = 'DON''T NOD' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Paradox Interactive AB') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Crusader Kings') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Historical') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Sandbox') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Warfare') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Paradox Development Studio') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Paradox Interactive') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Crusader Kings 3', (SELECT franchise_id FROM public.franchises WHERE name = 'Crusader Kings' LIMIT 1), '2020-09-01', (SELECT publisher_id FROM public.publishers WHERE name = 'Paradox Interactive AB' LIMIT 1), 91, 'https://images.igdb.com/igdb/image/upload/t_thumb/co90uu.jpg', 124954 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 124954), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 124954), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 124954), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 124954), (SELECT theme_id FROM public.themes WHERE name = 'Historical' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 124954), (SELECT theme_id FROM public.themes WHERE name = 'Sandbox' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 124954), (SELECT theme_id FROM public.themes WHERE name = 'Warfare' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 124954), (SELECT developer_id FROM public.developers WHERE name = 'Paradox Development Studio' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Innersloth') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Survival') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Stealth') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Party') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Innersloth') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Innersloth') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Among Us', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2018-06-15', (SELECT publisher_id FROM public.publishers WHERE name = 'Innersloth' LIMIT 1), 82, 'https://images.igdb.com/igdb/image/upload/t_thumb/co6kqt.jpg', 111469 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 111469), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 111469), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 111469), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 111469), (SELECT theme_id FROM public.themes WHERE name = 'Survival' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 111469), (SELECT theme_id FROM public.themes WHERE name = 'Stealth' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 111469), (SELECT theme_id FROM public.themes WHERE name = 'Party' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 111469), (SELECT developer_id FROM public.developers WHERE name = 'Innersloth' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Namco') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Sport') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Non-fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Namco') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Virgin Interactive Entertainment, Inc.') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Namco') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Smash Tennis', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '1993-06-25', (SELECT publisher_id FROM public.publishers WHERE name = 'Namco' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/co3sjl.jpg', 44106 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 44106), (SELECT genre_id FROM public.genres WHERE name = 'Sport' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 44106), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 44106), (SELECT theme_id FROM public.themes WHERE name = 'Non-fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 44106), (SELECT developer_id FROM public.developers WHERE name = 'Namco' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('tinyBuild') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Racing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Party') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('We''re Five Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('tinyBuild') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Totally Reliable Delivery Service', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2020-04-01', (SELECT publisher_id FROM public.publishers WHERE name = 'tinyBuild' LIMIT 1), 50, 'https://images.igdb.com/igdb/image/upload/t_thumb/coaajx.jpg', 114058 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 114058), (SELECT genre_id FROM public.genres WHERE name = 'Racing' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 114058), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 114058), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 114058), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 114058), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 114058), (SELECT theme_id FROM public.themes WHERE name = 'Party' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 114058), (SELECT developer_id FROM public.developers WHERE name = 'We''re Five Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Team17 Software Limited') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Sport') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Tactical') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Kids') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Party') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Blacklight Interactive') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Blacklight Interactive') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Team17') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Golf with your Friends', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2016-01-29', (SELECT publisher_id FROM public.publishers WHERE name = 'Team17 Software Limited' LIMIT 1), 72, 'https://images.igdb.com/igdb/image/upload/t_thumb/coaazs.jpg', 24985 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 24985), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 24985), (SELECT genre_id FROM public.genres WHERE name = 'Sport' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 24985), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 24985), (SELECT genre_id FROM public.genres WHERE name = 'Tactical' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 24985), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 24985), (SELECT theme_id FROM public.themes WHERE name = 'Kids' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 24985), (SELECT theme_id FROM public.themes WHERE name = 'Party' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 24985), (SELECT developer_id FROM public.developers WHERE name = 'Blacklight Interactive' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Supergiant Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Hades') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Hack and slash/Beat ''em up') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Drama') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Supergiant Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Supergiant Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Netflix') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Hades', (SELECT franchise_id FROM public.franchises WHERE name = 'Hades' LIMIT 1), '2020-09-17', (SELECT publisher_id FROM public.publishers WHERE name = 'Supergiant Games' LIMIT 1), 94, 'https://images.igdb.com/igdb/image/upload/t_thumb/cob9kr.jpg', 113112 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 113112), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 113112), (SELECT genre_id FROM public.genres WHERE name = 'Hack and slash/Beat ''em up' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 113112), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 113112), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 113112), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 113112), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 113112), (SELECT theme_id FROM public.themes WHERE name = 'Drama' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 113112), (SELECT developer_id FROM public.developers WHERE name = 'Supergiant Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Vertigo Gaming Inc.') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Cook, Serve, Delicious!') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Business') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Vertigo Gaming') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Vertigo Gaming') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Cook, Serve, Delicious 3', (SELECT franchise_id FROM public.franchises WHERE name = 'Cook, Serve, Delicious!' LIMIT 1), '2020-10-13', (SELECT publisher_id FROM public.publishers WHERE name = 'Vertigo Gaming Inc.' LIMIT 1), 74, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wbk.jpg', 121500 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 121500), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 121500), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 121500), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 121500), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 121500), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 121500), (SELECT theme_id FROM public.themes WHERE name = 'Business' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 121500), (SELECT developer_id FROM public.developers WHERE name = 'Vertigo Gaming' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Minecraft') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Hack and slash/Beat ''em up') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Mojang Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Mojang Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Minecraft: Dungeons', (SELECT franchise_id FROM public.franchises WHERE name = 'Minecraft' LIMIT 1), '2020-05-26', (SELECT publisher_id FROM public.publishers WHERE name = 'Xbox Game Studios' LIMIT 1), 74, 'https://images.igdb.com/igdb/image/upload/t_thumb/co233r.jpg', 110474 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 110474), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 110474), (SELECT genre_id FROM public.genres WHERE name = 'Hack and slash/Beat ''em up' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 110474), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 110474), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 110474), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 110474), (SELECT developer_id FROM public.developers WHERE name = 'Mojang Studios' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Star Wars') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Warfare') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Motive Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Star Wars: Squadrons', (SELECT franchise_id FROM public.franchises WHERE name = 'Star Wars' LIMIT 1), '2020-10-01', (SELECT publisher_id FROM public.publishers WHERE name = 'Electronic Arts' LIMIT 1), 81, 'https://images.igdb.com/igdb/image/upload/t_thumb/co3wlz.jpg', 134706 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 134706), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 134706), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 134706), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 134706), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 134706), (SELECT theme_id FROM public.themes WHERE name = 'Warfare' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 134706), (SELECT developer_id FROM public.developers WHERE name = 'Motive Studios' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Bethesda Softworks') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Doom') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Horror') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Warfare') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('id Software') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Bethesda Softworks') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Doom Eternal', (SELECT franchise_id FROM public.franchises WHERE name = 'Doom' LIMIT 1), '2020-03-19', (SELECT publisher_id FROM public.publishers WHERE name = 'Bethesda Softworks' LIMIT 1), 86, 'https://images.igdb.com/igdb/image/upload/t_thumb/co3p5n.jpg', 103298 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103298), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103298), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103298), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103298), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103298), (SELECT theme_id FROM public.themes WHERE name = 'Horror' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103298), (SELECT theme_id FROM public.themes WHERE name = 'Warfare' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103298), (SELECT developer_id FROM public.developers WHERE name = 'id Software' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Polyarc Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Moss') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Polyarc Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Polyarc Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Moss', (SELECT franchise_id FROM public.franchises WHERE name = 'Moss' LIMIT 1), '2018-02-27', (SELECT publisher_id FROM public.publishers WHERE name = 'Polyarc Games' LIMIT 1), 84, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1i1j.jpg', 37095 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 37095), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 37095), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 37095), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 37095), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 37095), (SELECT developer_id FROM public.developers WHERE name = 'Polyarc Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Valve Corporation') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Half Life') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Valve') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Valve') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Half Life: Alyx', (SELECT franchise_id FROM public.franchises WHERE name = 'Half Life' LIMIT 1), '2020-03-23', (SELECT publisher_id FROM public.publishers WHERE name = 'Valve Corporation' LIMIT 1), 93, 'https://images.igdb.com/igdb/image/upload/t_thumb/co87vg.jpg', 126098 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 126098), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 126098), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 126098), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 126098), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 126098), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 126098), (SELECT developer_id FROM public.developers WHERE name = 'Valve' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('AGM Playism') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('ORIGAME DIGITAL') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('ORIGAME DIGITAL') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('PLAYISM') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Umurangi Generation', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2020-05-19', (SELECT publisher_id FROM public.publishers WHERE name = 'AGM Playism' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/co20f3.jpg', 131631 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 131631), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 131631), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 131631), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 131631), (SELECT developer_id FROM public.developers WHERE name = 'ORIGAME DIGITAL' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('FIFA') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Sport') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Non-fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('EA Vancouver') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('EA Sports') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'FIFA 21', (SELECT franchise_id FROM public.franchises WHERE name = 'FIFA' LIMIT 1), '2020-10-09', (SELECT publisher_id FROM public.publishers WHERE name = 'Electronic Arts' LIMIT 1), 72, 'https://images.igdb.com/igdb/image/upload/t_thumb/co3wm2.jpg', 134101 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 134101), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 134101), (SELECT genre_id FROM public.genres WHERE name = 'Sport' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 134101), (SELECT theme_id FROM public.themes WHERE name = 'Non-fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 134101), (SELECT developer_id FROM public.developers WHERE name = 'EA Vancouver' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Wired Productions') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Warfare') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Sphere') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Spectrum HoloByte, Inc.') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Falconeer', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '1987-12-31', (SELECT publisher_id FROM public.publishers WHERE name = 'Wired Productions' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1uel.jpg', 12088 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 12088), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 12088), (SELECT theme_id FROM public.themes WHERE name = 'Warfare' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 12088), (SELECT developer_id FROM public.developers WHERE name = 'Sphere' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Annapurna Interactive') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Kids') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Ben Esposito') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Annapurna Interactive') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Donut County', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2018-08-28', (SELECT publisher_id FROM public.publishers WHERE name = 'Annapurna Interactive' LIMIT 1), 80, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1qv8.jpg', 55080 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 55080), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 55080), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 55080), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 55080), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 55080), (SELECT theme_id FROM public.themes WHERE name = 'Kids' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 55080), (SELECT developer_id FROM public.developers WHERE name = 'Ben Esposito' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Good Shepherd Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Turn-based strategy (TBS)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Card & Board Game') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Shiny Shoe') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Good Shepherd Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Monster Train', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2020-05-21', (SELECT publisher_id FROM public.publishers WHERE name = 'Good Shepherd Entertainment' LIMIT 1), 85, 'https://images.igdb.com/igdb/image/upload/t_thumb/co8tqp.jpg', 129483 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 129483), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 129483), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 129483), (SELECT genre_id FROM public.genres WHERE name = 'Turn-based strategy (TBS)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 129483), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 129483), (SELECT genre_id FROM public.genres WHERE name = 'Card & Board Game' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 129483), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 129483), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 129483), (SELECT developer_id FROM public.developers WHERE name = 'Shiny Shoe' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Devolver Digital') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Card & Board Game') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Four Quarters') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Devolver Digital') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Playdigious') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Loop Hero', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2021-03-04', (SELECT publisher_id FROM public.publishers WHERE name = 'Devolver Digital' LIMIT 1), 85, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2mfy.jpg', 141533 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 141533), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 141533), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 141533), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 141533), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 141533), (SELECT genre_id FROM public.genres WHERE name = 'Card & Board Game' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 141533), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 141533), (SELECT developer_id FROM public.developers WHERE name = 'Four Quarters' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Pixile') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Survival') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Pixile') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Pixile') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Modus Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Super Animal Royale', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2021-06-01', (SELECT publisher_id FROM public.publishers WHERE name = 'Pixile' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/coavmt.jpg', 109826 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 109826), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 109826), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 109826), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 109826), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 109826), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 109826), (SELECT theme_id FROM public.themes WHERE name = 'Survival' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 109826), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 109826), (SELECT developer_id FROM public.developers WHERE name = 'Pixile' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Extremely OK Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Extremely OK Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Maddy Makes Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Celeste', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2018-01-25', (SELECT publisher_id FROM public.publishers WHERE name = 'Extremely OK Games' LIMIT 1), 91, 'https://images.igdb.com/igdb/image/upload/t_thumb/cob9dh.jpg', 26226 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26226), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26226), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26226), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26226), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26226), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26226), (SELECT developer_id FROM public.developers WHERE name = 'Extremely OK Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Hazelight Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'It Takes Two', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2021-03-25', (SELECT publisher_id FROM public.publishers WHERE name = 'Electronic Arts' LIMIT 1), 90, 'https://images.igdb.com/igdb/image/upload/t_thumb/cob22v.jpg', 135243 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 135243), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 135243), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 135243), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 135243), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 135243), (SELECT developer_id FROM public.developers WHERE name = 'Hazelight Studios' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Metroid') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Thriller') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Nintendo R&D1') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Playtronic') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Super Metroid', (SELECT franchise_id FROM public.franchises WHERE name = 'Metroid' LIMIT 1), '1994-03-19', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), 100, 'https://images.igdb.com/igdb/image/upload/t_thumb/co5osy.jpg', 1103 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1103), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1103), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1103), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1103), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1103), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1103), (SELECT theme_id FROM public.themes WHERE name = 'Thriller' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1103), (SELECT developer_id FROM public.developers WHERE name = 'Nintendo R&D1' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1103), (SELECT developer_id FROM public.developers WHERE name = 'Nintendo' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Monomi Park') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Slime Rancher') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Monomi Park') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Skybound Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Monomi Park') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Slime Rancher', (SELECT franchise_id FROM public.franchises WHERE name = 'Slime Rancher' LIMIT 1), '2017-08-01', (SELECT publisher_id FROM public.publishers WHERE name = 'Monomi Park' LIMIT 1), 78, 'https://images.igdb.com/igdb/image/upload/t_thumb/co73i2.jpg', 16287 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 16287), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 16287), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 16287), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 16287), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 16287), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 16287), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 16287), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 16287), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 16287), (SELECT developer_id FROM public.developers WHERE name = 'Monomi Park' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('The Game Bakers') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Romance') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('The Game Bakers') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('The Game Bakers') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Haven', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2020-12-03', (SELECT publisher_id FROM public.publishers WHERE name = 'The Game Bakers' LIMIT 1), 74, 'https://images.igdb.com/igdb/image/upload/t_thumb/co8lrj.jpg', 115427 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 115427), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 115427), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 115427), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 115427), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 115427), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 115427), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 115427), (SELECT theme_id FROM public.themes WHERE name = 'Romance' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 115427), (SELECT developer_id FROM public.developers WHERE name = 'The Game Bakers' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Klei Entertainment Inc.') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Turn-based strategy (TBS)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Card & Board Game') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Klei Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Klei Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Griftlands', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2020-06-15', (SELECT publisher_id FROM public.publishers WHERE name = 'Klei Entertainment Inc.' LIMIT 1), 84, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2feb.jpg', 37057 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 37057), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 37057), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 37057), (SELECT genre_id FROM public.genres WHERE name = 'Turn-based strategy (TBS)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 37057), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 37057), (SELECT genre_id FROM public.genres WHERE name = 'Card & Board Game' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 37057), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 37057), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 37057), (SELECT developer_id FROM public.developers WHERE name = 'Klei Entertainment' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('WanadevStudio') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Music') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Racing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Sport') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Party') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('WanadevStudio') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('WanadevStudio') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Ragnarock', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2021-07-15', (SELECT publisher_id FROM public.publishers WHERE name = 'WanadevStudio' LIMIT 1), 80, 'https://images.igdb.com/igdb/image/upload/t_thumb/co38x2.jpg', 139399 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 139399), (SELECT genre_id FROM public.genres WHERE name = 'Music' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 139399), (SELECT genre_id FROM public.genres WHERE name = 'Racing' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 139399), (SELECT genre_id FROM public.genres WHERE name = 'Sport' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 139399), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 139399), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 139399), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 139399), (SELECT theme_id FROM public.themes WHERE name = 'Party' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 139399), (SELECT developer_id FROM public.developers WHERE name = 'WanadevStudio' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('No More Robots') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Racing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Sport') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('RageSquid') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('No More Robots') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Noodlecake Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Descenders', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2019-05-07', (SELECT publisher_id FROM public.publishers WHERE name = 'No More Robots' LIMIT 1), 77, 'https://images.igdb.com/igdb/image/upload/t_thumb/co3wkw.jpg', 52200 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 52200), (SELECT genre_id FROM public.genres WHERE name = 'Racing' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 52200), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 52200), (SELECT genre_id FROM public.genres WHERE name = 'Sport' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 52200), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 52200), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 52200), (SELECT developer_id FROM public.developers WHERE name = 'RageSquid' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('eastasiasoft') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Rainbite Limited') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Eastasiasoft') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Trigger Witch', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2021-07-28', (SELECT publisher_id FROM public.publishers WHERE name = 'eastasiasoft' LIMIT 1), 76, 'https://images.igdb.com/igdb/image/upload/t_thumb/co3gik.jpg', 119365 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119365), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119365), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119365), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119365), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119365), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119365), (SELECT developer_id FROM public.developers WHERE name = 'Rainbite Limited' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Psychonauts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Double Fine Productions') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Double Fine Productions') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Psychonauts 2', (SELECT franchise_id FROM public.franchises WHERE name = 'Psychonauts' LIMIT 1), '2021-08-24', (SELECT publisher_id FROM public.publishers WHERE name = 'Xbox Game Studios' LIMIT 1), 87, 'https://images.igdb.com/igdb/image/upload/t_thumb/cob7mx.jpg', 14741 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 14741), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 14741), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 14741), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 14741), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 14741), (SELECT developer_id FROM public.developers WHERE name = 'Double Fine Productions' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Raw Fury') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Shedworks') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Raw Fury') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Sable', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2021-09-23', (SELECT publisher_id FROM public.publishers WHERE name = 'Raw Fury' LIMIT 1), 83, 'https://images.igdb.com/igdb/image/upload/t_thumb/co3yzs.jpg', 79995 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 79995), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 79995), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 79995), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 79995), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 79995), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 79995), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 79995), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 79995), (SELECT developer_id FROM public.developers WHERE name = 'Shedworks' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Chucklefish Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Risk of Rain') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Hack and slash/Beat ''em up') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Survival') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Hopoo Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Code Mystics') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Chucklefish Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Hopoo Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Risk of Rain', (SELECT franchise_id FROM public.franchises WHERE name = 'Risk of Rain' LIMIT 1), '2013-11-08', (SELECT publisher_id FROM public.publishers WHERE name = 'Chucklefish Games' LIMIT 1), 85, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2k2z.jpg', 3173 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3173), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3173), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3173), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3173), (SELECT genre_id FROM public.genres WHERE name = 'Hack and slash/Beat ''em up' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3173), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3173), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3173), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3173), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3173), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3173), (SELECT theme_id FROM public.themes WHERE name = 'Survival' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3173), (SELECT developer_id FROM public.developers WHERE name = 'Hopoo Games' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3173), (SELECT developer_id FROM public.developers WHERE name = 'Code Mystics' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nolla Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Sandbox') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Nolla Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nolla Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Noita', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2020-10-15', (SELECT publisher_id FROM public.publishers WHERE name = 'Nolla Games' LIMIT 1), 80, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1qp1.jpg', 52006 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 52006), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 52006), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 52006), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 52006), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 52006), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 52006), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 52006), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 52006), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 52006), (SELECT theme_id FROM public.themes WHERE name = 'Sandbox' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 52006), (SELECT developer_id FROM public.developers WHERE name = 'Nolla Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Forza') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Racing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Playground Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Microsoft Corporation') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Forza Horizon 5', (SELECT franchise_id FROM public.franchises WHERE name = 'Forza' LIMIT 1), '2021-11-09', (SELECT publisher_id FROM public.publishers WHERE name = 'Xbox Game Studios' LIMIT 1), 94, 'https://images.igdb.com/igdb/image/upload/t_thumb/co3ofx.jpg', 141503 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 141503), (SELECT genre_id FROM public.genres WHERE name = 'Racing' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 141503), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 141503), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 141503), (SELECT developer_id FROM public.developers WHERE name = 'Playground Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Halo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Warfare') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('343 Industries') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Xbox Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Halo Infinite', (SELECT franchise_id FROM public.franchises WHERE name = 'Halo' LIMIT 1), '2021-12-08', (SELECT publisher_id FROM public.publishers WHERE name = 'Xbox Game Studios' LIMIT 1), 88, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2dto.jpg', 103281 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103281), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103281), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103281), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103281), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103281), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103281), (SELECT theme_id FROM public.themes WHERE name = 'Warfare' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103281), (SELECT developer_id FROM public.developers WHERE name = '343 Industries' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Double Fine Productions, Inc.') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Samurai Gunn') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Fighting') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('doseone') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Adam Robezzoli') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Valentin Seiche') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Beau Blyth') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Nelson Boles') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Evan Hemsley') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Scrambler') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Peow Studio') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Samurai Gunn 2', (SELECT franchise_id FROM public.franchises WHERE name = 'Samurai Gunn' LIMIT 1), '2021-07-20', (SELECT publisher_id FROM public.publishers WHERE name = 'Double Fine Productions, Inc.' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/cobhlv.jpg', 107293 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 107293), (SELECT genre_id FROM public.genres WHERE name = 'Fighting' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 107293), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 107293), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 107293), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 107293), (SELECT developer_id FROM public.developers WHERE name = 'doseone' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 107293), (SELECT developer_id FROM public.developers WHERE name = 'Adam Robezzoli' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 107293), (SELECT developer_id FROM public.developers WHERE name = 'Valentin Seiche' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 107293), (SELECT developer_id FROM public.developers WHERE name = 'Beau Blyth' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 107293), (SELECT developer_id FROM public.developers WHERE name = 'Nelson Boles' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 107293), (SELECT developer_id FROM public.developers WHERE name = 'Evan Hemsley' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('DotEmu') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Windjammers') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Fighting') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Sport') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('DotEmu') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('DotEmu') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Windjammers 2', (SELECT franchise_id FROM public.franchises WHERE name = 'Windjammers' LIMIT 1), '2022-01-20', (SELECT publisher_id FROM public.publishers WHERE name = 'DotEmu' LIMIT 1), 78, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2rvy.jpg', 107203 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 107203), (SELECT genre_id FROM public.genres WHERE name = 'Fighting' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 107203), (SELECT genre_id FROM public.genres WHERE name = 'Sport' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 107203), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 107203), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 107203), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 107203), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 107203), (SELECT developer_id FROM public.developers WHERE name = 'DotEmu' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('DrinkBox Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Hack and slash/Beat ''em up') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Drinkbox Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Drinkbox Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Nobody Saves the World', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2022-01-18', (SELECT publisher_id FROM public.publishers WHERE name = 'DrinkBox Studios' LIMIT 1), 86, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2wcz.jpg', 145089 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 145089), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 145089), (SELECT genre_id FROM public.genres WHERE name = 'Hack and slash/Beat ''em up' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 145089), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 145089), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 145089), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 145089), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 145089), (SELECT developer_id FROM public.developers WHERE name = 'Drinkbox Studios' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Annapurna Interactive') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Music') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Beethoven & Dinosaur') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Annapurna Interactive') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'The Artful Escape', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2021-09-09', (SELECT publisher_id FROM public.publishers WHERE name = 'Annapurna Interactive' LIMIT 1), 83, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2e3n.jpg', 25935 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25935), (SELECT genre_id FROM public.genres WHERE name = 'Music' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25935), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25935), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25935), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25935), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25935), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25935), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25935), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25935), (SELECT developer_id FROM public.developers WHERE name = 'Beethoven & Dinosaur' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Pokemon') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Turn-based strategy (TBS)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Game Freak') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('The Pokémon Company') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Pokemon: Legends Arceus', (SELECT franchise_id FROM public.franchises WHERE name = 'Pokemon' LIMIT 1), '2022-01-28', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), 85, 'https://images.igdb.com/igdb/image/upload/t_thumb/co3d03.jpg', 144054 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 144054), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 144054), (SELECT genre_id FROM public.genres WHERE name = 'Turn-based strategy (TBS)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 144054), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 144054), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 144054), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 144054), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 144054), (SELECT developer_id FROM public.developers WHERE name = 'Game Freak' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Sony Interactive Entertainment America') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Horror') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('FromSoftware') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Sony Computer Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Bloodborne', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2015-03-24', (SELECT publisher_id FROM public.publishers WHERE name = 'Sony Interactive Entertainment America' LIMIT 1), 91, 'https://images.igdb.com/igdb/image/upload/t_thumb/cob99l.jpg', 7334 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 7334), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 7334), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 7334), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 7334), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 7334), (SELECT theme_id FROM public.themes WHERE name = 'Horror' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 7334), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 7334), (SELECT developer_id FROM public.developers WHERE name = 'FromSoftware' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Sony Interactive Entertainment America') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('God of War') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Hack and slash/Beat ''em up') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Historical') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('SIE Santa Monica Studio') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Sony Interactive Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'God of War', (SELECT franchise_id FROM public.franchises WHERE name = 'God of War' LIMIT 1), '2018-04-20', (SELECT publisher_id FROM public.publishers WHERE name = 'Sony Interactive Entertainment America' LIMIT 1), 96, 'https://images.igdb.com/igdb/image/upload/t_thumb/cobkt6.jpg', 19560 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19560), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19560), (SELECT genre_id FROM public.genres WHERE name = 'Hack and slash/Beat ''em up' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19560), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19560), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19560), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19560), (SELECT theme_id FROM public.themes WHERE name = 'Historical' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19560), (SELECT developer_id FROM public.developers WHERE name = 'SIE Santa Monica Studio' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('FIFA') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Sport') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Non-fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('EA Vancouver') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('EA Sports') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'FIFA 22', (SELECT franchise_id FROM public.franchises WHERE name = 'FIFA' LIMIT 1), '2021-10-01', (SELECT publisher_id FROM public.publishers WHERE name = 'Electronic Arts' LIMIT 1), 79, 'https://images.igdb.com/igdb/image/upload/t_thumb/co3dsm.jpg', 154986 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 154986), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 154986), (SELECT genre_id FROM public.genres WHERE name = 'Sport' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 154986), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 154986), (SELECT theme_id FROM public.themes WHERE name = 'Non-fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 154986), (SELECT developer_id FROM public.developers WHERE name = 'EA Vancouver' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Raw Thrills') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Teenage Mutant Ninja Turtles') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Hack and slash/Beat ''em up') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Raw Thrills') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Raw Thrills') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Teenage Mutant Ninja Turtles', (SELECT franchise_id FROM public.franchises WHERE name = 'Teenage Mutant Ninja Turtles' LIMIT 1), '2017-11-01', (SELECT publisher_id FROM public.publishers WHERE name = 'Raw Thrills' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2y2q.jpg', 76209 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 76209), (SELECT genre_id FROM public.genres WHERE name = 'Hack and slash/Beat ''em up' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 76209), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 76209), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 76209), (SELECT developer_id FROM public.developers WHERE name = 'Raw Thrills' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Atlus U.S.A., Inc.') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Hack and slash/Beat ''em up') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Historical') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Vanillaware') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Atlus') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nippon Ichi Software') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Atlus') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Dragons Crown', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2013-07-25', (SELECT publisher_id FROM public.publishers WHERE name = 'Atlus U.S.A., Inc.' LIMIT 1), 81, 'https://images.igdb.com/igdb/image/upload/t_thumb/co3wc6.jpg', 3002 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3002), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3002), (SELECT genre_id FROM public.genres WHERE name = 'Hack and slash/Beat ''em up' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3002), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3002), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3002), (SELECT theme_id FROM public.themes WHERE name = 'Historical' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3002), (SELECT developer_id FROM public.developers WHERE name = 'Vanillaware' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3002), (SELECT developer_id FROM public.developers WHERE name = 'Atlus' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('PlayWay') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Business') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Non-fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Frozen District') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Empyrean') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Ultimate Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Frozen District') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Ultimate Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('PlayWay') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'House Flipper', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2018-05-17', (SELECT publisher_id FROM public.publishers WHERE name = 'PlayWay' LIMIT 1), 62, 'https://images.igdb.com/igdb/image/upload/t_thumb/co4xdy.jpg', 27744 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27744), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27744), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27744), (SELECT theme_id FROM public.themes WHERE name = 'Business' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27744), (SELECT theme_id FROM public.themes WHERE name = 'Non-fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27744), (SELECT developer_id FROM public.developers WHERE name = 'Frozen District' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27744), (SELECT developer_id FROM public.developers WHERE name = 'Empyrean' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 27744), (SELECT developer_id FROM public.developers WHERE name = 'Ultimate Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Activision') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Crash Bandicoot') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Toys for Bob') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Activision') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Crash Bandicoot 4: Its About Time', (SELECT franchise_id FROM public.franchises WHERE name = 'Crash Bandicoot' LIMIT 1), '2020-10-02', (SELECT publisher_id FROM public.publishers WHERE name = 'Activision' LIMIT 1), 86, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2hp4.jpg', 135254 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 135254), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 135254), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 135254), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 135254), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 135254), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 135254), (SELECT developer_id FROM public.developers WHERE name = 'Toys for Bob' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Dani') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Fighting') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Racing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Dani') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Dani') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Crab Game', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2021-10-29', (SELECT publisher_id FROM public.publishers WHERE name = 'Dani' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/co46sr.jpg', 178351 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 178351), (SELECT genre_id FROM public.genres WHERE name = 'Fighting' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 178351), (SELECT genre_id FROM public.genres WHERE name = 'Racing' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 178351), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 178351), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 178351), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 178351), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 178351), (SELECT developer_id FROM public.developers WHERE name = 'Dani' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('WB Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Fighting') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Player First Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('WB Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Multiversus', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2024-05-28', (SELECT publisher_id FROM public.publishers WHERE name = 'WB Games' LIMIT 1), 75, 'https://images.igdb.com/igdb/image/upload/t_thumb/co7yle.jpg', 182278 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 182278), (SELECT genre_id FROM public.genres WHERE name = 'Fighting' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 182278), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 182278), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 182278), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 182278), (SELECT developer_id FROM public.developers WHERE name = 'Player First Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Activision') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Tony Hawk') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Sport') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Sandbox') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Vicarious Visions') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Activision') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Tony Hawks Pro Skater 1 & 2', (SELECT franchise_id FROM public.franchises WHERE name = 'Tony Hawk' LIMIT 1), '2020-09-04', (SELECT publisher_id FROM public.publishers WHERE name = 'Activision' LIMIT 1), 89, 'https://images.igdb.com/igdb/image/upload/t_thumb/co25u7.jpg', 133887 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 133887), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 133887), (SELECT genre_id FROM public.genres WHERE name = 'Sport' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 133887), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 133887), (SELECT theme_id FROM public.themes WHERE name = 'Sandbox' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 133887), (SELECT developer_id FROM public.developers WHERE name = 'Vicarious Visions' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Sony Interactive Entertainment America') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Ghost of Tsushima') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Hack and slash/Beat ''em up') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Historical') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Stealth') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Drama') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Sucker Punch Productions') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Sony Interactive Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Ghost of Tsushima', (SELECT franchise_id FROM public.franchises WHERE name = 'Ghost of Tsushima' LIMIT 1), '2020-07-17', (SELECT publisher_id FROM public.publishers WHERE name = 'Sony Interactive Entertainment America' LIMIT 1), 92, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2crj.jpg', 75235 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75235), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75235), (SELECT genre_id FROM public.genres WHERE name = 'Hack and slash/Beat ''em up' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75235), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75235), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75235), (SELECT theme_id FROM public.themes WHERE name = 'Historical' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75235), (SELECT theme_id FROM public.themes WHERE name = 'Stealth' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75235), (SELECT theme_id FROM public.themes WHERE name = 'Drama' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75235), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75235), (SELECT developer_id FROM public.developers WHERE name = 'Sucker Punch Productions' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Sony Interactive Entertainment America') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('God of War') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Hack and slash/Beat ''em up') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('SIE Santa Monica Studio') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Sony Interactive Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'God of War: Ragnarok', (SELECT franchise_id FROM public.franchises WHERE name = 'God of War' LIMIT 1), '2022-11-09', (SELECT publisher_id FROM public.publishers WHERE name = 'Sony Interactive Entertainment America' LIMIT 1), 95, 'https://images.igdb.com/igdb/image/upload/t_thumb/coba3d.jpg', 112875 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 112875), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 112875), (SELECT genre_id FROM public.genres WHERE name = 'Hack and slash/Beat ''em up' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 112875), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 112875), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 112875), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 112875), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 112875), (SELECT developer_id FROM public.developers WHERE name = 'SIE Santa Monica Studio' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Cellar Door Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Rogue Legacy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Cellar Door Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Cellar Door Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Rogue Legacy 2', (SELECT franchise_id FROM public.franchises WHERE name = 'Rogue Legacy' LIMIT 1), '2022-04-28', (SELECT publisher_id FROM public.publishers WHERE name = 'Cellar Door Games' LIMIT 1), 90, 'https://images.igdb.com/igdb/image/upload/t_thumb/co4p51.jpg', 132058 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 132058), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 132058), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 132058), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 132058), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 132058), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 132058), (SELECT developer_id FROM public.developers WHERE name = 'Cellar Door Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Bandai Namco Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Elden Ring') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('FromSoftware') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Bandai Namco Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('FromSoftware') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Elden Ring', (SELECT franchise_id FROM public.franchises WHERE name = 'Elden Ring' LIMIT 1), '2022-02-25', (SELECT publisher_id FROM public.publishers WHERE name = 'Bandai Namco Entertainment' LIMIT 1), 97, 'https://images.igdb.com/igdb/image/upload/t_thumb/co4jni.jpg', 119133 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119133), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119133), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119133), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119133), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119133), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119133), (SELECT developer_id FROM public.developers WHERE name = 'FromSoftware' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Zillion Whales') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Mushroom Wars') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Real Time Strategy (RTS)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Zillion Whales') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Mushroom Wars 2', (SELECT franchise_id FROM public.franchises WHERE name = 'Mushroom Wars' LIMIT 1), '2016-10-13', (SELECT publisher_id FROM public.publishers WHERE name = 'Zillion Whales' LIMIT 1), 62, 'https://images.igdb.com/igdb/image/upload/t_thumb/co250e.jpg', 19786 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19786), (SELECT genre_id FROM public.genres WHERE name = 'Real Time Strategy (RTS)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19786), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19786), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19786), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Sony Interactive Entertainment America') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('The Last of Us') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Horror') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Survival') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Stealth') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Naughty Dog') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Sony Computer Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'The Last of Us', (SELECT franchise_id FROM public.franchises WHERE name = 'The Last of Us' LIMIT 1), '2013-06-14', (SELECT publisher_id FROM public.publishers WHERE name = 'Sony Interactive Entertainment America' LIMIT 1), 92, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1r7f.jpg', 1009 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1009), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1009), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1009), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1009), (SELECT theme_id FROM public.themes WHERE name = 'Horror' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1009), (SELECT theme_id FROM public.themes WHERE name = 'Survival' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1009), (SELECT theme_id FROM public.themes WHERE name = 'Stealth' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1009), (SELECT developer_id FROM public.developers WHERE name = 'Naughty Dog' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Sony Interactive Entertainment America') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('The Last of Us') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Horror') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Survival') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Naughty Dog') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Sony Computer Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'The Last of Us: Left Behind', (SELECT franchise_id FROM public.franchises WHERE name = 'The Last of Us' LIMIT 1), '2014-02-14', (SELECT publisher_id FROM public.publishers WHERE name = 'Sony Interactive Entertainment America' LIMIT 1), 87, 'https://images.igdb.com/igdb/image/upload/t_thumb/co5xg8.jpg', 11790 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11790), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11790), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11790), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11790), (SELECT theme_id FROM public.themes WHERE name = 'Horror' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11790), (SELECT theme_id FROM public.themes WHERE name = 'Survival' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 11790), (SELECT developer_id FROM public.developers WHERE name = 'Naughty Dog' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Dear Villagers') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Historical') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Drama') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Mystery') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Modern Storyteller') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Dear Villagers') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Plug In Digital') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'The Forgotten City', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2021-07-28', (SELECT publisher_id FROM public.publishers WHERE name = 'Dear Villagers' LIMIT 1), 90, 'https://images.igdb.com/igdb/image/upload/t_thumb/co3muu.jpg', 103320 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103320), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103320), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103320), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103320), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103320), (SELECT theme_id FROM public.themes WHERE name = 'Historical' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103320), (SELECT theme_id FROM public.themes WHERE name = 'Drama' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103320), (SELECT theme_id FROM public.themes WHERE name = 'Mystery' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103320), (SELECT developer_id FROM public.developers WHERE name = 'Modern Storyteller' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('F1') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Racing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Sport') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Codemasters') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('EA Sports') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'F1 22', (SELECT franchise_id FROM public.franchises WHERE name = 'F1' LIMIT 1), '2022-07-01', (SELECT publisher_id FROM public.publishers WHERE name = 'Electronic Arts' LIMIT 1), 83, 'https://images.igdb.com/igdb/image/upload/t_thumb/co4r57.jpg', 198200 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 198200), (SELECT genre_id FROM public.genres WHERE name = 'Racing' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 198200), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 198200), (SELECT genre_id FROM public.genres WHERE name = 'Sport' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 198200), (SELECT developer_id FROM public.developers WHERE name = 'Codemasters' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('tinyBuild') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Fighting') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Neverjam') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Neverjam') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('tinyBuild') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Spiderheck', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2022-09-22', (SELECT publisher_id FROM public.publishers WHERE name = 'tinyBuild' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/co9hya.jpg', 137073 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 137073), (SELECT genre_id FROM public.genres WHERE name = 'Fighting' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 137073), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 137073), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 137073), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 137073), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 137073), (SELECT developer_id FROM public.developers WHERE name = 'Neverjam' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Coffee Stain Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Survival') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Sandbox') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Iron Gate Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Coffee Stain Publishing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Valheim', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2021-02-02', (SELECT publisher_id FROM public.publishers WHERE name = 'Coffee Stain Studios' LIMIT 1), 90, 'https://images.igdb.com/igdb/image/upload/t_thumb/cob24q.jpg', 104967 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 104967), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 104967), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 104967), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 104967), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 104967), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 104967), (SELECT theme_id FROM public.themes WHERE name = 'Survival' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 104967), (SELECT theme_id FROM public.themes WHERE name = 'Sandbox' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 104967), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 104967), (SELECT developer_id FROM public.developers WHERE name = 'Iron Gate Studios' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Legend of Zelda') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Sandbox') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Nintendo EPD Production Group No. 3') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Legend of Zelda: Tears of the Kingdom', (SELECT franchise_id FROM public.franchises WHERE name = 'Legend of Zelda' LIMIT 1), '2023-05-12', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), 95, 'https://images.igdb.com/igdb/image/upload/t_thumb/co5vmg.jpg', 119388 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119388), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119388), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119388), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119388), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119388), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119388), (SELECT theme_id FROM public.themes WHERE name = 'Sandbox' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119388), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119388), (SELECT developer_id FROM public.developers WHERE name = 'Nintendo EPD Production Group No. 3' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Devolver Digital') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Card & Board Game') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Horror') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Mystery') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Daniel Mullins Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Devolver Digital') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Daniel Mullins Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Inscryption', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2021-10-19', (SELECT publisher_id FROM public.publishers WHERE name = 'Devolver Digital' LIMIT 1), 82, 'https://images.igdb.com/igdb/image/upload/t_thumb/co401c.jpg', 139090 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 139090), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 139090), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 139090), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 139090), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 139090), (SELECT genre_id FROM public.genres WHERE name = 'Card & Board Game' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 139090), (SELECT theme_id FROM public.themes WHERE name = 'Horror' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 139090), (SELECT theme_id FROM public.themes WHERE name = 'Mystery' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 139090), (SELECT developer_id FROM public.developers WHERE name = 'Daniel Mullins Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Battlefield') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Historical') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Warfare') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('EA Digital Illusions CE') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Battlefield: 1943', (SELECT franchise_id FROM public.franchises WHERE name = 'Battlefield' LIMIT 1), '2009-07-08', (SELECT publisher_id FROM public.publishers WHERE name = 'Electronic Arts' LIMIT 1), 85, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1nv3.jpg', 351 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 351), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 351), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 351), (SELECT theme_id FROM public.themes WHERE name = 'Historical' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 351), (SELECT theme_id FROM public.themes WHERE name = 'Warfare' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 351), (SELECT developer_id FROM public.developers WHERE name = 'EA Digital Illusions CE' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Kirby') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Dimps') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('HAL Laboratory') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Flagship') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Kirby & the Amazing Mirror', (SELECT franchise_id FROM public.franchises WHERE name = 'Kirby' LIMIT 1), '2004-04-15', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1w9u.jpg', 3721 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3721), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3721), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3721), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3721), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3721), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3721), (SELECT developer_id FROM public.developers WHERE name = 'Dimps' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3721), (SELECT developer_id FROM public.developers WHERE name = 'HAL Laboratory' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 3721), (SELECT developer_id FROM public.developers WHERE name = 'Flagship' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Racing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Survival') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Nintendo Software Technology') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'F-Zero 99', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2023-09-14', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/co731j.jpg', 266686 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 266686), (SELECT genre_id FROM public.genres WHERE name = 'Racing' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 266686), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 266686), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 266686), (SELECT theme_id FROM public.themes WHERE name = 'Survival' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 266686), (SELECT developer_id FROM public.developers WHERE name = 'Nintendo Software Technology' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Mario') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Racing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Kids') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Intelligent Systems') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Gradiente') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('iQue') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Mario Kart: Super Circuit', (SELECT franchise_id FROM public.franchises WHERE name = 'Mario' LIMIT 1), '2001-07-21', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), 90, 'https://images.igdb.com/igdb/image/upload/t_thumb/co7o0u.jpg', 2343 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2343), (SELECT genre_id FROM public.genres WHERE name = 'Racing' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2343), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2343), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2343), (SELECT theme_id FROM public.themes WHERE name = 'Kids' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2343), (SELECT developer_id FROM public.developers WHERE name = 'Nintendo' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2343), (SELECT developer_id FROM public.developers WHERE name = 'Intelligent Systems' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Mario') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Nintendo EPD Production Group No. 10') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Super Mario Bros: Wonder', (SELECT franchise_id FROM public.franchises WHERE name = 'Mario' LIMIT 1), '2023-10-20', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), 95, 'https://images.igdb.com/igdb/image/upload/t_thumb/co6nnl.jpg', 254339 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 254339), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 254339), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 254339), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 254339), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 254339), (SELECT developer_id FROM public.developers WHERE name = 'Nintendo EPD Production Group No. 10' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Madden') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Sport') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('EA Orlando') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Madden 23', (SELECT franchise_id FROM public.franchises WHERE name = 'Madden' LIMIT 1), '2022-08-19', (SELECT publisher_id FROM public.publishers WHERE name = 'Electronic Arts' LIMIT 1), 76, 'https://images.igdb.com/igdb/image/upload/t_thumb/co4th3.jpg', 203376 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 203376), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 203376), (SELECT genre_id FROM public.genres WHERE name = 'Sport' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 203376), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 203376), (SELECT developer_id FROM public.developers WHERE name = 'EA Orlando' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Chucklefish Games, Gearbox Publishing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Risk of Rain') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Hack and slash/Beat ''em up') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Hopoo Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Gearbox Publishing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Risk of Rain Returns', (SELECT franchise_id FROM public.franchises WHERE name = 'Risk of Rain' LIMIT 1), '2023-11-08', (SELECT publisher_id FROM public.publishers WHERE name = 'Chucklefish Games, Gearbox Publishing' LIMIT 1), 80, 'https://images.igdb.com/igdb/image/upload/t_thumb/co5xm2.jpg', 229794 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 229794), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 229794), (SELECT genre_id FROM public.genres WHERE name = 'Hack and slash/Beat ''em up' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 229794), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 229794), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 229794), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 229794), (SELECT developer_id FROM public.developers WHERE name = 'Hopoo Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Mintrocket') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Business') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('MINTROCKET') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('MINTROCKET') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Dave the Diver', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2023-06-28', (SELECT publisher_id FROM public.publishers WHERE name = 'Mintrocket' LIMIT 1), 93, 'https://images.igdb.com/igdb/image/upload/t_thumb/coaav7.jpg', 203722 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 203722), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 203722), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 203722), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 203722), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 203722), (SELECT theme_id FROM public.themes WHERE name = 'Business' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 203722), (SELECT developer_id FROM public.developers WHERE name = 'MINTROCKET' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Pillow Castle Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Mystery') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Pillow Castle Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Pillow Castle Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Noodlecake Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Superliminal', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2019-11-12', (SELECT publisher_id FROM public.publishers WHERE name = 'Pillow Castle Games' LIMIT 1), 80, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1uqz.jpg', 68447 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 68447), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 68447), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 68447), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 68447), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 68447), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 68447), (SELECT theme_id FROM public.themes WHERE name = 'Mystery' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 68447), (SELECT developer_id FROM public.developers WHERE name = 'Pillow Castle Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Bandai Namco Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Elden Ring') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('FromSoftware') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Bandai Namco Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Elden Ring: Shadow of the Erdtree', (SELECT franchise_id FROM public.franchises WHERE name = 'Elden Ring' LIMIT 1), '2024-06-21', (SELECT publisher_id FROM public.publishers WHERE name = 'Bandai Namco Entertainment' LIMIT 1), 97, 'https://images.igdb.com/igdb/image/upload/t_thumb/co7sly.jpg', 240009 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 240009), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 240009), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 240009), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 240009), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 240009), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 240009), (SELECT developer_id FROM public.developers WHERE name = 'FromSoftware' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Legend of Zelda') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Nintendo EAD Software Development Group No.3') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'The Legend of Zelda: Four Swords Adventures', (SELECT franchise_id FROM public.franchises WHERE name = 'Legend of Zelda' LIMIT 1), '2004-06-07', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), 85, 'https://images.igdb.com/igdb/image/upload/t_thumb/cob9xf.jpg', 1034 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1034), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1034), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1034), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1034), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 1034), (SELECT developer_id FROM public.developers WHERE name = 'Nintendo EAD Software Development Group No.3' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Pikmin') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Real Time Strategy (RTS)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Nintendo Entertainment Planning & Development') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Eighting') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Nintendo EPD Production Group No. 10') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Pikmin 4', (SELECT franchise_id FROM public.franchises WHERE name = 'Pikmin' LIMIT 1), '2023-07-21', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), 88, 'https://images.igdb.com/igdb/image/upload/t_thumb/coba9h.jpg', 59843 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 59843), (SELECT genre_id FROM public.genres WHERE name = 'Real Time Strategy (RTS)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 59843), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 59843), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 59843), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 59843), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 59843), (SELECT developer_id FROM public.developers WHERE name = 'Nintendo Entertainment Planning & Development' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 59843), (SELECT developer_id FROM public.developers WHERE name = 'Eighting' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 59843), (SELECT developer_id FROM public.developers WHERE name = 'Nintendo EPD Production Group No. 10' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Anegar Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Anegar Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Anegar Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Chained Together', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2024-06-19', (SELECT publisher_id FROM public.publishers WHERE name = 'Anegar Games' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/coaazz.jpg', 265111 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 265111), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 265111), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 265111), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 265111), (SELECT developer_id FROM public.developers WHERE name = 'Anegar Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Future Friends Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Mystery') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Helder Pinto') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Future Friends Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Europa', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2024-10-11', (SELECT publisher_id FROM public.publishers WHERE name = 'Future Friends Games' LIMIT 1), 78, 'https://images.igdb.com/igdb/image/upload/t_thumb/co5vb6.jpg', 130893 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 130893), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 130893), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 130893), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 130893), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 130893), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 130893), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 130893), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 130893), (SELECT theme_id FROM public.themes WHERE name = 'Mystery' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 130893), (SELECT developer_id FROM public.developers WHERE name = 'Helder Pinto' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Devolver Digital') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Hack and slash/Beat ''em up') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Massive Monster') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Devolver Digital') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Cult of the Lamb', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2022-08-11', (SELECT publisher_id FROM public.publishers WHERE name = 'Devolver Digital' LIMIT 1), 89, 'https://images.igdb.com/igdb/image/upload/t_thumb/cobbwj.jpg', 165351 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 165351), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 165351), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 165351), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 165351), (SELECT genre_id FROM public.genres WHERE name = 'Hack and slash/Beat ''em up' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 165351), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 165351), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 165351), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 165351), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 165351), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 165351), (SELECT developer_id FROM public.developers WHERE name = 'Massive Monster' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Battlefield') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Historical') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Warfare') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('EA Digital Illusions CE') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Battlefield: V', (SELECT franchise_id FROM public.franchises WHERE name = 'Battlefield' LIMIT 1), '2018-11-20', (SELECT publisher_id FROM public.publishers WHERE name = 'Electronic Arts' LIMIT 1), 77, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1xbv.jpg', 83728 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 83728), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 83728), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 83728), (SELECT theme_id FROM public.themes WHERE name = 'Historical' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 83728), (SELECT theme_id FROM public.themes WHERE name = 'Warfare' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 83728), (SELECT developer_id FROM public.developers WHERE name = 'EA Digital Illusions CE' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Sony Interactive Entertainment America, PlayStation PC') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Marvel''s Spider-Man, Spider-Man, Marvel') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Hack and slash/Beat ''em up') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Stealth') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Insomniac Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Sony Interactive Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Marvel''s Spider-Man: Miles Morales', (SELECT franchise_id FROM public.franchises WHERE name = 'Marvel''s Spider-Man, Spider-Man, Marvel' LIMIT 1), '2020-11-12', (SELECT publisher_id FROM public.publishers WHERE name = 'Sony Interactive Entertainment America, PlayStation PC' LIMIT 1), 89, 'https://images.igdb.com/igdb/image/upload/t_thumb/cobg1j.jpg', 134581 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 134581), (SELECT genre_id FROM public.genres WHERE name = 'Hack and slash/Beat ''em up' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 134581), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 134581), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 134581), (SELECT theme_id FROM public.themes WHERE name = 'Stealth' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 134581), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 134581), (SELECT developer_id FROM public.developers WHERE name = 'Insomniac Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Team17 Software Limited') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Horror') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Mystery') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Black Salt Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Team17') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Black Salt Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Team17 Digital') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Dredge', NULL, '2023-03-30', (SELECT publisher_id FROM public.publishers WHERE name = 'Team17 Software Limited' LIMIT 1), 86, 'https://images.igdb.com/igdb/image/upload/t_thumb/co9kyk.jpg', 164867 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 164867), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 164867), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 164867), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 164867), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 164867), (SELECT theme_id FROM public.themes WHERE name = 'Horror' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 164867), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 164867), (SELECT theme_id FROM public.themes WHERE name = 'Mystery' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 164867), (SELECT developer_id FROM public.developers WHERE name = 'Black Salt Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Sloclap, Microiids') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Hack and slash/Beat ''em up') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Sloclap') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Sloclap') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Kepler Interactive') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Sifu', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2022-02-08', (SELECT publisher_id FROM public.publishers WHERE name = 'Sloclap, Microiids' LIMIT 1), 79, 'https://images.igdb.com/igdb/image/upload/t_thumb/co4h5s.jpg', 144022 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 144022), (SELECT genre_id FROM public.genres WHERE name = 'Hack and slash/Beat ''em up' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 144022), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 144022), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 144022), (SELECT developer_id FROM public.developers WHERE name = 'Sloclap' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Lucasfilm Games, Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Star Wars, Star Wars Jedi') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Respawn Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Star Wars Jedi: Survivor', (SELECT franchise_id FROM public.franchises WHERE name = 'Star Wars, Star Wars Jedi' LIMIT 1), '2023-04-28', (SELECT publisher_id FROM public.publishers WHERE name = 'Lucasfilm Games, Electronic Arts' LIMIT 1), 85, 'https://images.igdb.com/igdb/image/upload/t_thumb/co5uzk.jpg', 201156 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 201156), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 201156), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 201156), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 201156), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 201156), (SELECT developer_id FROM public.developers WHERE name = 'Respawn Entertainment' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Team17 Software Limited') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Yooka-Laylee') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Playtonic') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Team17') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Yooka-Laylee and the Impossible Lair', (SELECT franchise_id FROM public.franchises WHERE name = 'Yooka-Laylee' LIMIT 1), '2019-10-07', (SELECT publisher_id FROM public.publishers WHERE name = 'Team17 Software Limited' LIMIT 1), 86, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2z9b.jpg', 119259 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119259), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119259), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119259), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119259), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 119259), (SELECT developer_id FROM public.developers WHERE name = 'Playtonic' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Bethesda Softworks') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Prey') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Horror') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Survival') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Stealth') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Arkane Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Bethesda Softworks') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Prey', (SELECT franchise_id FROM public.franchises WHERE name = 'Prey' LIMIT 1), '2017-05-04', (SELECT publisher_id FROM public.publishers WHERE name = 'Bethesda Softworks' LIMIT 1), 76, 'https://images.igdb.com/igdb/image/upload/t_thumb/co9aoh.jpg', 19531 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19531), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19531), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19531), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19531), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19531), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19531), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19531), (SELECT theme_id FROM public.themes WHERE name = 'Horror' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19531), (SELECT theme_id FROM public.themes WHERE name = 'Survival' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19531), (SELECT theme_id FROM public.themes WHERE name = 'Stealth' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 19531), (SELECT developer_id FROM public.developers WHERE name = 'Arkane Studios' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Gearbox Publishing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Risk of Rain') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Survival') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Hopoo Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Gearbox Publishing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Risk of Rain 2', (SELECT franchise_id FROM public.franchises WHERE name = 'Risk of Rain' LIMIT 1), '2020-08-11', (SELECT publisher_id FROM public.publishers WHERE name = 'Gearbox Publishing' LIMIT 1), 87, 'https://images.igdb.com/igdb/image/upload/t_thumb/coaavb.jpg', 28512 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 28512), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 28512), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 28512), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 28512), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 28512), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 28512), (SELECT theme_id FROM public.themes WHERE name = 'Survival' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 28512), (SELECT developer_id FROM public.developers WHERE name = 'Hopoo Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Cozy Cabin Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Thriller') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Stealth') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Party') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Cozy Cabin Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Cozy Cabin Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Oh Deer', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2024-06-27', (SELECT publisher_id FROM public.publishers WHERE name = 'Cozy Cabin Studios' LIMIT 1), NULL, 'https://images.igdb.com/igdb/image/upload/t_thumb/co7v7d.jpg', 285913 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 285913), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 285913), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 285913), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 285913), (SELECT theme_id FROM public.themes WHERE name = 'Thriller' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 285913), (SELECT theme_id FROM public.themes WHERE name = 'Stealth' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 285913), (SELECT theme_id FROM public.themes WHERE name = 'Party' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 285913), (SELECT developer_id FROM public.developers WHERE name = 'Cozy Cabin Studios' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Ubisoft Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('The Crew') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Racing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Ivory Tower') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Ubisoft Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'The Crew 2', (SELECT franchise_id FROM public.franchises WHERE name = 'The Crew' LIMIT 1), '2018-06-29', (SELECT publisher_id FROM public.publishers WHERE name = 'Ubisoft Entertainment' LIMIT 1), 62, 'https://images.igdb.com/igdb/image/upload/t_thumb/coab5o.jpg', 28856 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 28856), (SELECT genre_id FROM public.genres WHERE name = 'Racing' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 28856), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 28856), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 28856), (SELECT developer_id FROM public.developers WHERE name = 'Ivory Tower' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('EA Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Battlefield') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Historical') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Warfare') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('EA Digital Illusions CE') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Battlefield: 1', (SELECT franchise_id FROM public.franchises WHERE name = 'Battlefield' LIMIT 1), '2016-10-21', (SELECT publisher_id FROM public.publishers WHERE name = 'EA Games' LIMIT 1), 89, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2n9d.jpg', 18320 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 18320), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 18320), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 18320), (SELECT theme_id FROM public.themes WHERE name = 'Historical' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 18320), (SELECT theme_id FROM public.themes WHERE name = 'Warfare' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 18320), (SELECT developer_id FROM public.developers WHERE name = 'EA Digital Illusions CE' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Mossmouth, LLC') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Spelunky') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('BlitWorks') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Mossmouth') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Mossmouth') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Spelunky 2', (SELECT franchise_id FROM public.franchises WHERE name = 'Spelunky' LIMIT 1), '2020-09-15', (SELECT publisher_id FROM public.publishers WHERE name = 'Mossmouth, LLC' LIMIT 1), 87, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2f66.jpg', 75239 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75239), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75239), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75239), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75239), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75239), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75239), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75239), (SELECT developer_id FROM public.developers WHERE name = 'BlitWorks' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 75239), (SELECT developer_id FROM public.developers WHERE name = 'Mossmouth' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Hazelight Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Split Fiction', NULL, '2025-03-06', (SELECT publisher_id FROM public.publishers WHERE name = 'Electronic Arts' LIMIT 1), 92, 'https://images.igdb.com/igdb/image/upload/t_thumb/co95gf.jpg', 325594 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 325594), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 325594), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 325594), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 325594), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 325594), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 325594), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 325594), (SELECT developer_id FROM public.developers WHERE name = 'Hazelight Studios' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Mario') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Racing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Party') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Nintendo EPD Production Group No. 9') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Mario Kart World', (SELECT franchise_id FROM public.franchises WHERE name = 'Mario' LIMIT 1), '2025-06-05', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), 92, 'https://images.igdb.com/igdb/image/upload/t_thumb/cob9s9.jpg', 338067 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 338067), (SELECT genre_id FROM public.genres WHERE name = 'Racing' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 338067), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 338067), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 338067), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 338067), (SELECT theme_id FROM public.themes WHERE name = 'Party' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 338067), (SELECT developer_id FROM public.developers WHERE name = 'Nintendo EPD Production Group No. 9' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Rockstar Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Red Dead') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Drama') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Rockstar Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Take-Two Interactive') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Rockstar Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Red Dead Redemption II', (SELECT franchise_id FROM public.franchises WHERE name = 'Red Dead' LIMIT 1), '2018-10-26', (SELECT publisher_id FROM public.publishers WHERE name = 'Rockstar Games' LIMIT 1), 94, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1q1f.jpg', 25076 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25076), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25076), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25076), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25076), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25076), (SELECT theme_id FROM public.themes WHERE name = 'Drama' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25076), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 25076), (SELECT developer_id FROM public.developers WHERE name = 'Rockstar Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('505 Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Remedy Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('505 Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Control', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2020-08-27', (SELECT publisher_id FROM public.publishers WHERE name = '505 Games' LIMIT 1), 80, 'https://images.igdb.com/igdb/image/upload/t_thumb/co97ix.jpg', 122313 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 122313), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 122313), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 122313), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 122313), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 122313), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 122313), (SELECT developer_id FROM public.developers WHERE name = 'Remedy Entertainment' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Sony Interactive Entertainment America') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Helldivers') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Tactical') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Arrowhead Game Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Sony Interactive Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Helldivers II', (SELECT franchise_id FROM public.franchises WHERE name = 'Helldivers' LIMIT 1), '2024-02-08', (SELECT publisher_id FROM public.publishers WHERE name = 'Sony Interactive Entertainment America' LIMIT 1), 88, 'https://images.igdb.com/igdb/image/upload/t_thumb/coabbf.jpg', 250616 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 250616), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 250616), (SELECT genre_id FROM public.genres WHERE name = 'Tactical' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 250616), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 250616), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 250616), (SELECT developer_id FROM public.developers WHERE name = 'Arrowhead Game Studios' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Lego Group, The') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('LEGO') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Puzzle') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Kids') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Light Brick Studio') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('The LEGO Group') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'LEGO Builder’s Journey', (SELECT franchise_id FROM public.franchises WHERE name = 'LEGO' LIMIT 1), '2019-12-20', (SELECT publisher_id FROM public.publishers WHERE name = 'Lego Group, The' LIMIT 1), 77, 'https://images.igdb.com/igdb/image/upload/t_thumb/co84pn.jpg', 127985 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 127985), (SELECT genre_id FROM public.genres WHERE name = 'Puzzle' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 127985), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 127985), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 127985), (SELECT theme_id FROM public.themes WHERE name = 'Kids' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 127985), (SELECT developer_id FROM public.developers WHERE name = 'Light Brick Studio' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Star Wars: Battlefront, Star Wars') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('EA Digital Illusions CE') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Electronic Arts') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Star Wars Battlefront II', (SELECT franchise_id FROM public.franchises WHERE name = 'Star Wars: Battlefront, Star Wars' LIMIT 1), '2017-11-17', (SELECT publisher_id FROM public.publishers WHERE name = 'Electronic Arts' LIMIT 1), 72, 'https://images.igdb.com/igdb/image/upload/t_thumb/co3wi7.jpg', 26401 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26401), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26401), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26401), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26401), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26401), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 26401), (SELECT developer_id FROM public.developers WHERE name = 'EA Digital Illusions CE' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Ubisoft Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Mario, Rabbids, Mario + Rabbids') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Turn-based strategy (TBS)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Tactical') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Ubisoft Paris') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Ubisoft Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Mario + Rabbids: Sparks of Hope', (SELECT franchise_id FROM public.franchises WHERE name = 'Mario, Rabbids, Mario + Rabbids' LIMIT 1), '2022-10-20', (SELECT publisher_id FROM public.publishers WHERE name = 'Ubisoft Entertainment' LIMIT 1), 88, 'https://images.igdb.com/igdb/image/upload/t_thumb/cob89b.jpg', 152201 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 152201), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 152201), (SELECT genre_id FROM public.genres WHERE name = 'Turn-based strategy (TBS)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 152201), (SELECT genre_id FROM public.genres WHERE name = 'Tactical' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 152201), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 152201), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 152201), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 152201), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 152201), (SELECT developer_id FROM public.developers WHERE name = 'Ubisoft Paris' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Dotemu') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Fighting') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Role-playing (RPG)') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('DotEmu') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('DotEmu') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Absolum', NULL, '2025-10-09', (SELECT publisher_id FROM public.publishers WHERE name = 'Dotemu' LIMIT 1), 90, 'https://images.igdb.com/igdb/image/upload/t_thumb/coatin.jpg', 334239 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 334239), (SELECT genre_id FROM public.genres WHERE name = 'Fighting' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 334239), (SELECT genre_id FROM public.genres WHERE name = 'Role-playing (RPG)' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 334239), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 334239), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 334239), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 334239), (SELECT developer_id FROM public.developers WHERE name = 'DotEmu' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Sony Interactive Entertainment America') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Ratchet & Clank') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Shooter') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Insomniac Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Sony Interactive Entertainment') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('PlayStation Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Ratchet & Clank: Rift Apart', (SELECT franchise_id FROM public.franchises WHERE name = 'Ratchet & Clank' LIMIT 1), '2021-06-11', (SELECT publisher_id FROM public.publishers WHERE name = 'Sony Interactive Entertainment America' LIMIT 1), 91, 'https://images.igdb.com/igdb/image/upload/t_thumb/co2str.jpg', 134582 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 134582), (SELECT genre_id FROM public.genres WHERE name = 'Shooter' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 134582), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 134582), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 134582), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 134582), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 134582), (SELECT developer_id FROM public.developers WHERE name = 'Insomniac Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Aggro Crab, Landfall Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Landfall Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Aggro Crab Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Landfall Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Aggro Crab Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Peak', NULL, '2025-06-16', (SELECT publisher_id FROM public.publishers WHERE name = 'Aggro Crab, Landfall Games' LIMIT 1), 86, 'https://images.igdb.com/igdb/image/upload/t_thumb/coat49.jpg', 349524 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 349524), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 349524), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 349524), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 349524), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 349524), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 349524), (SELECT developer_id FROM public.developers WHERE name = 'Landfall Games' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 349524), (SELECT developer_id FROM public.developers WHERE name = 'Aggro Crab Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Team17 Software Limited') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Overcooked') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Tactical') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Comedy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Kids') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Party') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Ghost Town Games') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Team17') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Overcooked 2', (SELECT franchise_id FROM public.franchises WHERE name = 'Overcooked' LIMIT 1), '2018-08-07', (SELECT publisher_id FROM public.publishers WHERE name = 'Team17 Software Limited' LIMIT 1), 80, 'https://images.igdb.com/igdb/image/upload/t_thumb/coasbb.jpg', 103341 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103341), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103341), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103341), (SELECT genre_id FROM public.genres WHERE name = 'Tactical' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103341), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103341), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103341), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103341), (SELECT theme_id FROM public.themes WHERE name = 'Comedy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103341), (SELECT theme_id FROM public.themes WHERE name = 'Kids' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103341), (SELECT theme_id FROM public.themes WHERE name = 'Party' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 103341), (SELECT developer_id FROM public.developers WHERE name = 'Ghost Town Games' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Pokemon') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Sandbox') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Omega Force') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Game Freak') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('The Pokémon Company') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Pokopia', (SELECT franchise_id FROM public.franchises WHERE name = 'Pokemon' LIMIT 1), '2026-03-05', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), 90, 'https://images.igdb.com/igdb/image/upload/t_thumb/cobbur.jpg', 366893 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 366893), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 366893), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 366893), (SELECT theme_id FROM public.themes WHERE name = 'Sandbox' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 366893), (SELECT developer_id FROM public.developers WHERE name = 'Omega Force' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 366893), (SELECT developer_id FROM public.developers WHERE name = 'Game Freak' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Team Cherry') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Hollow Knight') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Team Cherry') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Team Cherry') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Hollow Knight: Silksong', (SELECT franchise_id FROM public.franchises WHERE name = 'Hollow Knight' LIMIT 1), '2025-09-04', (SELECT publisher_id FROM public.publishers WHERE name = 'Team Cherry' LIMIT 1), 90, 'https://images.igdb.com/igdb/image/upload/t_thumb/cobebu.jpg', 115289 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 115289), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 115289), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 115289), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 115289), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 115289), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 115289), (SELECT developer_id FROM public.developers WHERE name = 'Team Cherry' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Coffee Stain Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('N/A') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Simulator') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Strategy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Indie') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Science fiction') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Sandbox') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Open world') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Coffee Stain Studios') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Coffee Stain Publishing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Satisfactory', (SELECT franchise_id FROM public.franchises WHERE name = 'N/A' LIMIT 1), '2024-09-10', (SELECT publisher_id FROM public.publishers WHERE name = 'Coffee Stain Studios' LIMIT 1), 95, 'https://images.igdb.com/igdb/image/upload/t_thumb/co8tfy.jpg', 90558 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 90558), (SELECT genre_id FROM public.genres WHERE name = 'Simulator' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 90558), (SELECT genre_id FROM public.genres WHERE name = 'Strategy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 90558), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 90558), (SELECT genre_id FROM public.genres WHERE name = 'Indie' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 90558), (SELECT theme_id FROM public.themes WHERE name = 'Science fiction' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 90558), (SELECT theme_id FROM public.themes WHERE name = 'Sandbox' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 90558), (SELECT theme_id FROM public.themes WHERE name = 'Open world' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 90558), (SELECT developer_id FROM public.developers WHERE name = 'Coffee Stain Studios' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Mario') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Racing') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Arcade') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Fantasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Kids') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Party') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Nintendo EAD Software Development Group No.1') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Mario Kart 8', (SELECT franchise_id FROM public.franchises WHERE name = 'Mario' LIMIT 1), '2014-05-29', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), 91, 'https://images.igdb.com/igdb/image/upload/t_thumb/co213q.jpg', 2350 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2350), (SELECT genre_id FROM public.genres WHERE name = 'Racing' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2350), (SELECT genre_id FROM public.genres WHERE name = 'Arcade' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2350), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2350), (SELECT theme_id FROM public.themes WHERE name = 'Fantasy' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2350), (SELECT theme_id FROM public.themes WHERE name = 'Kids' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2350), (SELECT theme_id FROM public.themes WHERE name = 'Party' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 2350), (SELECT developer_id FROM public.developers WHERE name = 'Nintendo EAD Software Development Group No.1' LIMIT 1) ) ON CONFLICT DO NOTHING;


INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.franchises (name) VALUES ('Donkey Kong') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Platform') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.genres (name) VALUES ('Adventure') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.themes (name) VALUES ('Action') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.developers (name) VALUES ('Nintendo EPD Production Group No. 8') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.publishers (name) VALUES ('Nintendo') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES ('17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid, 'Donkey Kong Bananza', (SELECT franchise_id FROM public.franchises WHERE name = 'Donkey Kong' LIMIT 1), '2025-07-17', (SELECT publisher_id FROM public.publishers WHERE name = 'Nintendo' LIMIT 1), 90, 'https://images.igdb.com/igdb/image/upload/t_thumb/cobd1q.jpg', 338106 ) ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 338106), (SELECT genre_id FROM public.genres WHERE name = 'Platform' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 338106), (SELECT genre_id FROM public.genres WHERE name = 'Adventure' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 338106), (SELECT theme_id FROM public.themes WHERE name = 'Action' LIMIT 1) ) ON CONFLICT DO NOTHING;
INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = 338106), (SELECT developer_id FROM public.developers WHERE name = 'Nintendo EPD Production Group No. 8' LIMIT 1) ) ON CONFLICT DO NOTHING;


COMMIT;
