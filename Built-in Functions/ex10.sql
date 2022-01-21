SELECT country_name,iso_code
FROM countries
WHERE country_name LIKE "%a%a%a%"
ORDER by iso_code ASC