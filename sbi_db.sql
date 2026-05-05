create database sbi_db;

use sbi_db;


create table accounts(
account_id int,
account_holder varchar(50),
account_type varchar(30),
balance decimal(10,2),
branch_name varchar(50),
ifsc_code varchar(20),
phone_number varchar(15),
email varchar(50),
city varchar(50),
created_date date
);


insert into accounts values
(1, 'rahul sharma', 'savings', 50000.00, 'bangalore main', 'SBIN0001234', '9876543210', 'rahul@gmail.com', 'bangalore', '2025-01-10'),
(2, 'ananya shetty', 'current', 120000.00, 'mysore branch', 'SBIN0005678', '9876501234', 'ananya@gmail.com', 'mysore', '2025-02-15'),
(3, 'kiran kumar', 'savings', 30000.00, 'tumkur branch', 'SBIN0009876', '9123456780', 'kiran@gmail.com', 'tumkur', '2025-03-20'),
(4, 'deepa rao', 'savings', 75000.00, 'hubli branch', 'SBIN0004321', '9988776655', 'deepa@gmail.com', 'hubli', '2025-04-05'),
(5, 'arjun mehta', 'current', 200000.00, 'mangalore branch', 'SBIN0006789', '9001122334', 'arjun@gmail.com', 'mangalore', '2025-04-25'),
(6, 'sneha patil', 'savings', 45000.00, 'bangalore south', 'SBIN0001111', '9090909090', 'sneha@gmail.com', 'bangalore', '2025-05-01'),
(7, 'vivek nair', 'savings', 60000.00, 'udupi branch', 'SBIN0002222', '8888888888', 'vivek@gmail.com', 'udupi', '2025-05-10'),
(8, 'pooja reddy', 'current', 150000.00, 'davanagere branch', 'SBIN0003333', '7777777777', 'pooja@gmail.com', 'davanagere', '2025-05-12'),
(9, 'rahul naik', 'savings', 25000.00, 'bellary branch', 'SBIN0004444', '6666666666', 'rahuln@gmail.com', 'bellary', '2025-05-15'),
(10, 'megha joshi', 'savings', 90000.00, 'shimoga branch', 'SBIN0005555', '5555555555', 'megha@gmail.com', 'shimoga', '2025-05-18');


select * from accounts;