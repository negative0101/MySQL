DROP TABLE `directors`;
DROP TABLE `genres`;
DROP TABLE `categories`;
DROP TABLE `movies`;

CREATE TABLE `directors` (
`id` INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT, 
`director_name` VARCHAR(40) NOT NULL, 
`notes` TEXT 
);

CREATE TABLE `genres`(
`id` INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
`genre_name` VARCHAR(40) NOT NULL,
`notes` TEXT
);

CREATE TABLE `categories` (
`id` INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT, 
`category_name` VARCHAR(40) NOT NULL,
`notes` TEXT
);

CREATE TABLE `movies` (
`id` INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT, 
`title`  VARCHAR(40) NOT NULL, 
`director_id` INT NOT NULL ,
`copyright_year` YEAR NOT NULL,
`length` TIME NOT NULL,
`genre_id` INT NOT NULL,
`category_id` INT NOT NULL ,
`rating` INT NOT NULL DEFAULT 0,
`notes` TEXT);

INSERT INTO `movies` (`id`, `title`, `director_id`, `copyright_year`, `length`, `genre_id`, `category_id`)
VALUES
(1,'Movie one',1,'2000',22,1,1),
(2,'Movie 2',1,'2010',23,2,2),
(3,'Movie 3',1,'2002',24,3,2),
(4,'Movie 4',1,'2003',25,4,1),
(5,'Movie 5',1,'2007',26,4,5);

INSERT INTO `categories` (`id`,`category_name`,`notes`)
VALUES
(1,'scary','no'),
(2,'funny','no'),
(3,'wowie mowie','no'),
(4,'love','no'),
(5,'cheesy','no');

INSERT INTO `genres`(`id`,`genre_name` ,`notes`)
VALUES
(1,'horror','yes'),
(2,'comedy','yes'),
(3,'thriller','yes'),
(4,'romance','yes'),
(5,'asdf','no');

INSERT INTO `directors` (`id`, `director_name`, `notes`)
VALUES
(1,'SHEFA','nai golemiq'),
(2,'KARANTINO','nai nai golemiq'),
(3,'IVAKA','nai golemiq'),
(4,'MIRENA','nai golemiq'),
(5,'AKIRA','nai golemiq');