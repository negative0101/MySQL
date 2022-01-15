CREATE DATABASE soft_uni;
USE soft_uni;

CREATE TABLE towns(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(25)
);

CREATE TABLE addresses(
id INT AUTO_INCREMENT PRIMARY KEY,
address_text VARCHAR(40),
town_id INT,
FOREIGN KEY addresses(town_id)
REFERENCES towns(id)
);

CREATE TABLE departments(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(40)
);

CREATE TABLE employees (
id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(20),
middle_name VARCHAR(20),
last_name VARCHAR(20),
job_title VARCHAR(20),
department_id INT,
hire_date DATE,
salary FLOAT,
address_id INT,
FOREIGN KEY (department_id)
REFERENCES departments(id),
FOREIGN KEY (address_id)
REFERENCES addresses(id)
);



INSERT INTO `towns`(`name`)
VALUES 
('Sofia'),
('Plovdiv'),
('Varna'),
('Burgas');

INSERT INTO `departments`(`name`)
VALUES
('Engineering'),
('Sales'),
('Marketing'),
('Software Development'),
('Quality Assurance');


INSERT INTO `employees` (`id`, `first_name`, `middle_name`, `last_name`,`job_title`, `salary`,`department_id`, `hire_date`, `address_id` )
VALUES
(1, 'Ivan', 'Ivanov', 'Ivanov' , '.NET Developer', 3500.00, 4, '2013-02-01', NULL),
(2, 'Petar', 'Petrov', 'Petrov' , 'Senior Engineer', 4000.00, 1, '2004-03-02' , NULL),
(3, 'Maria', 'Petrova', 'Ivanova' , 'Intern', 525.25, 5, '2016-08-28' , NULL),
(4, 'Georgi', 'Terziev', 'Ivanov' , 'CEO', 3000.00, 2, '2007-12-09' , NULL),
(5, 'Peter', 'Pan', 'Pan' , 'Intern', 599.88, 3, '2016-08-28' , NULL);



SELECT * FROM towns;
SELECT * FROM departments;
SELECT * FROM employees;

SELECT * FROM towns
ORDER BY `name` ASC;
SELECT * FROM departments
ORDER BY `name` ASC;
SELECT * FROM employees
ORDER BY `salary` DESC; 



SELECT `name` FROM towns
ORDER BY `name` ASC;
SELECT `name` FROM departments
ORDER BY `name` ASC;
SELECT `first_name`,`last_name`,`job_title`,`salary` FROM employees
ORDER BY `salary` DESC; 


UPDATE `employees`
SET `salary` = `salary` * 1.1;
SELECT `salary` FROM `employees`;


DELETE FROM `occupancies`