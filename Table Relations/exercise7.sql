CREATE TABLE students(
student_id INT(11) PRIMARY KEY AUTO_INCREMENT,
student_number VARCHAR(12),
student_name VARCHAR(50),
major_id INT(11)
);

CREATE TABLE majors(
major_id INT(11) PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50));


ALTER TABLE students
ADD CONSTRAINT fk_major_id
FOREIGN KEY (major_id)
REFERENCES majors(major_id);

CREATE TABLE payments(
payment_id INT(11) PRIMARY KEY AUTO_INCREMENT,
payment_date DATE,
payment_amount DECIMAL(8,2),
student_id INT(11));

ALTER TABLE payments
ADD CONSTRAINT fk_student_id1
FOREIGN KEY (student_id)
REFERENCES students(student_id);

CREATE TABLE subjects(
subject_id INT(11) PRIMARY KEY AUTO_INCREMENT,
subject_name VARCHAR(50));

CREATE TABLE agenda(
student_id INT(11),
subject_id INT(11));

ALTER TABLE agenda
ADD CONSTRAINT fk_student_id
FOREIGN KEY (student_id) REFERENCES students(student_id),
ADD CONSTRAINT fk_subject_id
FOREIGN KEY (subject_id) REFERENCES subjects(subject_id);






