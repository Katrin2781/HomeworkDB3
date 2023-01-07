-- Добавление записей в таблицу genres. 
INSERT INTO genres(gen_name) VALUES ('Рэп');
INSERT INTO genres(gen_name) VALUES ('Рок-музыка');
INSERT INTO genres(gen_name) VALUES ('Джаз');
INSERT INTO genres(gen_name) VALUES ('Классическая музыка');
INSERT INTO genres(gen_name) VALUES ('Танцевальная музыка');
INSERT INTO genres(gen_name) VALUES ('Поп-музыка');

--Добавление записей в таблицу artists
INSERT INTO artists(art_name, art_alias) VALUES ('Маршалл Брюс Мэтерс III', 'Eminem');
INSERT INTO artists(art_name, art_alias) VALUES ('Lesane Parish Crooks', '2Pac');
INSERT INTO artists(art_name, art_alias) VALUES ('Ариана Бутера-Гранде', 'Ариана Гранде');
INSERT INTO artists(art_name, art_alias) VALUES ('Justin Drew Bieber', 'Justin Bieber');
INSERT INTO artists(art_name, art_alias) VALUES ('Амала Ратна Зандиле Дламини', 'Doja Cat');
INSERT INTO artists(art_name, art_alias) VALUES ('Анна Владимировна Иванова', 'Ханна');
INSERT INTO artists(art_name, art_alias) VALUES ('Клавдия Высокова', 'Клава Кока');
INSERT INTO artists(art_name, art_alias) VALUES ('Дмитрий Билан', 'Дима Билан');

--Добавление записей в таблицу genre_artist
INSERT INTO genre_artist  VALUES (6, 3);
INSERT INTO genre_artist  VALUES (6, 5);
INSERT INTO genre_artist  VALUES (6, 6);
INSERT INTO genre_artist  VALUES (6, 7);
INSERT INTO genre_artist  VALUES (6, 8);
INSERT INTO genre_artist  VALUES (1, 1);
INSERT INTO genre_artist  VALUES (1, 2);
INSERT INTO genre_artist  VALUES (5, 3);
INSERT INTO genre_artist  VALUES (5, 4);
INSERT INTO genre_artist  VALUES (5, 7);

--Добавление записей в таблицу albums
INSERT INTO albums(alb_name, year_production)  VALUES ('Перезагрузка', 2020);
INSERT INTO albums(alb_name, year_production)  VALUES ('Неприлично о личном', 2019);
INSERT INTO albums(alb_name, year_production)  VALUES ('Мысли', 2018);
INSERT INTO albums(alb_name, year_production)  VALUES ('Kamikaze', 2018);
INSERT INTO albums(alb_name, year_production)  VALUES ('Positions', 2020);
INSERT INTO albums(alb_name, year_production)  VALUES ('Sweetener', 2018);
INSERT INTO albums(alb_name, year_production)  VALUES ('Changes', 2020);
INSERT INTO albums(alb_name, year_production)  VALUES ('Justice', 2021);

--добавление записей в таблицу album_artists
INSERT INTO album_artists  VALUES (1, 8);
INSERT INTO album_artists  VALUES (2, 7);
INSERT INTO album_artists  VALUES (3, 5);
INSERT INTO album_artists  VALUES (4, 1);
INSERT INTO album_artists  VALUES (5, 3);
INSERT INTO album_artists  VALUES (6, 3);
INSERT INTO album_artists  VALUES (7, 4);
INSERT INTO album_artists  VALUES (8, 4);

-- Добавление записей в таблицу tracks
INSERT INTO tracks (track_name, long_track, artist, album)  VALUES ('Океан', 4.34, 8, 1);
INSERT INTO tracks (track_name, long_track, artist, album)  VALUES ('Химия', 3.20, 8, 1);
INSERT INTO tracks (track_name, long_track, artist, album)  VALUES ('Молния', 2.59, 8, 1);
INSERT INTO tracks (track_name, long_track, artist, album)  VALUES ('Про белые розы', 3.38, 8, 1);
INSERT INTO tracks (track_name, long_track, artist, album)  VALUES ('Не вернусь', 3.38, 5, 3);
INSERT INTO tracks (track_name, long_track, artist, album)  VALUES ('Глаза', 3.05, 5, 3);
INSERT INTO tracks (track_name, long_track, artist, album)  VALUES ('Greatest', 3.46, 1, 4);
INSERT INTO tracks (track_name, long_track, artist, album)  VALUES ('Normal', 3.42, 1, 4);
INSERT INTO tracks (track_name, long_track, artist, album)  VALUES ('Kamikaze', 3.36, 1, 4);
INSERT INTO tracks (track_name, long_track, artist, album)  VALUES ('Sweetener', 3.28, 3, 6);
INSERT INTO tracks (track_name, long_track, artist, album)  VALUES ('Blazed', 3.16, 3, 6);
INSERT INTO tracks (track_name, long_track, artist, album)  VALUES ('Shut up', 2.37, 3, 5);
INSERT INTO tracks (track_name, long_track, artist, album)  VALUES ('Nasty', 3.20, 3, 5);
INSERT INTO tracks (track_name, long_track, artist, album)  VALUES ('Be my baby', 3.37, 3, 5);
INSERT INTO tracks (track_name, long_track, artist, album)  VALUES ('Habitual', 2.48, 4, 7);
INSERT INTO tracks (track_name, long_track, artist, album)  VALUES ('Yammy', 3.28, 4, 7);
INSERT INTO tracks (track_name, long_track, artist, album)  VALUES ('Суженая', 2.25, 7, 2);
INSERT INTO tracks (track_name, long_track, artist, album)  VALUES ('Половина', 3.03, 7, 2);
INSERT INTO tracks (track_name, long_track, artist, album)  VALUES ('Holy', 3.32, 4, 8);
INSERT INTO tracks (track_name, long_track, artist, album)  VALUES ('Anyone', 3.10, 4, 8);

--Добавление записей в таблицу collections
INSERT INTO collections (collect_name,collct_year_prod)  VALUES ('13 друзей Билана', 2021);
INSERT INTO collections (collect_name,collct_year_prod)  VALUES ('Shady XV', 2014);
INSERT INTO collections (collect_name,collct_year_prod)  VALUES ('Лучшие хиты 2018', 2018);
INSERT INTO collections (collect_name,collct_year_prod)  VALUES ('Танцевальные хиты', 2019);
INSERT INTO collections (collect_name,collct_year_prod)  VALUES ('Танцевальные русские', 2018);
INSERT INTO collections (collect_name,collct_year_prod)  VALUES ('Новогодние 2020', 2020);
INSERT INTO collections (collect_name,collct_year_prod)  VALUES ('Танцевальные зарубежные', 2021);
INSERT INTO collections (collect_name,collct_year_prod)  VALUES ('Хиты 2019', 2019);

--Добавление записей в таблицу collection_tracks
INSERT INTO collection_tracks VALUES (1, 4);
INSERT INTO collection_tracks VALUES (1, 3);
INSERT INTO collection_tracks VALUES (3, 10);
INSERT INTO collection_tracks VALUES (3, 8);
INSERT INTO collection_tracks VALUES (3, 6);
INSERT INTO collection_tracks VALUES (3, 3);
INSERT INTO collection_tracks VALUES (4, 2);
INSERT INTO collection_tracks VALUES (4, 11);
INSERT INTO collection_tracks VALUES (4, 5);
INSERT INTO collection_tracks VALUES (5, 1);
INSERT INTO collection_tracks VALUES (5, 9);
INSERT INTO collection_tracks VALUES (5, 14);
INSERT INTO collection_tracks VALUES (6, 4);
INSERT INTO collection_tracks VALUES (6, 12);
INSERT INTO collection_tracks VALUES (6, 15);
INSERT INTO collection_tracks VALUES (8, 3);
