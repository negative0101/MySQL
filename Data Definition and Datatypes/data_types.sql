CREATE DATABASE `Minions`;


CREATE TABLE `minions`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(30),
`age` INT
);

DROP TABLE `towns`;

CREATE TABLE `towns`(
`town_id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(30)
);


ALTER TABLE `towns`
CHANGE COLUMN `town_id` `id` INT;

ALTER TABLE `minions`
ADD COLUMN `town_id` INT,
ADD CONSTRAINT `fk_minions_towns`
	FOREIGN KEY `minions`(`town_id`)
	REFERENCES `towns`(`id`);
    


INSERT INTO `towns` (`id`,`name`)
VALUES ("1","Sofia"),
("2","Plovdiv"),
("3","Varna");

INSERT INTO `minions` (`id`,`name`, `age`,`town_id`)
VALUES ("1","Kevin","22","1"),
("2","Bob","15","3"),
("3","Steward",NULL,"2");

TRUNCATE table `minions`;

DROP TABLE `minions`;
DROP TABLE `towns`;
