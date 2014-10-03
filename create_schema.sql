
DROP TABLE IF EXISTS movies_actors;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS directors;

CREATE TABLE directors (
  id         SERIAL PRIMARY KEY,
  first      VARCHAR(50) not null,
  last       VARCHAR(50) not null
);

CREATE TABLE actors (
  id         SERIAL PRIMARY KEY,
  first      VARCHAR(50) not null,
  last       VARCHAR(50) not null
);

CREATE TABLE movies (
  id            SERIAL PRIMARY KEY,
  director_id   INT8 references directors(id),
  name          VARCHAR(50) not null,
  released      INTEGER DEFAULT 4
);

CREATE TABLE movies_actors (
  id         SERIAL PRIMARY KEY,
  actor_id   INT8 REFERENCES actors(id),
  movie_id   INT8 REFERENCES movies(id)
);