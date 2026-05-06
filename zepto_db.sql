create database zepto_db;

use zepto_db;


create table products(
product_id int,
product_name varchar(50),
category varchar(50),
price decimal(10,2),
stock_quantity int,
expiry_date date,
supplier_name varchar(100),
discount_percent int
);



insert into products values
(1, 'Milk Packet', 'Dairy', 60.00, 200, '2026-05-10', 'Nandini Dairy', 0),
(2, 'Butter', 'Dairy', 250.00, 40, '2026-06-01', 'Amul', 8),
(3, 'Cheese', 'Dairy', 300.00, 35, '2026-07-12', 'Britannia', 10),
(4, 'Apple', 'Fruits', 180.00, 150, '2026-05-15', 'Himachal Orchards', 12),
(5, 'Banana', 'Fruits', 40.00, 300, '2026-05-08', 'Local Farmers', 0),
(6, 'Tomato', 'Vegetables', 30.00, 250, '2026-05-06', 'Organic Farms', 5),
(7, 'Potato', 'Vegetables', 25.00, 400, '2026-06-01', 'Green Valley Farms', 3),
(8, 'Cooking Oil', 'Grocery', 150.00, 90, '2027-03-10', 'Fortune', 7),
(9, 'Tea Powder', 'Beverages', 200.00, 60, '2027-02-20', 'Tata Tea', 10),
(10, 'Coffee Powder', 'Beverages', 350.00, 45, '2027-04-11', 'Nescafe', 15),
(11, 'Biscuits', 'Snacks', 30.00, 500, '2026-09-01', 'Parle', 5),
(12, 'Chocolate', 'Snacks', 100.00, 120, '2026-08-15', 'Cadbury', 20);


select * from products;


create table customers(
    customer_name varchar(25),
    email varchar(25),
    phone bigint,
    city varchar(25),
    gender enum('male','female','other')
    );
    
    
create table orders(
       order_id int,
       product_name varchar(25),
       order_date date,
       amount decimal(10,2),
       status varchar(50));
       
       
create table suppliers(
          name varchar(25),
          company_name varchar(50),
          supplier_email varchar(30),
          phone_number bigint,
          address varchar(100));
          
create table payments(
          transaction_id varchar(50),
          amount_paid decimal(10,2),
          payment_method enum('upi','card','cod','netbanking'),
          payment_status enum('success','failed','pending'),
          remarks text);
          
rename table suppliers to vendors;

rename table payments to transactions;


alter table customers
add customer_id int,
add address varchar(100),
add pincode int;

alter table customers drop column city;
 
 alter table customers
 modify customer_name varchar(30),
 modify email varchar(30),
 modify customer_id char(3);
          
 desc customers;   
 
 alter table customers
 rename column customer_name to full_name;
 
alter table customers
 rename column phone to contact_number;
             



alter table vendors
add vendor_id int,
add rating float,
add created_date date;

alter table vendors drop column address;

alter table vendors
modify company_name varchar(35),
modify name varchar(28),
modify phone_number int;

alter table vendors
rename column name to vendor_name,
rename column phone_number to contact;

desc vendors;




alter table transactions
add payment_date date,
add is_refunded boolean,
add transaction_time time;

alter table transactions drop column remarks;

alter table transactions 
modify  transaction_id varchar(25),
modify amount_paid decimal(12,2),
modify payment_method enum('upi','card','cod','netbanking','wallet');

alter table transactions
rename column amount_paid to total_amount_paid,
rename column payment_status to status;

desc transactions;




alter table orders
add customer_id int,
add order_time time,
add discount decimal(5,2);

alter table orders drop column customer_id;

alter table orders
modify product_name varchar(50),
modify amount decimal(12,2),
modify order_date datetime;

alter table orders
rename column order_id to order_reference_no,
rename column amount to total_amount;

desc oders;


drop table vendors;

drop table transactions;





