-- select all movies directed by S.S.
SELECT * FROM movies WHERE director_id = 2;


-- select all movies starring Leonardo DeCaprio
SELECT name, released 
FROM movies 
INNER JOIN movies_actors ON movies.id = movies_actors.movie_id 
INNER JOIN actors        ON actors.id = movies_actors.actor_id 
WHERE actors.last ='DeCaprio';

-- select all movies directed by S.S & starring Roy Scheider
SELECT movies.name, actors.first, actors.last, directors.first, directors.last 
FROM movies 
INNER JOIN movies_actors ON movies.id            = movies_actors.movie_id 
INNER JOIN actors        ON actors.id            = movies_actors.actor_id 
INNER JOIN directors     ON directors.id         = movies.director_id
WHERE directors.last='Spielberg' AND actors.last = 'Scheider';

-- select all actors in movie 'Forrest Gump'
SELECT movies.name, actors.first, actors.last 
FROM movies 
INNER JOIN movies_actors ON movies.id = movies_actors.movie_id 
INNER JOIN actors        ON actors.id = movies_actors.actor_id 
WHERE movies.name = 'Forrest Gump';