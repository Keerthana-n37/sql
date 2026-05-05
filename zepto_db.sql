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


select * from products




