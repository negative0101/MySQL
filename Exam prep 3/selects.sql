SELECT make,model,`condition`
FROM cars 
ORDER BY id;


-- -----------

SELECT d.first_name,d.last_name,c.make,c.model,c.mileage
FROM drivers AS d
JOIN cars_drivers AS cd on d.id = cd.driver_id
JOIN cars  AS c ON c.id = cd.car_id
WHERE c.mileage IS NOT NULL
ORDER BY c.mileage DESC,d.first_name;

-- -----------

SELECT 
		c.id AS car_id ,
        c.make,
        c.mileage,
        COUNT(co.id) AS count_of_courses,
        ROUND(AVG(co.bill) ,2) AS avg_bill
FROM cars AS c
	LEFT JOIN 
		courses AS co ON co.car_id = c.id
GROUP BY c.id
HAVING count_of_courses != 2
ORDER BY count_of_courses DESC, c.id;

-- ------------


SELECT c.full_name,COUNT(ca.id) AS count_of_cars,SUM(co.bill) AS total_sum
FROM clients AS c
JOIN courses AS co ON c.id = co.client_id
JOIN cars AS ca ON ca.id = co.car_id
WHERE c.full_name LIKE '_a%' 
GROUP BY c.id
HAVING COUNT(ca.id)>1 
ORDER BY c.full_name ASC;

-- ---------------


SELECT 
    a.name,
    (IF(HOUR(co.`start`) BETWEEN 6 AND 20,
        'Day',
        'Night')) AS day_time,
    co.bill,
    cl.full_name,
    c.make,
    c.model,
    cat.name AS category_name
FROM clients AS cl
JOIN courses AS co ON cl.id = co.client_id
JOIN addresses AS a on co.from_address_id = a.id
JOIN cars AS c ON co.car_id = c.id
JOIN categories AS cat ON c.category_id = cat.id
ORDER BY co.id










