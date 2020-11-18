
SELECT A1.actorId, A2.actorId, movieId
FROM Actors A1 NATURAL JOIN PlaysIn P2 NATURAL JOIN Actors A2

