create database instagram_db;

use instagram_db;

create table user(
u_id char(5), 
username varchar(25),
pswd varchar(15),
mobileNumber int,
gender enum('male','female','other'),
dob date,
bio text,
followers int);

desc user;

rename table user to user_info;

drop table user_info;


alter table user add column email varchar(25);

alter table user drop mobileNumber;

alter table user add column mobile_number int;

alter table user modify mobile_number bigint;

alter table user rename column username to user_name;

use instagram_db;

alter table user add column first_name varchar(20), 
add column middle_name varchar(20), add column last_name varchar(15);

alter table user drop user_name;

alter table user 
modify first_name varchar(30),
modify middle_name varchar(25);

alter table user drop first_name,  drop middle_name;

desc user;

insert into user values
('12345','bob@123','male','2004-02-01',"my name is bob",40,'bob@gmail.com',9012347890,'kumar','n'),
('78564','arun@145','male','2003-05-21',"i am an content creator",50,'arun@gmail.com',8970123908,'reddy','m');

select * from user;


insert into user (u_id,gender,followers,middle_name,last_name)
values('u1234','male',10,'akshay','kumar');

insert into user (u_id,gender,email,middle_name,last_name)
values('u7890','female','asha2gmail.com','asha','k');

desc user;

update user
set pswd='u001';

update user
set pswd='bob@345'
where u_id='12345';

select * from user;

delete from user
where u_id='12345';

delete from user;


create table reel(
reel_name varchar(20) unique,
reel_duration time unique not null,
reel_type varchar(15));

insert into reel values('lassi making',25,'cooking'),('maggie',50,'cook');

select * from reel;

drop table reel;