DELIMITER $$
CREATE FUNCTION udf_courses_by_client (phone_num VARCHAR(20))
RETURNS INT
BEGIN
RETURN  (SELECT COUNT(*) 
FROM clients
JOIN courses AS c ON c.client_id = clients.id
WHERE clients.phone_number = phone_num);
END$$
DELIMITER ;
