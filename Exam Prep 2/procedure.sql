DELIMITER $$
CREATE PROCEDURE `udp_modify_user` (address VARCHAR(30),town VARCHAR(30))
BEGIN
	IF((SELECT a.address
	FROM addresses AS a
    WHERE address = a.address)  IS NOT NULL)
    THEN UPDATE users AS u
		JOIN addresses AS aa ON u.id = aa.user_id
	SET u.age =u.age + 10
    WHERE aa.address = address AND aa.town= town;
    END IF;

END $$
DELIMITER ;

CALL udp_modify_user ('97 Valley Edge Parkway', 'Divinópolis');
