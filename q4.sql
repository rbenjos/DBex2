SELECT DISTINCT actorId
FROM Actors NATURAL JOIN Movies NATURAL JOIN PlaysIn
Where rating > 70
ORDER BY actorId ASC