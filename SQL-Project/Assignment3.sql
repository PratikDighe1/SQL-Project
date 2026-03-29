create database Assignment2;
use Assignment2;
create table book (
	book_id int primary key,
    book_name varchar(50),
    author varchar(50),
    price int,
    category varchar(30)
);
create table issued_book (
	book_name varchar(50)
);
insert into book values
(1, 'database systems', 'navathe', 500, 'education'),
(2, 'operating system', 'silberschatz', 650, 'education'),
(3, 'c programming', 'dennis ritche', 300, 'programming'),
(4, 'python basics', 'guido', 400, 'programming');

show tables;
select * from book;

set sql_safe_updates = 0;
update book
set price = price + (price * 0.10)
where category = 'programming';

select * from book;

delete from book
where price < 350;

select book_name, price, price + 50 as new_price
from book;

select * from book
where category = 'education' and price > 500;

select * from book
where book_name like 'd%';

select upper(book_name) as book_upper,
lower(author) as author_lower
from book;

select book_name, length(book_name) as name_lenght
from book;

select substring(book_name, 1, 4) as short_name
from book;

insert into issued_book values
('database systems'),
('python basics');

select * from issued_book;

select book_name from book
union
select book_name from issued_book;

select book_name from book
intersect
select book_name from issued_book;

select book_name from book
except
select book_name from issued_book;

-- DATA CONTROL LANGUAGE
-- Use GRANT, REVOKE, and ROLE commands to manage user access.
 
-- College Student Database Access Control
create database assignment3_DCL;
use assignment3_DCL;

create table student (
	roll_no int primary key,
    name varchar(50),
    marks int
);

insert into student values
(1, 'amit', 85),
(2, 'neha', 90),
(3, 'ravi', 78);

create user 'admin1'@'localhost' identified by 'admin123';
create user 'faculty1'@'localhost' identified by 'faculty123';
create user 'student1'@'localhost' identified by 'faculty123';

create role 'admin_role';
create role 'faculty_role';
create role 'student_role';
-- admin role -> full access
grant all privileges on assignment3_dcl.* to 'admin_role';

-- faculty role -> read & update marks
grant select, update on assignment3_dcl.student to 'faculty_role';

-- student role -> read only
grant select on assignment3_dcl.student to 'student_role';

-- assign ROLES to users
grant 'admin_role' to 'admin1'@'localhost';
grant 'faculty_role' to 'faculty1'@'localhost';
grant 'student_role' to 'student1'@'localhost';

-- activate role (mandatory)
set default role all to
'admin1'@'localhost',
'faculty1'@'localhost',
'student1'@'localhost';

-- check granted privileges (output)
show grants for 'faculty1'@'localhost';

-- login / switch between users (windows)

-- login / switch between users (windows)

-- test access (input & output) student user
select * from assignment3_dcl.student;
INSERT INTO assignment3_dcl.student VALUES (4,'Pooja',88);

--  REVOKE Privileges
-- Remove UPDATE from Faculty
REVOKE UPDATE ON assignment3_dcl.student FROM 'faculty_role';
-- checking grants for faculty
SHOW GRANTS FOR 'faculty1'@'localhost';
-- Drop Role / User (Optional)
DROP ROLE 'student_role';
DROP USER 'student1'@'localhost';