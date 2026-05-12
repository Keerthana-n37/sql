create database company_db;

use company_db;

create table employee(
employee_id int unique not null,
employee_name varchar(30),
department varchar(30),
salary double,
city varchar(50));


desc employee;

create table project(
project_id int unique not null,
project_name varchar(40),
technology varchar(30),
budget double,
location varchar(50));


insert into employee values
(1,'arun','developer',60000,'chennai'),
(2,'priya','tester',45000,'bangalore'),
(3,'kiran','hr',40000,'hyderabad'),
(4,'meena','developer',75000,'pune'),
(5,'rahul','manager',90000,'delhi'),
(6,'sneha','tester',50000,'mumbai'),
(7,'ajay','developer',70000,'chennai'),
(8,'divya','hr',42000,'bangalore'),
(9,'varun','support',35000,'hyderabad'),
(10,'kavya','developer',80000,'pune');

select * from employee;

insert into project values
(101,'banking app','java',500000,'chennai'),
(102,'ecommerce site','python',700000,'bangalore'),
(103,'hospital system','java',450000,'hyderabad'),
(104,'school portal','php',300000,'pune'),
(105,'inventory system','dotnet',550000,'delhi'),
(106,'crm software','python',650000,'mumbai'),
(107,'payroll system','java',400000,'chennai'),
(108,'travel app','react',750000,'bangalore'),
(109,'food delivery','nodejs',800000,'hyderabad'),
(110,'erp system','java',900000,'pune');

select * from project;

select * from employee where city in ('chennai','bangalore');
select * from employee where department in ('developer','tester');
select * from employee where salary in (40000,50000,60000);
select * from employee where employee_id in (1,3,5);
select * from employee where employee_name in ('arun','priya');
select * from project where location in ('pune','delhi');
select * from project where technology in ('java','python');
select * from project where budget in (300000,500000);
select * from project where project_id in (101,105,109);
select * from project where project_name in ('banking app','travel app');




select * from employee where city not in ('chennai','pune');
select * from employee where department not in ('hr');
select * from employee where salary not in (35000,40000);
select * from employee where employee_id not in (2,4);
select * from employee where employee_name not in ('ajay');
select * from project where location not in ('mumbai');
select * from project where technology not in ('php');
select * from project where budget not in (300000,400000);
select * from project where project_id not in (103,108);
select * from project where project_name not in ('erp system');




select * from employee where salary between 40000 and 70000;
select * from employee where salary between 50000 and 90000;
select * from employee where employee_id between 1 and 3;
select * from employee where employee_id between 6 and 9;
select * from project where budget between 300000 and 600000;
select * from project where budget between 500000 and 900000;
select * from project where project_id between 101 and 105;
select * from project where project_id between 106 and 110;



select * from employee where salary not between 40000 and 70000;
select * from employee where salary not between 50000 and 90000;
select * from employee where employee_id not between 1 and 5;
select * from employee where employee_id not between 6 and 10;
select * from project where budget not between 300000 and 600000;
select * from project where budget not between 500000 and 900000;
select * from project where project_id not between 101 and 103;
select * from project where project_id not between 107 and 110;



select * from employee order by salary asc;
select * from employee order by salary desc;
select * from employee order by employee_name asc;
select * from employee order by employee_id desc;
select * from employee order by city asc;
select * from project order by budget asc;
select * from project order by budget desc;
select * from project order by project_name asc;
select * from project order by project_name desc;
select * from project order by location asc;



select count(*) from employee;
select count(employee_id) from employee;
select count(employee_name) from employee;
select count(department) from employee;
select count(city) from employee;


select count(*) from project;
select count(project_id) from project;
select count(project_name) from project;
select count(technology) from project;
select count(location) from project;


select sum(salary) from employee;
select sum(employee_id) from employee;
select sum(budget) from project;
select sum(project_id) from project;


select avg(salary) from employee;
select avg(employee_id) from employee;
select avg(budget) from project;
select avg(project_id) from project;

select min(salary) from employee;
select min(employee_id) from employee;
select min(budget) from project;
select min(project_id) from project;


select max(salary) from employee;
select max(employee_id) from employee;
select max(budget) from project;
select max(project_id) from project;


insert into employee values
(11,'naveen',null,55000,'mysore'),
(12,'keerthi','developer',null,'chennai'),
(13,null,'tester',45000,'bangalore'),
(14,'rakesh','hr',40000,null),
(15,'ananya',null,null,null);

select * from employee;


select * from employee where department is null;
select * from employee where salary is null;
select * from employee where employee_name is null;
select * from employee where city is null;

insert into project values
(111,'billing app',null,500000,'mysore'),
(112,null,'java',650000,'chennai'),
(113,'order data analysis','python',null,'bangalore'),
(114,'payroll system','react',700000,null),
(115,null,null,null,null);

select * from project;
select * from project where technology is null;
select * from project where project_name is null;
select * from project where budget is null;
select * from project where location is null;


select * from employee where department is not null;
select * from employee where salary is not null;
select * from employee where employee_name is not null;
select * from employee where city is not null;
select * from project where technology is not null;
select * from project where project_name is not null;
select * from project where budget is not null;
select * from project where location is not null;
