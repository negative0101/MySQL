SET SQL_SAFE_UPDATES = 0;
UPDATE coaches
SET
	coach_level = coach_level +1
WHERE 
	first_name LIKE 'A%'
		AND 
        (SELECT COUNT(*) FROM players_coaches WHERE coach_id = id) >0;


SELECT * FROM coaches;