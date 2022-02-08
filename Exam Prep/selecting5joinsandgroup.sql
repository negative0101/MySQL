SELECT c.name,COUNT(p.id) AS total_count_of_players , SUM(p.salary) AS total_sum_of_salaries
FROM countries AS c 
LEFT JOIN towns AS t ON c.id = t.country_id
LEFT JOIN stadiums AS s ON s.town_id = t.id
LEFT JOIN teams AS teams ON teams.stadium_id = s.id
LEFT JOIN players AS p ON p.team_id = t.id
GROUP BY c.name
ORDER BY total_count_of_players DESC, c.name 