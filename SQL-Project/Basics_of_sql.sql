create database college;
-- drop database college;

-- creating our first table student in database college
use college;

create table student (
	id int primary key,
	name varchar(50) not null,
    age int not null
);

-- It check how many databases are exist in the connection
-- show how many tables are exist in the particular database
show databases;
show tables;

-- TABLE RELATED QUIRY => INSERT
insert into student (id, name, age) values
(101, "pratik", 19),
(102, "viraj", 19);

-- show table data of student table
select * from student;

-- Foreign Key Concept
create table city (
	city_id int primary key,
    city_name varchar(30)
);

insert into city
(city_id, city_name)
values
(1, "Pune"),
(2, "Mumbai"),
(3, "Delhi");

create table student1 (
	stud_id int primary key,
    name varchar(30),
    city_id int,
    foreign key (city_id) references city(city_id)
);

insert into student1
(stud_id, name, city_id)
values
(101, "karan", 1),
(102, "arjun", 2),
(103, "ram", 1),
(104, "shyam", 3);

-- Inner join of table 'student1' and 'city' 
select *
from student1 as s
inner join city as c
on s.city_id = c.city_id;