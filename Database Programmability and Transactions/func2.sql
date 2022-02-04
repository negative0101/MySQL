DELIMITER $$
CREATE PROCEDURE usp_raise_salaries(department_name VARCHAR(100))
BEGIN
UPDATE employees AS e
LEFT JOIN employees AS e ON e.department_id = d.department_id
SET salary= salary * 1.05
WHERE d.name = 'Sales';
END
$$
CALL usp_raise_salaries