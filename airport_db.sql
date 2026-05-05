create database airport_db;

use airport_db;


create table passengers(
passenger_id int,
passenger_name varchar(50),
age int,
gender varchar(10),
flight_id int,
seat_number varchar(10),
ticket_price decimal(10,2),
booking_status varchar(50),
payment_mode varchar(50),
booking_date date
);


insert into passengers values
(1, 'rahul', 25, 'male', 1, 'A1', 5500.00, 'confirmed', 'upi', '2026-05-01'),
(2, 'ananya', 22, 'female', 2, 'B2', 6200.00, 'confirmed', 'card', '2026-05-02'),
(3, 'kiran', 30, 'male', 3, 'C3', 7000.00, 'cancelled', 'cash', '2026-05-03'),
(4, 'deepa', 28, 'female', 4, 'D4', 4800.00, 'confirmed', 'upi', '2026-05-04'),
(5, 'arjun', 35, 'male', 5, 'E5', 8000.00, 'cancelled', 'upi', '2026-05-05');


select * from passengers;
