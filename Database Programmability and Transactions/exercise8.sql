DELIMITER $$
CREATE PROCEDURE usp_get_holders_with_balance_higher_than(money DOUBLE(19,4))
BEGIN
	SELECT a_s.first_name,a_s.last_name
    FROM account_holders AS a_s
	JOIN accounts AS a ON a.account_holder_id = a_s.id
    GROUP BY a_s.id
    HAVING SUM(balance )> money
	ORDER BY a_s.id;
END$$
DELIMITER ;

CALL usp_get_holders_with_balance_higher_than(7000)