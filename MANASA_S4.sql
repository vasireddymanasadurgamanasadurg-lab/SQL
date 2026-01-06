create database sm;
use sm;
 CREATE TABLE Employees ( 
EmployeeID INT ,
 FirstName VARCHAR(50),
 LastName VARCHAR(50),
 Age INT,
 Salary INT,
 Department VARCHAR(50)
 ); 
 INSERT INTO Employees (EmployeeID, FirstName, LastName, Age, Salary, Department) VALUES
 (1, 'Ravi', 'Kumar', 28, 50000, 'HR'),
 (2, 'Anita', 'Sharma', 34, 65000, 'Finance'),
 (3, 'John', 'son', 25, 48000, 'IT'),
 (4, 'vivek', 'kumar', 30, 72000, 'Marketing'), 
(5, 'hari', 'babu', 40, 80000, 'Operations'),
 (6, 'girija', 'rani', 27, 55000, 'Sales');
 
  ALTER TABLE Employees DROP COLUMN Department;
  
  select *from employees;
 
 ALTER TABLE Employees modify COLUMN Salary DECIMAL(10,2);
 
 SET SQL_SAFE_UPDATES = 0;
 
  DELETE FROM Employees;
  
  drop table employees;
  
  drop database sm;
  

