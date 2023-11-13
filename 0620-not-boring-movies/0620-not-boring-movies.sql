SELECT
    c.id,
    c.movie,
    c.description,
    c.rating
    
FROM cinema c

WHERE c.id % 2 != 0 AND c.description != "boring"

ORDER BY c.rating DESC