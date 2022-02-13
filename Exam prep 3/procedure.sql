DELIMITER $$
CREATE PROCEDURE udp_courses_by_address (address_name VARCHAR(100))
BEGIN
SELECT 
	a.name,
    cl.full_name,
    (CASE 
		WHEN co.bill <20 THEN 'Low'
        WHEN co.bill <30 THEN 'Medium'
        ELSE 'High'
        END
			) AS level_of_bill,
	c.make,
    c.condition,
    cat.name
FROM addresses AS a
JOIN courses AS co ON co.from_address_id = a.id
JOIN clients AS cl ON cl.id = co.client_id
JOIN cars AS c ON c.id = co.car_id
JOIN categories AS cat ON c.category_id = cat.id
WHERE a.name = address_name
ORDER BY c.make,cl.full_name;
END$$
DELIMITER ;