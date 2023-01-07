create table IF NOT exists GENRES(
	genresID SERIAL primary key,
	gen_name VARCHAR(50) unique);

create table IF NOT exists ARTISTS(
	artistID SERIAL primary key,
	art_name VARCHAR(50) unique,
	art_alias VARCHAR(50) unique);
	
create table IF NOT exists GENRE_ARTIST (
	genresID INTEGER REFERENCES GENRES(genresID),
	artistID INTEGER REFERENCES ARTISTS(artistID),
	CONSTRAINT pk_GA PRIMARY KEY (genresID, artistID));
	
create table IF NOT exists ALBUMS(
	albumID SERIAL primary key,
	alb_name VARCHAR(60) not null,
	year_production INTEGER not null);
	
create table IF NOT exists ALBUM_ARTISTS(
	albumID INTEGER REFERENCES ALBUMS(albumID),
	artistID INTEGER REFERENCES ARTISTS(artistID),
	CONSTRAINT pk_AA PRIMARY KEY (albumID, artistID));
	
create table IF NOT exists TRACKS(
	trackID SERIAL primary key,
	track_name VARCHAR(100) not null,
	long_track NUMERIC(3,2) not null,
	artist INTEGER REFERENCES ARTISTS(artistID), 
	album INTEGER REFERENCES ALBUMS(albumID));

create table IF NOT exists COLLECTIONS(
	collectionID serial primary key,
	collect_name VARCHAR(50) not null,
	collct_year_prod INTEGER not null);

create table IF NOT exists COLLECTION_TRACKS(
	collectionID INTEGER REFERENCES COLLECTIONS(collectionID),
	trackID INTEGER REFERENCES TRACKS(trackID),
	CONSTRAINT pk_CT PRIMARY KEY (collectionID, trackID));
	
