DELIMITER $$
CREATE FUNCTION `udf_customer_products_count` (name VARCHAR(30))
RETURNS INTEGER
DETERMINISTIC
BEGIN
	RETURN (SELECT COUNT(*)
	FROM customers AS c 
	JOIN orders AS o ON o.customer_id = c.id
    JOIN orders_products AS op ON op.order_id = o.id
	WHERE first_name = name);
END$$
DELIMITER ;

SELECT c.first_name,c.last_name, udf_customer_products_count('Shirley') as `total_products` FROM customers c
WHERE c.first_name = 'Shirley';