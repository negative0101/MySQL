SELECT id,CONCAT(first_name,' ',last_name) AS full_name,job_title,salary
FROM employees
WHERE salary >1000
ORDER BY id ASC;


SELECT * FROM employees AS e
WHERE e.department_id = 4 AND e.salary > 1000;


DELETE FROM employees
WHERE ID>=10;

UPDATE employees
SET salary = salary * 10;


DELETE FROM employees
WHERE department_id in (1,2)



