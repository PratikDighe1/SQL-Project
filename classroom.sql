CREATE DATABASE College;
USE College;
CREATE TABLE Student(
	stud_id INT PRIMARY KEY,
    name varchar(50),
    city varchar(30)
);
DROP table Student;
CREATE TABLE Student(
	stud_id INT PRIMARY KEY,
    name varchar(50),
    city varchar(30) NOT NULL
);
INSERT INTO Student VALUES(1,'Pratik','Pune');
INSERT INTO Student VALUES(2, 'Aditya', 'Satara');
INSERT INTO Student VALUES(3, 'Kedar', 'Nashik');
select * from Student;
SHOW databases;
SHOW tables;
INSERT INTO Student(stud_id, city) VALUES(4,'Mumbai');
INSERT INTO Student(stud_id, city) VALUES(5, 'Delhi'), (6, 'Bangalore');

