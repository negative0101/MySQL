SELECT 
    department_id, ROUND(AVG(salary), 2) AS average
FROM
    employees
GROUP BY department_id
ORDER BY department_id;
