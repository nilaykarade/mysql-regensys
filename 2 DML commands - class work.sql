#DML ( Data Manipulation Language) commands

/*
insert
update
delete
*/

#insert ver 1
insert into ecommerce_customer (customer_name, customer_email,customer_date_joined, customer_premium_membership, customer_mobile_no, customer_delivery_address )
values('Nilay Karade','nilay@gmail.com','2021-08-15' , true,'9999999999','Pune');


insert into ecommerce_customer (customer_name, customer_email,customer_date_joined, customer_premium_membership, customer_mobile_no, customer_delivery_address)
values('Samson','Samson@gmail.com','2020-08-15' , true,'8889999999','Abuja');

select * from ecommerce_customer;

#insert ver 2
insert into ecommerce_customer 
values(null,'Paul','paul@gmail.com','2021-04-25' , true,'7999999999','Potch');

#truncate table ecommerce_customer; 

#insert ver 3

insert into ecommerce_customer (customer_name, customer_email,customer_date_joined, customer_premium_membership, customer_mobile_no, customer_delivery_address)
values('Kashmira','Kashmira@gmail.com','2020-08-15' , true,'8889999999','Durban'),
('Cynthiya','Cynthiya@gmail.com','2020-08-15' , true,'8889999999','Johansburb');

#insert ver 4
insert into ecommerce_customer 
values(null,'Liam','Liam@gmail.com','2021-08-15' , true,'8889994499','Abuja'),
(null,'Cynthiya','Cynthiya@gmail.com','2010-08-15' , true,'8889559999','Lagos');


update ecommerce_customer
set customer_name='Samson Avongs'
where customer_id=2;

update ecommerce_customer
set customer_delivery_address='Pretoria'
where customer_id=6;

#delete from ecommerce_customer;

delete from ecommerce_customer
where customer_id=8;

select * from ecommerce_customer;

select customer_name,customer_mobile_no from ecommerce_customer; 





show databases;