DROP TABLE `users`;
DROP TABLE `people`;


CREATE TABLE `people`(
	`id` INT PRIMARY KEY AUTO_INCREMENT,
	`name`  VARCHAR(200) NOT NULL,
    `picture` BLOB,
	`height` FLOAT(5,2),
    `weight` FLOAT(5,2),
    `gender` CHAR(1) NOT NULL,
    `birthdate` DATE NOT NULL,
    `biography` TEXT
    
);

INSERT INTO `people`
VALUES
(1,'Gosho', 'pic', 1.56, 22.21,'m', '1911-02-02', 'asdf' ),
(2,'Pesho', 'pic', 1.77, 33.21,'m', '1993-03-16', 'asdf' ),
(3,'Tosho', 'pic', 1.32, 44.21,'m', '1922-06-24', 'asdf' ),
(4,'Mosho', 'pic', 1.12, 55.21,'m', '1988-08-08', 'asdf' ),
(5,'Kosho', 'pic', 1.88, 66.21,'m', '1984-11-11', 'asdf' );


CREATE TABLE `users`(	
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `username` VARCHAR(30),
    `password` VARCHAR(26),
    `profile_picture` BLOB,
    `last_login_time` DATE,
    `is_deleted` BOOL
);

INSERT INTO `users`
VALUES
(1,'Gosho', 'pass', 'picture', '1911-02-02', false ),
(2,'Pesho', 'pass', 'picture',  '1993-03-16', false ),
(3,'Tosho', 'pass', 'picture',  '1922-06-24', false ),
(4,'Mosho', 'pass', 'picture', '1988-08-08', false),
(5,'Kosho', 'pass', 'picture', '1984-11-11', false );

ALTER TABLE `users`
DROP PRIMARY KEY,
ADD CONSTRAINT `pk_users`
PRIMARY KEY users(id,username);

ALTER TABLE users
CHANGE COLUMN last_login_time 
    last_login_time DATETIME DEFAULT NOW();

ALTER TABLE `users`
	DROP PRIMARY KEY,
	ADD CONSTRAINT PRIMARY KEY (`id`),
	ADD CONSTRAINT UNIQUE (`username`);

