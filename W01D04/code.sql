USE deathnote;

SELECT * FROM student LIMIT 3;

SELECT * FROM student LIMIT 5;

SELECT * FROM STUDENT WHERE student_id>200;

SELECT * FROM STUDENT WHERE student_id>200 LIMIT 2;

SELECT * FROM student;

SELECT * FROM student LIMIT 3 OFFSET 2;

SELECT * FROM student LIMIT 2 OFFSET 0;

SELECT * FROM student LIMIT 2 OFFSET 2;

SELECT * FROM student LIMIT 2 OFFSET 3;

USE classicmodels;

SHOW TABLES;

DESC orders;

SELECT * FROM orders LIMIT 5;

DESC products;

SELECT productName,productLine,buyPrice,quantityInStock 
FROM products LIMIT 5;

SELECT productName,productLine,buyPrice,quantityInStock 
FROM products WHERE buyPrice BETWEEN 60 AND 90 LIMIT 5;

USE deathnote;

SHOW TABLES;

SELECT * FROM student;

ALTER TABLE student ADD Gender VARCHAR(1) AFTER student_id;

SELECT * FROM student;

ALTER TABLE student DROP COLUMN Gender;

SELECT * FROM student;

ALTER TABLE student ADD Gender VARCHAR(1) AFTER student_id;

SELECT * FROM student;

UPDATE student SET Gender = 'M' WHERE Major in ('ECE','PHY','ELE');

SELECT * FROM student;

UPDATE student SET Gender = 'F' WHERE Gender IS NULL;

SELECT * FROM student;

UPDATE student SET Gender = 'O' WHERE Name = 'VOWOWKY';

SELECT * FROM student;

UPDATE student SET Major = 'MEC' WHERE Gender = 'M';

SELECT * FROM student;

CREATE VIEW malestudents AS 
SELECT * FROM student WHERE Gender = 'M';

SELECT * FROM malestudents;

SELECT * FROM malestudents WHERE student_id BETWEEN 250 AND 350;

SHOW TABLES;

SELECT * FROM student;

UPDATE student SET Name = 'Vicky Kaushal' WHERE Name = 'VICKY';

SELECT * FROM student;

SELECT * FROM malestudents;

UPDATE malestudents SET Name = 'VICKY' WHERE Name='VENKY';

SELECT * FROM malestudents;

SELECT * FROM student;

DELIMITER &&

CREATE PROCEDURE show_me_male_and_female_separately()
BEGIN
SELECT * FROM student WHERE Gender='M';
SELECT * FROM student WHERE Gender='F';
END &&

DELIMITER ;

CALL show_me_male_and_female_separately();


