-- Comparison Operators

SELECT * FROM sales WHERE purchase_number !=2;

-- Logical Operators

SELECT * FROM sales WHERE purchase_number !=4 AND customer_id = 1;

SELECT * FROM sales WHERE purchase_number = 1 OR customer_id = 1;

SELECT * FROM sales WHERE NOT purchase_number = 1;

SELECT * FROM sales WHERE purchase_number BETWEEN 1 AND 3;

INSERT INTO sales VALUES
(2,'2020-01-09',5,'D_1'),
(3,'2022-05-12',4,'D_1'),
(4,'2010-08-19',2,'A_1');

SELECT * FROM sales WHERE customer_id BETWEEN 1 AND 3;


INSERT INTO student VALUES
(200,'VICKY','ELE'),
(300,'SHASHANK','PHY'),
(400,'VIRAT','CHE');


-- I want to look for names which are starting with V, and ending with
-- KY.
-- Regex in python?
-- _ and %
-- underscore means a single char (. in python regex)
-- % means any number of char after that (* in python regex)

SELECT * FROM student WHERE Name LIKE 'V__KY';

-- something starting with V and can contain anything.

SELECT * FROM student WHERE Name LIKE 'V%';

SELECT * FROM sales WHERE purchase_number IN (4,3,1,100,200);


INSERT INTO student VALUES
(11,'VOWOWKY','IT');

SELECT * FROM student WHERE Name LIKE 'V%KY';


-- # AGGREGATE FUNCTIONS

 SELECT MAX(student_id) FROM student;
 SELECT MIN(student_id) FROM student;
 SELECT AVG(student_id) FROM student;
 SELECT SUM(student_id) FROM student;
 SELECT COUNT(*) FROM student;


-- ALL THE ABOVE QUERY CAN BE COMBINED WITH WHERE.



