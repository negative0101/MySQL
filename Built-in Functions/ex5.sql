SELECT name
FROM towns
WHERE char_length(name) BETWEEN 5 AND 6
ORDER BY name ASC