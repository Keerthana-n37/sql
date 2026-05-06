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




