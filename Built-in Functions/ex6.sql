SELECT * 
FROM towns
WHERE substring(name,1,1) IN ('M', 'K' ,'B' ,'E')
ORDER BY name ASC