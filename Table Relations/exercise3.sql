
CREATE TABLE exams(
`exam_id` INT AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(20) NOT NULL)
AUTO_INCREMENT = 101;

CREATE TABLE students(
`student_id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(20) NOT NULL);


CREATE TABLE students_exams(
`student_id` INT NOT NULL , 
`exam_id` INT NOT NULL ,
	CONSTRAINT fk_students_exams
	FOREIGN KEY (student_id)
	REFERENCES students(student_id),
		CONSTRAINT fk_exam_students
		FOREIGN KEY (exam_id)
		REFERENCES exams(exam_id));


INSERT INTO exams(`name`)
VALUES
('Spring MVC'),
('Neo4j'),
('Oracle 11g');

INSERT INTO students(`name`)
VALUES
('Mila'),
('Toni'),
('Ron');



