create database student_department;
use student_department;
create table department (
	dept_id INT primary key,
    dept_name VARCHAR(50) unique not null
);
create table student (
	stud_id int primary key,
    stud_name varchar(50) not null,
    age int check(age >= 18),
    email VARCHAR(100) unique,
    dept_id int,
    foreign key(dept_id) references department(dept_id)
);
insert into department (dept_id, dept_name)
values
(1,'computer engineering'),
(2,'information technology'),
(3, 'electronics');

select * from department;

insert into student (stud_id, stud_name, age, email, dept_id)
values
(101, 'amit sharma', 20, 'amit@gamil.com',1),
(102, 'neha patil', 19, 'neha@gmail.com',2),
(103, 'rahul verma', 21,'rahul@gamil.com',1);

select * from student;
 
alter table student
add column city varchar(30);

desc student;

alter table student
rename to student_details;

show tables;

truncate table student_details;
select * from student_details;
desc student_details;

drop table student_details;
