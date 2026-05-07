create database dmart_db;

use dmart_db;

create table products(
product_id int unique,
product_name varchar(50) not null,
brand char(25),
category enum('groceries','electronics','clothes'),
price decimal,
discount double,
manufacture_date date,
expiry_date date,
product_code binary(10) unique not null,
product_details text);

insert into products values
(101,'oreo biscuits','oreo','groceries',20,1.0,'2026-01-27','2026-06-30','1010111','cream biscuit');

insert into products values
(102,'lays chips','lays','groceries',30,2.5,'2025-02-15','2025-08-15','1010112','salted chips');

insert into products values
(103,'t-shirt','nike','clothes',1200,10.0,'2025-01-10','2028-01-10','1010113','cotton t-shirt');

insert into products values
(104,'smart watch','boat','electronics',2500,10.5,'2025-03-01','2029-03-01','1010114','bluetooth smart watch');

insert into products values
(105,'rice','basmathi','groceries',1200,10.5,'2025-01-01','2026-01-01','101011','rice with good quality'),
(106,'tv','Samsung','electronics',45000,15.0,'2025-02-01','2028-02-01','1010110','Smart TV'),
(107,'shirt','levis','clothes',1999,5.5,'2025-03-01','2027-03-01','101111','Cotton shirt'),
(108,'wheat flour','aashirvaad','groceries',650,8.0,'2025-01-15','2025-12-15','1001111','healthy flour');

insert into products(product_id,product_name,price,product_code)
values(109,'toar dal',110,'101011011');

insert into products(product_id,product_name,product_code)
values(110,'haldirams mixture','1011111');

insert into products(product_id,product_name,category,manufacture_date,product_code)
values(111,'dry fruits','groceries','2026-01-13','10111101');

insert into products(product_id,product_name,brand,price,discount,product_code,product_details)
values(112,'puma shoes','puma',1999,12.5,'101010','sports shoes');

insert into products(product_id,product_name,brand,category,price,discount,manufacture_date,expiry_date,product_code,product_details)
values (113, 'maggie noodles', 'nestle', 'groceries', 50, 2.0, '2025-06-10', '2026-06-10', '1011001', 'instant noodles');
insert into products(product_id,product_name,brand,category,price,discount,manufacture_date,expiry_date,product_code,product_details)
values (114,'bluetooth earphones','boat','electronics', 1500, 15.0, '2025-05-01', '2028-05-01', '1011002', 'wireless earphones with mic');
insert into products(product_id,product_name,brand,category,price,discount,manufacture_date,expiry_date,product_code,product_details)
values (115,'jeans','levis', 'clothes',2200, 10.0, '2025-02-20', '2028-02-20', '1011003', 'regular fit jeans');
insert into products(product_id,product_name,brand,category,price,discount,manufacture_date,expiry_date,product_code,product_details)
values (116,'toothpaste','colgate','groceries',90, 5.0, '2025-03-15', '2027-03-15', '1011004', 'mint flavored ');

update products
set price = 60
where product_id=101;

update products
set discount = 12.0
where product_id =103;

update products
set product_name ='premium t-shirt'
where product_id = 103;

update products
set brand ='nestle india'
where product_id = 113;


delete from products
where product_id = 110;

delete from products
where price=90;

delete from products
where product_name='toothpaste';

delete from products
where brand='boat';

select * from products;




create table employee(
employee_id char(5) unique,
employee_name varchar(30) not null,
gender enum('male','female'),
department varchar(20),
skills set('billing','sales','packing'),
salary decimal,
bouns double,
reporting_time time,
experience int,
remarks bigint);

insert into employee values
('E101','john','male','sales','billing,sales',25000,1000,'09:00:00',2,1);

insert into employee values
('E102','neha','female','billing','billing,packing',28000,1200,'10:00:00',3,0);

insert into employee values
('E103','arjun','male','warehouse','packing,sales',30000,1500,'08:30:00',4,1);

insert into employee values
('E104','divya','female','sales','sales',32000,1800,'09:15:00',5,1);

insert into employee values
('E105','kiran','male','sales','billing',27000,1100,'09:00:00',3,1),
('E106','meena','female','billing','packing',29000,1200,'10:00:00',4,0),
('E107','rahul','male','packing','sales,packing',31000,1500,'08:45:00',5,1),
('E108','sneha','female','sales','billing,sales',33000,1600,'09:30:00',6,1);

insert into employee(employee_id,employee_name,salary,experience)
values('E109','amit',26000,2);

insert into employee(employee_id,employee_name,salary,experience)
values('E110','pooja',28000,3);

insert into employee(employee_id,employee_name,salary,experience)
values('E111','kavya',30000,4);

insert into employee(employee_id,employee_name,salary,experience)
values('E112','ravi',32000,5);

insert into employee(employee_id,employee_name,department,skills,salary,bouns,reporting_time,experience,remarks)
values('E113','deepak','sales','sales,packing',29000,1200,'09:00:00',3,1);

insert into employee(employee_id,employee_name,department,skills,salary,bouns,reporting_time,experience,remarks)
values('E114','swathi','billing','billing',31000,1300,'10:00:00',4,0);

insert into employee(employee_id,employee_name,department,skills,salary,bouns,reporting_time,experience,remarks)
values('E115','manoj','packing','packing,sales',33000,1400,'08:30:00',5,1);

insert into employee(employee_id,employee_name,department,skills,salary,bouns,reporting_time,experience,remarks)
values('E116','anita','sales','sales',35000,1500,'09:15:00',6,1);

select * from employee;

update employee
set salary = 40000
where employee_id = 'E101';

update employee
set department = 'billing'
where employee_id = 'E104';

update employee
set bouns = 2000
where employee_id = 'E107';

update employee
set experience = 7
where employee_id = 'E112';

delete from employee
where employee_id = 'E109';

delete from employee
where salary < 27000;

delete from employee
where department = 'warehouse';

delete from employee
where gender = 'female';





create table orders(
order_id char(5) unique,
customer_name varchar(30) not null,
no_of_items int,
order_date date,
delivery_time time,
total_amount decimal,
payment_mode varchar(20),
order_status enum('pending','shipped','delivered'),
address text not null,
payment_status boolean);

insert into orders values
('O101','rahul',3,'2026-05-01','14:00:00',1500,'upi','pending','bangalore',0);

insert into orders values
('O102','sneha',5,'2026-05-02','16:00:00',3000,'card','shipped','mysore',1);

insert into orders values
('O103','kiran',2,'2026-05-03','12:30:00',800,'cash','delivered','chennai',1);

insert into orders values
('O104','divya',4,'2026-05-04','18:00:00',2200,'upi','pending','hyderabad',0);

insert into orders values
('O105','arjun',2,'2026-05-05','11:00:00',900,'upi','shipped','bengaluru',1),
('O106','neha',4,'2026-05-06','13:00:00',1800,'cash','pending','mysore',0),
('O107','amit',3,'2026-05-07','15:00:00',2500,'card','delivered','chennai',1),
('O108','pooja',5,'2026-05-08','17:00:00',3200,'upi','pending','hyderabad',0);

insert into orders(order_id,customer_name,total_amount,address)
values('O109','kavya',1200,'mysore');

insert into orders(order_id,customer_name,total_amount,delivery_time,address)
values('O110','ravi',1500,'18:30:00','bengaluru');

insert into orders(order_id,customer_name,address)
values('O111','swathi','bengaluru');

insert into orders(order_id,customer_name,no_of_items,total_amount,address)
values('O112','deepak',20,2000,'chennai');

insert into orders(order_id,customer_name,order_date,payment_mode,address,payment_status)
values('O113','manoj','2026-05-10','upi','bangalore',1),
('O114','anita','2026-05-11','cash','mysore',0),
('O115','rahul','2026-05-12','card','chennai',1),
('O116','sneha','2026-05-13','upi','hyderabad',1);

select * from orders;

update orders
set order_status = 'delivered'
where order_id = 'O101';

update orders
set total_amount = 1800
where order_id = 'O104';

update orders
set payment_mode = 'cash'
where order_id = 'O106';

update orders
set address = 'mysore'
where order_id = 'O110';

delete from orders
where order_id = 'O111';

delete from orders
where payment_status = 0;

delete from orders
where total_amount = 1000;

delete from orders
where order_status = 'pending';






create table suppliers(
supplier_name varchar(35) not null,
company_name char(20),
supply_type enum('groceries','electronis','clothing','cosmetics'),
company_address text,
service_area set('rural','urban'),
package_cost float,
service_cost double,
material_type text,
license_year year,
service_rating float);

insert into suppliers values
('ram','Tredend enterprise private ltd','groceries','bangalore','urban',100.5,500.0,'food',2022,4.5);

insert into suppliers values
('meena','dynamic clothing center','clothing','mysore','urban',200.0,800.0,'garments',2021,4.2);

insert into suppliers values
('arjun','lakme','cosmetics','chennai','urban',150.0,600.0,'beauty',2023,4.8);

insert into suppliers values
('kiran','shristi ventures','groceries','hyderabad','rural',90.0,400.0,'daily',2020,4.0);

insert into suppliers values
('ravi','Tredend enterprise private ltd','groceries','ballery','urban',110.0,520.0,'food',2022,4.3),
('divya','devatha garments','clothing','mysore','rural',210.0,820.0,'fashion',2021,4.6),
('swathi','swiss beauty','cosmetics','chennai','urban',160.0,610.0,'beauty',2023,4.7),
('manoj','Tredend enterprise private ltd','groceries','hyderabad','rural',95.0,410.0,'daily',2020,4.1);

insert into suppliers(supplier_name,company_name,service_area,service_cost)
values('anita','ponds','rural,urban',700.0);

insert into suppliers(supplier_name,license_year,service_rating) 
values('deepak',2022,4.5);

insert into suppliers(supplier_name,company_name)
values('rahul','blue lake enterprise');

insert into suppliers(supplier_name,service_cost)
values('sneha',1000.0);

insert into suppliers(supplier_name,supply_type,service_area,license_year,service_rating)
values('kavya','groceries','urban',2024,4.9);

insert into suppliers(supplier_name,supply_type,service_area,license_year,service_rating)
values('pooja','clothing','rural',2023,4.5);

insert into suppliers(supplier_name,supply_type,service_area,license_year,service_rating)
values('amit','cosmetics','urban',2022,4.6);

insert into suppliers(supplier_name,supply_type,service_area,license_year,service_rating)
values('ravi','groceries','rural',2021,4.3);

select * from suppliers;

update suppliers
set service_rating = 4.9
where supplier_name = 'arjun';

update suppliers
set package_cost = 120
where supplier_name = 'ram';

update suppliers
set company_name = 'lakme india'
where supplier_name = 'arjun';

update suppliers
set service_cost = 900
where supplier_name = 'meena';

delete from suppliers
where license_year = 2020;

delete from suppliers
where service_rating =4.2;

delete from suppliers
where supply_type = 'electronis';

delete from suppliers
where supplier_name = 'sneha';






create table customer(
customer_id int,
first_name varchar(25) not null,
last_name char(20),
email varchar(30) unique not null,
phone_number bigint,
gender enum('male','female','other'),
address text,
product_rating float,
customer_type set('regular','wholesale'),
alternate_phone_number bigint);

insert into customer values
(1,'rahul','sharma','rahul@gmail.com',9876543210,'male','ballery',4.5,'regular',9876500000);

insert into customer values
(2,'sneha','reddy','sneha@gmail.com',9876543211,'female','mysore',4.2,'wholesale',9876500001);

insert into customer values
(3,'kiran','naik','kiran@gmail.com',9876543212,'male','chennai',4.8,'regular',9876500002);

insert into customer values
(4,'divya','rao','divya@gmail.com',9876543213,'female','hyderabad',4.1,'regular',9876500003);

insert into customer values
(5,'amit','kumar','amit@gmail.com',9876543214,'male','maharastra',4.6,'regular',9876500004),
(6,'pooja','sharma','pooja@gmail.com',9876543215,'female','pune',4.7,'wholesale',9876500005),
(7,'swathi','reddy','swathi@gmail.com',9876543216,'female','chennai',4.3,'regular',9876500006),
(8,'manoj','naik','manoj@gmail.com',9876543217,'male','hyderabad',4.0,'regular',9876500007);

insert into customer(customer_id,first_name,last_name,phone_number,gender)
values(9,'deepak','kumar',9876543201,'male');

insert into customer(customer_id,first_name,address,customer_type,product_rating)
values(10,'anita','bangalore','regular',4.6);

insert into customer(customer_id,first_name,email,alternate_phone_number)
values(11,'rahul','rahul1@gmail.com',9876543202);

insert into customer(customer_id,first_name,last_name,address,customer_type,gender)
values(12,'sneha','sharma','mysore','wholesale','female');

insert into customer(customer_id,first_name,last_name,email,gender,address,customer_type)
values(13,'kavya','rao','kavya@gmail.com','female','maharastra','regular'),
(14,'ravi','sharma','ravi@gmail.com','male','mysore','wholesale'),
(15,'pooja','reddy','poojareddy@gmail.com','female','chennai','regular'),
(16,'amit','kumar','amitkumar@gmail.com','male','hyderabad','wholesale');

select * from customer;

update customer
set product_rating = 4.9
where customer_id = 3;

update customer
set customer_type = 'wholesale'
where customer_id = 1;

update customer
set address = 'bangalore'
where customer_id =2;

update customer
set email = 'divya123@gmail.com'
where customer_id =4;


delete from customer
where customer_id =10;

delete from customer
where product_rating =4.0;

delete from customer
where gender ='other';

delete from customer
where customer_type ='regular';

select * from customer;
