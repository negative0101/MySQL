SELECT DISTINCT e.employee_id,e.first_name
FROM employees AS e
JOIN employees_projects AS ep ON e.department_id != ep.project_id  
ORDER BY e.employee_id DESC 
LIMIT 3