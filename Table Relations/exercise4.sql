
CREATE TABLE teachers(
`teacher_id` INT AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(20) NOT NULL,
`manager_id` INT)
AUTO_INCREMENT= 101;

ALTER TABLE teachers
ADD CONSTRAINT fk_manager_id_teacher_id
FOREIGN KEY teachers(manager_id)
REFERENCES teachers(manager_id);

INSERT INTO teachers(`name`, manager_id)
VALUES
('John', NULL),
('Maya', 106),
('Silvia', 106),
('Ted', 105),
('Mark', 101),
('Greta', 101);




