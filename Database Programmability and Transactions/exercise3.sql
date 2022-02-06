
DELIMITER $$
CREATE PROCEDURE usp_get_towns_starting_with(s TEXT )
BEGIN
	SELECT t.name AS town_name
    FROM towns AS t
    WHERE t.name LIKE CONCAT(s, '%')
	ORDER BY t.name;
END $$
DELIMITER ;

CALL usp_get_towns_starting_with('b')