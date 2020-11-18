SELECT DISTINCT actorId
FROM Movies NATURAL JOIN PlaysIn
WHERE rating > 7

EXCEPT

SELECT DISTINCT actorId
FROM Movies NATURAL JOIN PlaysIn
WHERE rating < 7 or rating = 7 or rating IS NULL
ORDER BY actorId ASC;
