# Clauses and conditions

#where clause (select and update commands)
select * from ecommerce_customer;

select * from ecommerce_customer 
where customer_delivery_address='Abuja';

select * from ecommerce_customer 
where customer_delivery_address='abuja';

select * from ecommerce_customer 
where customer_date_joined='2021-08-15';

select * from ecommerce_customer 
where customer_delivery_address='Johansburb' 
and customer_premium_membership=true;

#get customer from 2 cities
select * from ecommerce_customer 
where customer_delivery_address='Johansburb' and customer_delivery_address='Durban';


select * from ecommerce_customer 
where customer_delivery_address='Johansburb' or customer_delivery_address='Durban';

select * from ecommerce_customer 
where customer_delivery_address='Johansburb' 
or customer_delivery_address='Durban' 
or customer_delivery_address='Lagos';

select * from ecommerce_customer 
where customer_delivery_address='Johansburb' 
or customer_delivery_address='Durban' 
or customer_delivery_address='Lagos' order by customer_delivery_address;

select * from ecommerce_customer 
where  customer_premium_membership=true 
and (customer_delivery_address='Johansburb' or customer_delivery_address='Durban');

describe products;

select * from products 
where unit_price=100;

select product_name from products where unit_price=100;

select product_name, unit_price from products where unit_price!=100;

select product_name, unit_price from products where unit_price<>100;

select product_name, unit_price from products where unit_price<=100;

select * from products where unit_price<=200 and category='computers';

 #comparing strings, = compares the entire string while LIKE compares one character at a time. 

select * from products where category like 'computers';

select * from products 
where unit_price<=200 and category like 'computers';

select * from ecommerce_customer 
where customer_delivery_address like 'a%';

select * from ecommerce_customer 
where customer_delivery_address like 'ab%';

select * from ecommerce_customer 
where customer_delivery_address like '%a';

select * from ecommerce_customer 
where customer_delivery_address like '%a%';

select * from ecommerce_customer 
where customer_delivery_address like '_a%';

select * from ecommerce_customer 
where customer_delivery_address like '__go%';

select * from ecommerce_customer 
where (customer_delivery_address like 'j%' ) 
or  (customer_delivery_address like 'l%' );

select * from ecommerce_customer 
where (customer_delivery_address like 'j%' ) 
or  (customer_delivery_address like 'l%' ) 
order by customer_delivery_address;

select * from ecommerce_customer 
where (customer_delivery_address like 'Lagos') 
or (customer_delivery_address like 'Abuja') 
or (customer_delivery_address like 'Abu Dhabi');

select * from ecommerce_customer 
where customer_delivery_address in ('Lagos','Abuja','Abu Dhabi');

select * from products 
where category in  ('Computers','Office consumables');

select * from products 
where category in  ('Computers','Office consumables') 
and unit_price<150;

select * from products 
where category in  ('Computers','Office consumables') 
and unit_price<150 
order by unit_price;

#MySQL distinct  clause
select customer_delivery_address from ecommerce_customer;

select distinct customer_delivery_address from ecommerce_customer;

select distinct customer_delivery_address 
from ecommerce_customer 
order by customer_delivery_address;

#Task - write query to display distinct orders from order table

#MySQL FROM Clause


#MySQL ORDER BY Clause
#The MYSQL ORDER BY Clause is used to sort the records in ascending or descending order.
/*
Syntax:
SELECT expressions  
FROM tables  
[WHERE conditions]  
ORDER BY expression [ ASC | DESC ];
*/
select *  from ecommerce_customer;

select *  from ecommerce_customer 
order by customer_delivery_address;

#Task - list of product name, their price, ordered by product price

select *  from ecommerce_customer 
order by customer_delivery_address desc;

select *  from ecommerce_customer 
where customer_premium_membership=1 
order by customer_delivery_address ;

select distinct customer_delivery_address   
from ecommerce_customer;  

select distinct customer_delivery_address   
from ecommerce_customer  
order by customer_delivery_address ;

#display list of products order by their unit price from order table

#display list of distinct products order by their unit price from order table




