SELECT e.department_id,count(*) as num
FROM employees as e
GROUP BY e.department_id
ORDER BY e.department_id,num ASC