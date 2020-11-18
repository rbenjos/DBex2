SELECT DISTINCT movieId, title
FROM Actors NATURAL JOIN Movies NATURAL JOIN PlaysIn
WHERE dyear = year and (genre = 'Drama' or genre = 'Documentary')
ORDER BY movieId , title ASC