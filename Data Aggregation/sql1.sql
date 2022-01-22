SELECT department_id,SUM(salary), COUNT(employee_id)
FROM soft_uni.employees
GROUP BY department_id
ORDER BY department_id 