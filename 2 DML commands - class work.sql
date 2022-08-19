#DML ( Data Manipulation Language) commands

/*
insert
update
delete
*/

#insert ver 1
insert into ecommerce_customer (customer_name, customer_email,customer_date_joined, customer_premium_membership, customer_mobile_no, customer_delivery_address )
values('Nilay Karade','nilay@gmail.com','2021-08-15' , true,'9999999999','Johansburb');

insert into ecommerce_customer (customer_name, customer_email,customer_date_joined, customer_premium_membership, customer_mobile_no, customer_delivery_address )
values('John','john@yahoo.com','2009-08-15' , false,'9999999999','Abu Dhabi');

insert into ecommerce_customer (customer_name, customer_email,customer_date_joined, customer_premium_membership, customer_mobile_no, customer_delivery_address )
values('Jena','jena@yahoo.com','2009-08-15' , false,'8888999999','Aberdeen');

insert into ecommerce_customer (customer_name, customer_email,customer_date_joined, customer_premium_membership, customer_mobile_no, customer_delivery_address )
values('Joy','joy@yahoo.com','2003-04-25' , false,'8888999444','Addo');

 
 
insert into ecommerce_customer (customer_name, customer_email,customer_date_joined, customer_premium_membership, customer_mobile_no, customer_delivery_address )
values('Meera','Meera@gmail.com','2021-11-15' , true,'8888999999','Lagos');

insert into ecommerce_customer (customer_name, customer_email,customer_date_joined, customer_premium_membership, customer_mobile_no, customer_delivery_address )
values('Anaya Karade','anaya@gmail.com','2020-05-25' , true,'5559999999','Abuja');

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


########### Product table ##########

insert into products
values (null, 'Business Shirt', 'Wrinkle-free cotton business shirt', 'Mens clothing', 300),
(null, 'Trousers', 'Black trousers suitable for every business man', 'Mens clothing',400),
(null, 'Jacket', 'Fully lined jacket which is both professional and extremely comfortable to wear', 'Mens clothing', 450 ),
(null, 'Blouse', 'Silk blouse ideal for all business women', 'Womens clothing', 300),
(null, 'Skirt', 'Wrinkle free skirt', 'Womens clothing', 320),
(null, 'Ladies Shoes', 'Low heel and cushioned interior for comfort and style in simple yet elegant shoes', 'Womens clothing',250 ),
(null, 'Belt', 'Leather belt', 'Accessories', 220),
(null, 'Bag', 'Unisex bag suitable for carrying laptops with room for many additional items', 'Accessories', 420),
(null, 'Mens Shoes', 'Leather upper and lower lace up shoes', 'Mens', 365),
(null, 'Wallet', 'Travel wallet suitable for men and women. Several compartments for credit cards, passports and cash', 'Accessories', 150),
(null, 'A4 Paper bundle','A4 Paper 10GSM - 500 pages','Office Consumables',100),
(null, 'Ink cartridge','Ink cartridge for InkJet preinters','Office Consumables',300),
(null, 'Printer toner','Printer toner for Laser Printers','Office Consumables',1000),
(null, 'Wired mouse by XYZ','Wired mouse by XYZ','Computers',30),
(null, 'Wireless mouse by XYZ','Wired mouse by XYZ','Computers',60),
(null, 'Wired keyboard by XYZ','Wired keyboard by XYZ','Computers',80),
(null, 'Wireless keyboard by XYZ','Wired keyboard by XYZ','Computers',160),
(null, 'Pen drive 16GB','Pen drive 16GB by ABC','Computers',60),
(null, 'Pen drive 32GB','Pen drive 32GB by ABC','Computers',80),
(null, 'Pen drive 64GB','Pen drive 64GB by ABC','Computers',100),
(null, 'Pen drive 128GB','Pen drive 128GB by ABC','Computers',120),
(null, 'Dish washing liquid','Dish washing liquid by ABC','Kithen & Home',389),
(null, 'Electric kettle','Electric kettle corless','Kithen & Home',170),
(null, 'Pillows','Set of 2 Pillow by pillows.com','Kithen & Home',210),
(null, 'Floor broom','set of 4 brooms by broom.com','Kithen & Home',200);

select CURRENT_TIMESTAMP();

select cast(CURRENT_TIMESTAMP()+0 as char);

select concat(cast(CURRENT_TIMESTAMP()+0 as char),'_',1);

#select concat(CONVERT(varchar,CURRENT_TIMESTAMP()+0),'_',12);

truncate table orders;
describe  orders;
/*
order_id, varchar(100), customer_id, int unsigned, product_id, int unsigned,  product_quantity, int,  sale_amount, float
*/

############### order table  #####################
insert into orders 
values (concat(12,'_',cast(CURRENT_TIMESTAMP()+0 as char)),12,1,2,200),
(concat(12,'_',cast(CURRENT_TIMESTAMP()+0 as char)),12,11,10,1000),
(concat(12,'_',cast(CURRENT_TIMESTAMP()+0 as char)),12,15,2,60),
(concat(12,'_',cast(CURRENT_TIMESTAMP()+0 as char)),12,1,3,200);    

insert into orders 
values (concat(11,'_',cast(CURRENT_TIMESTAMP()+0 as char)),11,1,2,200),
(concat(11,'_',cast(CURRENT_TIMESTAMP()+0 as char)),11,11,10,1000),
(concat(11,'_',cast(CURRENT_TIMESTAMP()+0 as char)),11,15,1,60),
(concat(11,'_',cast(CURRENT_TIMESTAMP()+0 as char)),11,1,2,200);    

insert into orders 
values (concat(15,'_',cast(CURRENT_TIMESTAMP()+0 as char)),15,1,2,200),
(concat(15,'_',cast(CURRENT_TIMESTAMP()+0 as char)),15,3,10,450),
(concat(15,'_',cast(CURRENT_TIMESTAMP()+0 as char)),15,15,1,60),
(concat(15,'_',cast(CURRENT_TIMESTAMP()+0 as char)),15,16,2,80);   

insert into orders 
values (concat(16,'_',cast(CURRENT_TIMESTAMP()+0 as char)),16,24,3,210),
(concat(16,'_',cast(CURRENT_TIMESTAMP()+0 as char)),16,13,10,1000),
(concat(16,'_',cast(CURRENT_TIMESTAMP()+0 as char)),16,15,1,60),
(concat(16,'_',cast(CURRENT_TIMESTAMP()+0 as char)),16,1,2,200);     

insert into orders 
values (concat(19,'_',cast(CURRENT_TIMESTAMP()+0 as char)),19,1,2,200),
(concat(20,'_',cast(CURRENT_TIMESTAMP()+0 as char)),20,11,10,1000),
(concat(20,'_',cast(CURRENT_TIMESTAMP()+0 as char)),20,15,1,60),
(concat(20,'_',cast(CURRENT_TIMESTAMP()+0 as char)),20,1,2,200);    

insert into orders 
values (concat(12,'_',cast(CURRENT_TIMESTAMP()+0 as char)),12,1,2,200),
(concat(12,'_',cast(CURRENT_TIMESTAMP()+0 as char)),12,11,10,1000),
(concat(13,'_',cast(CURRENT_TIMESTAMP()+0 as char)),13,15,1,60),
(concat(13,'_',cast(CURRENT_TIMESTAMP()+0 as char)),13,1,2,200),
(concat(16,'_',cast(CURRENT_TIMESTAMP()+0 as char)),16,1,2,200),
(concat(11,'_',cast(CURRENT_TIMESTAMP()+0 as char)),11,11,10,1000),
(concat(17,'_',cast(CURRENT_TIMESTAMP()+0 as char)),17,15,1,60),
(concat(17,'_',cast(CURRENT_TIMESTAMP()+0 as char)),17,1,2,200);    

select * from products;
