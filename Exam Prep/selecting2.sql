SELECT p.id,CONCAT_WS(' ',p.first_name,p.last_name ) AS full_name , p.age, p.position, p.hire_date
FROM players AS p
JOIN skills_data AS s ON s.id = p.skills_data_id
WHERE s.strength >50 AND p.age <23 AND p.hire_date IS NULL AND p.position ="A"
ORDER BY p.salary ,p.age ASC
