SHOW DATABASES;

CREATE DATABASE deathnote;

USE deathnote;


CREATE TABLE student(student_id INT, 
    Name VARCHAR(20),
    Major VARCHAR(20)
    );

INSERT INTO student VALUES
(2,'SATHYAM','IT'),
(3,'VENKY','ECE'),
(4,'NIKHIL','CS');

SELECT * FROM student;
-- (* means all the columns)

SELECT Name FROM student;

SELECT Major FROM student;

SELECT Name,Major FROM student;


CREATE TABLE sales(purchase_number INT,
    date_of_purchase DATE,
    customer_id INT,
    item_code VARCHAR(3));

SHOW TABLES;

INSERT INTO sales VALUES
(1,'2016-09-03',1,'A_1'),
(2,'2016-12-02',2,'C_1'),
(3,'2017-04-15',3,'D_1'),
(4,'2017-05-24',1,'B_2');

SELECT * FROM sales;

SELECT purchase_number,customer_id FROM sales;

-- Filtering Rows based on column values

-- WHERE CLAUSE
SELECT * FROM sales WHERE purchase_number > 2;

SELECT customer_id,date_of_purchase FROM sales 
WHERE date_of_purchase < '2017-01-01';

-- DELETE CLAUSE

DELETE FROM student WHERE Major = 'CS';

DESCRIBE sales;
DESC sales;
-- Both DESCRIBE AND DESC shows us the description of the table.
INSERT INTO student VALUES
(30,'SURYA','ELE'),
(40,'PUSHPA','MEC');

DELETE FROM student WHERE student_id > 10;

SELECT * FROM student;