-- количество исполнителей в каждом жанре
select g.gen_name, count(artistid) as count_artist
	from genres g, genre_artist ga 
	where g.genresid = ga.genresid 
	group by ga.genresid, g.gen_name;


-- количество треков, вошедших в альбомы 2019-2020 годов
select a.alb_name, a.year_production, count(t.trackid) as count_tracks
	from albums a, tracks t
	where a.albumid = t.album and a.year_production between 2019 and 2020
	group by a.albumid;

--средняя продолжительность треков по каждому альбому
select a.alb_name, a.year_production, avg(t.long_track) as avg_tracks
	from albums a, tracks t
	where a.albumid = t.album
	group by a.albumid;

--все исполнители, которые не выпустили альбомы в 2020 году
select a.art_name, a2.alb_name  
	from artists a ,albums a2 ,album_artists aa 
	where a.artistid = aa.artistid and a2.albumid = aa.albumid and a2.year_production != 2020;

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами)
select distinct collect_name, collct_year_prod  
	from collections c
	join collection_tracks ct on c.collectionid =ct.collectionid 
	join tracks t on ct.trackid = t.trackid 
	where t.artist =(
			select artistid 
				from artists 
				where art_alias='Дима Билан');

--название альбомов, в которых присутствуют исполнители более 1 жанра
select a.alb_name, a2.art_alias 
	from albums a
	join album_artists aa on a.albumid = aa.albumid 
	join artists a2 on a2.artistid =aa.artistid 
	join genre_artist ga on a2.artistid = ga.artistid 
	group by ga.artistid, a.alb_name, a2.art_alias
	having count(ga.genresid) >1;

--наименование треков, которые не входят в сборники
select track_name, trackid  
	from tracks t 
	where t.trackid not in(
						select trackid 
							from collection_tracks ct2);

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)
select art_alias 
	from artists a 
	join tracks t ON a.artistid = t.artist 
	where t.long_track =(
		select min(long_track) 
			from tracks t2 );

--название альбомов, содержащих наименьшее количество треков
select distinct a.alb_name from albums a 
left join tracks t on t.album  = a.albumid 
where t.album  in(
    select album
   		from tracks
    	group by album
    	having count(trackid) = (
        	select count(trackid) as count_tr
        		from tracks
        		group by album
        		order by count_tr
       			limit 1));





