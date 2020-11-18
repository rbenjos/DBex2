
SELECT DISTINCT A1.actorId
FROM PlaysIn A1
Where movieId in
(
SELECT DISTINCT  movieId as Mid
FROM Actors A2 NATURAL JOIN PlaysIn P2
WHERE A2.name = 'Charles Chaplin'
)

INTERSECT

SELECT DISTINCT actorId
FROM PlaysIn NATURAL JOIN Movies
WHERE duration > 90
ORDER BY actorId
