SELECT count(*) AS items_count , c.name, SUM(p.quantity_in_stock) AS total_quantity
FROM categories AS c
JOIN products AS p ON p.category_id = c.id
GROUP BY c.name
ORDER BY items_count DESC, total_quantity ASC
LIMIT 5 