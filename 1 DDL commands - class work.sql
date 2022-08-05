#DDL ( Data Definition Language) commands
/*
create
drop
alter
truncate
*/

show databases;

create database if not exists ecommerce_db;

use ecommerce_db;

create table if not exists customer(
customer_id int unsigned auto_increment primary key,
customer_name varchar(20),
customer_contact_no varchar(20),
customer_email varchar(30)
);

describe customer;

drop table customer;

# alter - add a column
alter table customer 
add customer_address VARCHAR(30);

describe customer;

# alter - add multiple columns
alter table customer
add customer_date_joined date, 
add customer_premium_membership bool; #true - 1, false - 0

describe customer;
#modilfy existing column - data type or size
alter table customer 
modify customer_contact_no varchar(10),
modify customer_address varchar(50);

describe customer;

#delete a column
alter table customer 
drop column customer_contact_no, 
drop column customer_address;

describe customer;

#adding deleted columns
alter table customer 
add customer_contact_no varchar(10),
add customer_address VARCHAR(30);


#renaming columns
alter table customer 
change customer_contact_no customer_mobile_no varchar(10),
change customer_address customer_delivery_address VARCHAR(30);

#change table name
alter table customer
rename ecommerce_customer;


describe ecommerce_customer;




