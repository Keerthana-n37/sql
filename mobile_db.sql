create database mobile_db;

use mobile_db;

create table brands(
    brand_id int primary key,
    brand_name varchar(50),
    country varchar(50),
    established_year int
);

insert into brands values
(1, 'apple', 'usa', 1976),
(2, 'samsung', 'south korea', 1938),
(3, 'xiaomi', 'china', 2010),
(4, 'oneplus', 'china', 2013),
(5, 'vivo', 'china', 2009),
(6, 'oppo', 'china', 2004),
(7, 'realme', 'china', 2018),
(8, 'motorola', 'usa', 1928),
(9, 'nokia', 'finland', 1865),
(10, 'google', 'usa', 1998);


select * from brands;


