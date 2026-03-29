CREATE DATABASE Employee;
use Employee;
create table employee(
	id int primary key,
    name varchar(50),
    manager_id int
);
insert into employee(id, name, manager_id) 
values
(101,'adam',103),
(102,'bob',104),
(103,'casey',null),
(104,'donald',103);

select * from employee;

select a.name as manager_name, b.name
from employee as a
join employee as b
on a.id = b.manager_id;

use college1;
select * from student;

select fullname, marks
from student
where marks > (select avg(marks) from student);

select fullname, roll_no
from student
where roll_no in (
	select roll_no 
    from student
    where roll_no % 2 = 0
);

select max(marks)
from (select * from student where city='delhi') as temp;