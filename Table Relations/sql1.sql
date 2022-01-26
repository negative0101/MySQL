DROP TABLE peaks;
DROP TABLE mountains;

CREATE TABLE mountains(
id INT AUTO_INCREMENT PRIMARY KEY ,
name VARCHAR(40)
);

CREATE TABLE peaks(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(40),
mountain_id int,
CONSTRAINT fk_peaks_mauntains
FOREIGN KEY(mountain_id)
REFERENCES mountains(id)
ON DELETE CASCADE
)
