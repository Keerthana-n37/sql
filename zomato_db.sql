create database zomato_db;



use zomato_db;



create table orders (
    order_id int primary key,
    user_name varchar(100),
    restaurant_name varchar(100),
    food_items text,
    total_amount decimal(10,2),
    order_status varchar(50),
    payment_mode varchar(50),
    delivery_address text,
    delivery_time time,
    order_date date
);


insert into orders values
(1, 'rahul', 'kfc', 'burger, fries', 450.00, 'delivered', 'upi', 'bangalore, koramangala', '13:30:00', '2026-05-01'),
(2, 'ananya', 'dominos', 'pizza, coke', 699.00, 'delivered', 'card', 'bangalore, indiranagar', '19:45:00', '2026-05-02'),
(3, 'kiran', 'mcdonalds', 'mcchicken, fries', 320.00, 'pending', 'cash', 'mysore, vijayanagar', '14:10:00', '2026-05-03'),
(4, 'deepa', 'burger king', 'whopper, fries', 520.00, 'delivered', 'upi', 'bangalore, whitefield', '20:15:00', '2026-05-04'),
(5, 'rahul', 'zomato kitchen', 'biryani', 250.00, 'cancelled', 'upi', 'bangalore, electronic city', '12:00:00', '2026-05-05');


select * from orders;