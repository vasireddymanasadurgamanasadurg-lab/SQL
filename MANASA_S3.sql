create table manasa(
sno int,
empid int,
surname char(1),
name varchar(30),
dob date,
phone int,
salary decimal(10),
mobile bigint,
bonus float,
percentage double
);

insert into manasa values(1,578,'v','MANASA','2004-06-27',123496789,45.000,9391856486,7.970000000080,8.97750000531);

select * from manasa;

show tables;

ALTER TABLE manasa ADD COLUMN department VARCHAR(50);

ALTER TABLE manasa ADD COLUMN emp_code INT FIRST;

ALTER TABLE manasa ADD COLUMN ug_percentage DECIMAL(10,2) AFTER mobile ;

UPDATE manasa SET salary = 5000 WHERE empid = 578 AND empid IS NOT NULL;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM manasa WHERE sno=1;


use d8r;

SELECT * FROM manasa WHERE sno=1;




