SELECT t.name AS team_name,t.established,t.fan_base,COUNT(p.id) AS  players_count
FROM teams AS t
JOIN players AS p ON p.team_id = t.id
GROUP BY p.team_id
ORDER BY players_count DESC,t.fan_base DESC