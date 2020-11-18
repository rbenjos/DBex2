SELECT DISTINCT A1.actorId as actorId1, A2.actorId as actorId2
FROM PlaysIn A1 INNER JOIN  PlaysIn A2 on
(A1.movieId = A2.movieId AND A1.actorId <> A2.actorId)
WHERE NOT EXISTS 
(
SELECT * 
FROM PlaysIn P2
WHERE P2.actorId = A2.actorId AND
movieId NOT IN
(
SELECT movieId
FROM PlaysIn P1
WHERE P1.actorId = A1.actorId
)
)
ORDER BY actorId1, actorId2
