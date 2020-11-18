SELECT DISTINCT movieId , title
FROM Movies NATURAL JOIN
(
SELECT A1.actorId, A2.actorId, P1.movieId
FROM (Actors A1 NATURAL JOIN PlaysIn P1) INNER JOIN 
(Actors A2 NATURAL JOIN PlaysIn P2) on 
(P1.movieId = P2.movieId and A1.actorId <> A2.actorId)
WHERE A1.byear - A2.byear > 60 or A2.byear - A1.byear > 60
) M3
ORDER BY movieId , title ASC
