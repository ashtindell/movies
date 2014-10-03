INSERT INTO directors (id, first, last) VALUES 
(1, 'Robert',     'Zemeckis'      ),
(2, 'Steven',     'Spielberg'     ),
(3, 'James',      'Cameron'       ),
(4, 'Chris',      'Columbus'      );

INSERT INTO actors (id, first, last) VALUES 
(1, 'Tom',        'Hanks'         ),
(2, 'Roy',        'Scheider'      ),
(3, 'Kate',       'Winslet'       ),
(4, 'Macauley',   'Culkin'        ),
(5, 'Michael J.', 'Fox'           ),
(6, 'Leonardo',   'DeCaprio'      );

INSERT INTO movies (id, director_id, name, released) VALUES 
(1, 1, 'Forrest Gump',       1994 ),
(2, 2, 'Jaws',               1975 ),
(3, 3, 'Titanic',            1997 ),
(4, 4, 'Home Alone',         1990 ),
(5, 1, 'Back to the Future', 1985 );

INSERT INTO movies_actors (id, actor_id, movie_id) VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 3);