CREATE DATABASE college1;
USE college1;
CREATE TABLE student(
	roll_no INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1) NOT NULL,
    city VARCHAR(30) NOT NULL
);
INSERT INTO student(roll_no, name, marks, grade, city) VALUES 
(101,"anil",78,'c','pune'),
(102,"bhumika", 93,'a','mumbai'),
(103,"chetan", 85,'b','mumbai'),
(104,"dhruv", 96,'a','delhi'),
(105,"aman", 12,'f','delhi'),
(106,"rajat", 82,'b','delhi');

SELECT DISTINCT city FROM student;

SELECT * FROM student WHERE city ="pune";

SELECT * FROM student 
ORDER BY marks DESC
LIMIT 3;

SELECT MIN(marks) FROM student;
SELECT MAX(marks) FROM student;
SELECT AVG(marks) FROM student;
SELECT COUNT(marks) FROM student;

SELECT city , COUNT(city)
FROM student
GROUP BY city;

SELECT city , AVG(marks)
FROM student
GROUP BY city
ORDER BY AVG(marks) ASC;

SELECT grade, count(roll_no)
FROM student
GROUP BY grade 
ORDER BY grade;

SELECT city, count(roll_no), max(marks)
FROM student
GROUP BY city
HAVING MAX(marks) > 90;

SELECT city, name, marks
FROM student
WHERE city in ('pune','mumbai')
ORDER BY marks DESC;

SET SQL_SAFE_UPDATES =0;

UPDATE student
SET grade= 'o'
where grade= 'a';

SELECT * FROM student;

UPDATE student
SET marks= 93, grade= 'o'
where roll_no= 105;

CREATE TABLE dept(
	id INT primary key,
    name VARCHAR(50)
);
CREATE TABLE teacher(
	id int primary key,
    name varchar(50),
    dept_id int,
    foreign key (dept_id) references dept(id)
);

SHOW databases;
use college1;
show tables;
alter table student
change column name fullName varchar(50);
select * from student;

delete from student
where marks < 80;

alter table student
drop column grade;


