/*CONSTRAINTS*/
							-- UNIQUE

use d8r;

create table manu(
sno int,
roll_num int unique,
name varchar(100) not null,
age int,
mobile bigint unique
);

select *from manu;

desc manu;

insert into manu values(1,60,'manasa',21,9391856486);
insert into manu values(2,61,'durga',22,9398776535);
insert into manu values(3,63,'girija',23,9396789083);
insert into manu values(4,64,'rani',24,97645324689);
insert into manu values(5,66,'lakshmi',25,87654258008);

							-- NOT NULL

create table vivek(
sno int,
name varchar(100) not null
);

desc vivek;

select *from vivek;

insert into vivek values(1,'shoeb');
insert into vivek(name) values('kumar');

								--  CHECK
                                
use d8r;

 create table college(
 sno int,
 no_of_stu int,
 gender varchar(50),
 marks int check(marks>35 and marks<=100)
 );
 
 insert into college values(1,10,'MALE',70);
 insert into college values(2,10,'MALE',30);
 insert into college values(3,10,'MALE',90);
 insert into college values(4,10,'FEMALE',40);
 insert into college values(5,10,'FEMALE',20);
 insert into college values(6,10,'FEMALE',28);
 
 
 select *from college;
 
 desc college;
 
						-- Default
                        
use d8r;

create table RASU(
roll_num int,
name varchar(100),
course varchar(50) default 'btech'
);
        
select *from RASU;

insert into RASU vALUES(1,'RANI','DEGREE');
insert into RASU(roll_num,name) vALUES(1,'RAMU');


						-- AUTO INCREMENT
                        
use d8r;

create table nagalakshmi(
sno int unique auto_increment,
name varchar(50),
city varchar(50)
);

select *from nagalakshmi;

insert into nagalakshmi values(1,'manasa','tenali');
insert into nagalakshmi(name,city) values('durga','tenali');
insert into nagalakshmi(name,city)  values('rasu','tenali');
insert into nagalakshmi(name,city)  values('bhaya','tenali');
insert into nagalakshmi(name,city)  values('ammu','tenali');
insert into nagalakshmi(name,city)  values('rani','tenali');

 SET SQL_SAFE_UPDATES = 0;
 
delete from nagalakshmi where sno=5;

insert into nagalakshmi(name)  values('raju');

 

