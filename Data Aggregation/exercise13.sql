CREATE TABLE `average_salaries` AS
SELECT `department_id`, AVG(`salary`) AS 'average'
FROM `employees`  
WHERE NOT `manager_id` = 42
      AND `salary` > 30000
GROUP BY `department_id`;
 
UPDATE `average_salaries`
    SET `average` = `average` + 5000
    WHERE `department_id` = 1;
 
SELECT 
    `department_id`, `average`
FROM
    `average_salaries`
ORDER BY `department_id`;