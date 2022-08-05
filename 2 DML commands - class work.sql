#DML ( Data Manipulation Language) commands

/*
insert
update
deletecustomer
*/


insert into ecommerce_customer (customer_name, customer_email,customer_date_joined, customer_premium_membership, customer_mobile_no, customer_delivery_address )
values('Nilay Karade','nilay@gmail.com','2021-08-15' , true,'9999999999','Pune');


insert into ecommerce_customer (customer_name, customer_email,customer_date_joined, customer_premium_membership, customer_mobile_no, customer_delivery_address)
values('Samson','Samson@gmail.com','2020-08-15' , true,'8889999999','Abuja');

select * from ecommerce_customer;