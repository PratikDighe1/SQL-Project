CREATE DATABASE bny;
USE bny;
CREATE TABLE Employee(
	id INT primary key,
    name VARCHAR(50) not null,
    salary INT not null
);

INSERT INTO Employee(id, name, salary) VALUES (1,'adam',25000),(2,'bob',30000),(3,'casey',40000);

SELECT * FROM Employee;