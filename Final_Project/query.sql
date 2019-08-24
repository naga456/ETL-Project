--If tables exist prior to running this query, drop them
DROP TABLE imdb_films;
DROP TABLE vgchartz_video_games;
DROP TABLE video_game_to_film;
DROP TABLE film_to_video_game;

--Create the tables required for the pandas dataframe
--that will be imported
CREATE TABLE imdb_films(
	movie_title VARCHAR(1023),
	plot_keywords VARCHAR(1023) ARRAY,
	language VARCHAR(1023),
	country VARCHAR(1023),
	year VARCHAR(1023),
	genres VARCHAR(1023) ARRAY,
	duration_minutes DECIMAL,
	director_name VARCHAR(1023),
	imdb_score DECIMAL,
	imdb_link VARCHAR(1023),
	actor_1 VARCHAR(1023),
	actor_2 VARCHAR(1023),
	actor_3 VARCHAR(1023),
	film_budget DECIMAL,
	gross_income DECIMAL
);

CREATE TABLE vgchartz_video_games(
	video_game_name VARCHAR(1023),
	key_words VARCHAR(1023) ARRAY,
	year VARCHAR(1023),
	genre VARCHAR(1023),
	publisher VARCHAR(1023),
	developer VARCHAR(1023),
	platform_console VARCHAR(1023),
	vgchartz_url VARCHAR(1023),
	total_shipped DECIMAL
);

CREATE TABLE video_game_to_film(
	title VARCHAR(1023),
	release_date VARCHAR(1023),
	world_wide_box_office VARCHAR(1023),
	distributor VARCHAR(1023),
	original_game_publisher VARCHAR(1023),
	type VARCHAR(1023)
);

CREATE TABLE film_to_video_game(
	name VARCHAR(1023),
	year VARCHAR(1023),
	developer VARCHAR(1023),
	publisher VARCHAR(1023),
	film VARCHAR(1023)
);

--Check the tables to ensure they are in the correct format
SELECT * FROM imdb_films;
SELECT * FROM vgchartz_video_games;
SELECT * FROM video_game_to_film;
SELECT * FROM film_to_video_game;