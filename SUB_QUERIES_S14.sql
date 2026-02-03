use CODERS;

CREATE TABLE Emp (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    Age INT,
    City VARCHAR(50)
);

INSERT INTO Emp (EmpID, Name, Department, Salary, Age, City) VALUES
(1, 'Amit', 'HR', 35000, 29, 'Delhi'),
(2, 'Sneha', 'Finance', 48000, 32, 'Mumbai'),
(3, 'Ravi', 'IT', 55000, 28, 'Bangalore'),
(4, 'Priya', 'Sales', 40000, 30, 'Chennai'),
(5, 'Karan', 'Finance', 60000, 35, 'Delhi'),
(6, 'Meena', 'HR', 30000, 26, 'Pune'),
(7, 'Suresh', 'IT', 70000, 40, 'Hyderabad'),
(8, 'Divya', 'Sales', 42000, 27, 'Mumbai'),
(9, 'Vikram', 'Finance', 65000, 36, 'Bangalore'),
(10, 'Nisha', 'IT', 72000, 31, 'Delhi'),
(11, 'Rohit', 'HR', 31000, 25, 'Chennai'),
(12, 'Pooja', 'Sales', 38000, 29, 'Pune'),
(13, 'Anil', 'Finance', 58000, 34, 'Hyderabad'),
(14, 'Neha', 'IT', 64000, 33, 'Mumbai'),
(15, 'Rajesh', 'Sales', 45000, 37, 'Delhi'),
(16, 'Komal', 'HR', 33000, 28, 'Bangalore'),
(17, 'Deepak', 'Finance', 52000, 30, 'Chennai'),
(18, 'Swati', 'IT', 76000, 38, 'Pune'),
(19, 'Arjun', 'Sales', 47000, 29, 'Hyderabad'),
(20, 'Lakshmi', 'Finance', 61000, 32, 'Delhi'),
(21, 'Manoj', 'IT', 69000, 36, 'Bangalore'),
(22, 'Sakshi', 'Sales', 39000, 26, 'Mumbai'),
(23, 'Harish', 'HR', 29500, 24, 'Chennai'),
(24, 'Kavita', 'Finance', 57000, 35, 'Hyderabad'),
(25, 'Sunil', 'IT', 73000, 39, 'Delhi'),
(26, 'Ramesh', 'Sales', 46000, 33, 'Pune'),
(27, 'Jyoti', 'Finance', 59000, 31, 'Bangalore'),
(28, 'Ashok', 'IT', 71000, 34, 'Mumbai'),
(29, 'Tanvi', 'Sales', 41000, 27, 'Delhi'),
(30, 'Gaurav', 'HR', 34000, 29, 'Hyderabad');

-- 1. Find employees whose salary is greater than the average salary of all employees.
 SELECT * FROM EMP WHERE SALARY >( SELECT avg(SALARY) FROM EMP);

-- 2. Find employees whose age is less than the youngest employee in the HR department.
 SELECT * FROM EMP WHERE AGE <(
 SELECT MIN(AGE) FROM EMP WHERE DEPARTMENT=' HR') ;

-- 3. Find employees living in the same city as Ravi
SELECT * FROM EMP WHERE CITY = (SELECT CITY FROM EMP WHERE NAME = 'Ravi');

-- 4. Find employees with the same salary as Karan
SELECT * FROM EMP WHERE SALARY =( SELECT SALARY FROM EMP WHERE NAME = 'KARAN');

-- 5. Find employees earning more than Sneha
SELECT * FROM EMP WHERE SALARY >(SELECT SALARY FROM EMP WHERE NAME='SNEHA');

-- 6. Find employees working in the same department as Nisha
SELECT * FROM EMP WHERE DEPARTMENT =(SELECT DEPARTMENT FROM EMP WHERE NAME='NISHA');

-- 7. Find employees who live in the same cities as Finance department employees.
SELECT * FROM EMP WHERE CITY IN (SELECT CITY FROM EMP WHERE DEPARTMENT='FINANCE');

-- 8. Find employees older than any employee in the Sales department.
SELECT * FROM EMP WHERE AGE > ANY (SELECT AGE FROM EMP WHERE DEPARTMENT='SALES');

-- 9. Find employees earning more than all employees in HR.
SELECT * FROM EMP WHERE SALARY > ALL ( SELECT SALARY FROM EMP WHERE DEPARTMENT = 'HR');

-- 10. Find employees working in a department where at least one employee earns more than 70,000.
SELECT * FROM EMP WHERE  DEPARTMENT IN (SELECT DEPARTMENT FROM EMP WHERE SALARY > 70000);

-- 11. Find employees whose salary is greater than the average salary of their department.
SELECT *
FROM EMP e
WHERE SALARY > (
    SELECT AVG(SALARY)
    FROM EMP
    WHERE DEPARTMENT = e.DEPARTMENT
);

-- 12. Find employees earning the maximum salary in their department.
SELECT * FROM EMP E WHERE SALARY =(SELECT MAX(SALARY) FROM EMP WHERE DEPARTMENT=E.DEPARTMENT);

-- 13. Find employees earning the minimum salary in their department.
SELECT * FROM EMP E WHERE SALARY =(SELECT MIN(SALARY) FROM EMP WHERE DEPARTMENT=E.DEPARTMENT);

-- 14. Find employees older than the average age of their department.
SELECT * FROM EMP E WHERE AGE >(SELECT AVG(AGE) FROM EMP WHERE DEPARTMENT=E.DEPARTMENT);

-- 15. Find employees who have the same city as at least one of their department colleagues.
SELECT *FROM EMP e1 WHERE EXISTS ( SELECT 1 FROM EMP e2 WHERE e1.DEPARTMENT = e2.DEPARTMENT AND e1.CITY = e2.CITY
AND e1.EMPID <> e2.EMPID
);

-- 16. Find the city with the maximum number of employees.
SELECT CITY
FROM EMP
GROUP BY CITY
HAVING COUNT(*) = (
    SELECT MAX(cnt)
    FROM (
        SELECT COUNT(*) AS cnt
        FROM EMP
        GROUP BY CITY
    ) t
);
 
 -- 17. Find employees whose salary equals the second-highest salary in the company.
 SELECT *
FROM EMP
WHERE SALARY = (
    SELECT MAX(SALARY)
    FROM EMP
    WHERE SALARY < (SELECT MAX(SALARY) FROM EMP)
);

-- 18. Find employees whose salary equals the third-highest salary in the company.
SELECT *
FROM EMP
WHERE SALARY = (
    SELECT MAX(SALARY)
    FROM EMP
    WHERE SALARY < (
        SELECT MAX(SALARY)
        FROM EMP
        WHERE SALARY < (SELECT MAX(SALARY) FROM EMP)
    )
);

-- 19. Find employees whose salary is greater than the average salary of employees in Delhi
SELECT *
FROM EMP
WHERE SALARY > (
    SELECT AVG(SALARY)
    FROM EMP
    WHERE CITY = 'DELHI'
);

-- 20. Find employees who earn more than the average salary of employees who are older than
SELECT *
FROM EMP
WHERE SALARY > (
    SELECT AVG(SALARY)
    FROM EMP
    WHERE AGE > 30
);

-- 21. Find employees who are younger than the oldest employee in Sales department.
SELECT *
FROM EMP
WHERE AGE < (
    SELECT MAX(AGE)
    FROM EMP
    WHERE DEPARTMENT = 'SALES'
);

/*.22 Find employees whose salary is greater than the average salary of Finance employees but
less than the maximum salary of IT employees.*/
SELECT *
FROM EMP
WHERE SALARY > (
    SELECT AVG(SALARY)
    FROM EMP
    WHERE DEPARTMENT = 'FINANCE'
)
AND SALARY < (
    SELECT MAX(SALARY)
    FROM EMP
    WHERE DEPARTMENT = 'IT'
);

-- 23. Find employees who belong to the department that has the least number of employees.
SELECT *
FROM EMP
WHERE DEPARTMENT = (
    SELECT DEPARTMENT
    FROM EMP
    GROUP BY DEPARTMENT
    HAVING COUNT(*) = (
        SELECT MIN(cnt)
        FROM (
            SELECT COUNT(*) AS cnt
            FROM EMP
            GROUP BY DEPARTMENT
        ) t
    )
);

-- 24. Find employees whose city has more employees than the city of Priya.
SELECT *
FROM EMP
WHERE CITY IN (
    SELECT CITY
    FROM EMP
    GROUP BY CITY
    HAVING COUNT(*) > (
        SELECT COUNT(*)
        FROM EMP
        WHERE CITY = (
            SELECT CITY
            FROM EMP
            WHERE NAME = 'PRIYA'
        )
    )
);

-- 25. Find employees who belong to the department where the average salary is greater than 55,000.
SELECT *
FROM EMP
WHERE DEPARTMENT IN (
    SELECT DEPARTMENT
    FROM EMP
    GROUP BY DEPARTMENT
    HAVING AVG(SALARY) > 55000
);

-- 26. Find employees who earn more than the average salary of all employees but less than the maximum salary of their department.
SELECT *
FROM EMP e
WHERE SALARY > (
    SELECT AVG(SALARY)
    FROM EMP
)
AND SALARY < (
    SELECT MAX(SALARY)
    FROM EMP
    WHERE DEPARTMENT = e.DEPARTMENT
);

-- 27. Find employees whose salary is above the company average and age is below the company average.
SELECT *
FROM EMP
WHERE SALARY > (SELECT AVG(SALARY) FROM EMP)
AND AGE < (SELECT AVG(AGE) FROM EMP);
