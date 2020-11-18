SELECT DISTINCT name as actorName, character
FROM Actors NATURAL JOIN PlaysIn
WHERE character like 'George%'
ORDER BY actorName, character ASC