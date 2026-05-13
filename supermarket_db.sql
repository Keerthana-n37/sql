create database supermarket_db;

use supermarket_db;

create table products (
    product_id int,
    product_name varchar(50),
    category varchar(50),
    price int
);

create table sold_products (
    product_id int,
    product_name varchar(50),
    category varchar(50),
    price int
);

insert into products values
(1, 'rice', 'grocery', 1200),
(2, 'milk', 'dairy', 50),
(3, 'bread', 'bakery', 40),
(4, 'soap', 'personal care', 35),
(5, 'shampoo', 'personal care', 180),
(6, 'biscuits', 'snacks', 25),
(7, 'juice', 'beverages', 90),
(8, 'oil', 'grocery', 150);

insert into sold_products values
(1, 'rice', 'grocery', 1200),
(2, 'milk', 'dairy', 50),
(3, 'bread', 'bakery', 40),
(4, 'soap', 'personal care', 35),
(9, 'chips', 'snacks', 30),
(10, 'ice cream', 'frozen food', 200),
(11, 'soft drink', 'beverages', 100),
(12, 'detergent', 'cleaning', 250);