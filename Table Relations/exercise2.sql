DROP TABLE models;
DROP TABLE manufacturers;


CREATE TABLE manufacturers(
`manufacturer_id` INT UNIQUE NOT NULL AUTO_INCREMENT,
`name` VARCHAR(20) NOT NULL ,
`established_on` DATE NOT NULL);


CREATE TABLE models(
`model_id` INT UNIQUE NOT NULL AUTO_INCREMENT,
`name` VARCHAR(20) NOT NULL,
`manufacturer_id` INT NOT NULL )
AUTO_INCREMENT = 101;

INSERT INTO manufacturers(`name`,established_on)
VALUES
('BMW','1916-03-01'),
('Tesla','2003-01-01'),
('Lada','1966-05-01');

INSERT INTO models(`name`,manufacturer_id)
VALUES
('X1',1),
('i6',1),
('Model S',2),
('Model X',2),
('Model 3',2),
('Nova',3);


ALTER TABLE models
ADD CONSTRAINT pk_model
PRIMARY KEY models(model_id),
ADD CONSTRAINT fk_models_manufacturer
FOREIGN KEY (manufacturer_id)
REFERENCES manufacturers(manufacturer_id);

ALTER TABLE manufacturers
ADD CONSTRAINT pk_manufacturers
PRIMARY KEY manufacturers(manufacturer_id);





