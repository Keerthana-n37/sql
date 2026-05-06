create database flipkart_db;

use flipkart_db;


create table users(
    user_id int,
    user_name varchar(50),
    email varchar(100),
    phone_number varchar(15),
    password varchar(50),
    city varchar(50),
    pincode varchar(10),
    created_date date
);

create table cart(
    cart_id int,
    user_id int,
    product_id int,
    quantity int,
    added_date date
);


create table payments(
    payment_id int,
    order_id int,
    payment_method varchar(50),
    payment_status varchar(50),
    transaction_id varchar(100),
    payment_date date,
    amount decimal(10,2)
);


insert into users values
(1, 'rahul', 'rahul@gmail.com', '9876543210', 'rahul@123', 'bangalore', '560001', '2026-01-10'),
(2, 'ananya', 'ananya@gmail.com', '9876501234', 'anya@123', 'mysore', '570001', '2026-01-12'),
(3, 'kiran', 'kiran@gmail.com', '9123456780', 'kiran@123', 'tumkur', '572101', '2026-01-15'),
(4, 'deepa', 'deepa@gmail.com', '9988776655', 'deepa@123', 'hubli', '580020', '2026-01-18'),
(5, 'arjun', 'arjun@gmail.com', '9001122334', 'arjun@123', 'mangalore', '575001', '2026-01-20');



insert into cart values
(1, 1, 1, 1, '2026-02-10'),
(2, 2, 3, 2, '2026-02-11'),
(3, 3, 5, 1, '2026-02-12'),
(4, 4, 2, 1, '2026-02-13'),
(5, 5, 4, 1, '2026-02-14');



insert into payments values
(1, 101, 'upi', 'success', 'TXN1001', '2026-02-10', 70000.00),
(2, 102, 'card', 'success', 'TXN1002', '2026-02-11', 36000.00),
(3, 103, 'cash', 'pending', 'TXN1003', '2026-02-12', 18000.00),
(4, 104, 'upi', 'success', 'TXN1004', '2026-02-13', 110000.00),
(5, 105, 'card', 'failed', 'TXN1005', '2026-02-14', 56000.00);


select * from users;


select * from cart;


select * from payments;