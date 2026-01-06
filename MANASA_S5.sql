create database sm;

use sm;

CREATE TABLE employees (
    emp_id INT,
    name VARCHAR(50),
    age INT,
    salary DECIMAL(10,2),
    department VARCHAR(20)
);

select *from employees;

insert into employees values(1,'M',21,40000,'SALES');
insert into employees values(2,'A',21,60000,'tech');
insert into employees values(3,'N',21,50000,'SALES');
insert into employees values(4,'A',21,55000,'SALES');
insert into employees values(5,'S',21,47000,'tech');
insert into employees values(6,'A',21,75000,'tech');


SELECT name, salary, salary + (salary * 0.10) AS new_salary FROM employees;

SELECT name, salary FROM employees WHERE salary > 50000;

-- Employees in IT department with salary > 40,000
SELECT name, department, salary
FROM employees
WHERE department = 'IT' AND salary > 40000;

-- Employees either in HR or younger than 25
SELECT name, department, age
FROM employees
WHERE department = 'HR' OR age < 25;

SELECT name, department
FROM employees
WHERE NOT department = 'Sales';

-- Employees with no department assigned
SELECT Name, Dept
FROM Employees
WHERE Dept IS NULL;

-- Employees with department assigned
SELECT Name, Department
FROM Employees
WHERE Department IS  NULL;

SELECT Name, Department
FROM Employees
WHERE Department IS NOT NULL;

