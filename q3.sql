SELECT DISTINCT actorId
FROM Actors NATURAL JOIN PlaysIn NATURAL JOIN
(
SELECT movieId
FROM Actors NATURAL JOIN PlaysIn NATURAL JOIN Movies
WHERE name = 'Charles Chaplin'
)
WHERE name <> 'Charles Chaplin'
INTERSECTION 
SELECT DISTINCT actorId
FROM Actors NATURAL JOIN PlaysIn NATURAL JOIN Movies
WHERE duration > 90;
ORDER BY actorId ASC 