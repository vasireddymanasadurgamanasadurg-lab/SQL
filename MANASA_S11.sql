-- Creating  Database and Connect
CREATE DATABASE college;
USE college;

-- Creating Tables
  -- Student Table
CREATE TABLE Student (
    sid INT PRIMARY KEY,
    sname VARCHAR(50),
    dept_id INT
);

-- Department Table
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Inserting Data into Tables
INSERT INTO Department VALUES
(101, 'CSE'),
(102, 'ECE'),
(103, 'MECH');

-- Insert into Student
INSERT INTO Student VALUES
(1, 'Ravi', 101),
(2, 'Sita', 102),
(3, 'Amit', 101),
(4, 'Kiran', 103);

-- INNER JOIN Operation
SELECT Student.sid, Student.sname, Department.dept_name
FROM Student
INNER JOIN Department
ON Student.dept_id = Department.dept_id;

-- INNER JOIN with WHERE clause
SELECT Student.sid, Student.sname, Department.dept_name
FROM Student
INNER JOIN Department
ON Student.dept_id = Department.dept_id
WHERE Department.dept_name = 'CSE';

-- INNER JOIN with ORDER BY clause
SELECT Student.sid, Student.sname, Department.dept_name
FROM Student
INNER JOIN Department
ON Student.dept_id = Department.dept_id
ORDER BY Student.sname;