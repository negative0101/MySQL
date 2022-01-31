SELECT e.first_name,e.last_name,t.name, a.address_text
FROM towns AS t
LEFT JOIN  addresses AS a  ON t.town_id = a.town_id
LEFT JOIN employees AS e ON e.address_id = a.address_id
WHERE e.first_name IS NOT NULL
ORDER BY e.first_name,e.last_name
LIMIT 5