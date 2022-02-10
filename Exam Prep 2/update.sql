SET SQL_SAFE_UPDATES = 0;

UPDATE addresses as a 
SET country = (
	CASE 
		WHEN a.country LIKE 'B%' THEN 'Blocked'
		WHEN a.country LIKE 'T%' THEN 'Test'
		WHEN a.country LIKE 'P%' THEN 'In Progress'
        ELSE a.country
    END
);
