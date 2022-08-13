# count

select * from ecommerce_customer;

select count(*) from ecommerce_customer;

select count(*) from products;

select count(customer_name) from ecommerce_customer;

select count(customer_name) from ecommerce_customer
where customer_delivery_address='Lagos';


describe products;

select count(*) from products
where category ='Computers';

select count(distinct customer_delivery_address) 
from ecommerce_customer; 

select count(distinct customer_delivery_address)  as  city_count
from ecommerce_customer; 

select distinct category from products;

select count(distinct category)  as  product_categories_count
from products; 

select customer_delivery_address from ecommerce_customer;

select customer_delivery_address 
from ecommerce_customer
group by customer_delivery_address;


select customer_delivery_address, count(*) 
from ecommerce_customer
group by customer_delivery_address;

select category, count(*) as product_count
from products
group by category;

select category, count(*) as product_count
from products
where unit_price>=100
group by category;

select category, count(*) as product_count
from products
where unit_price>=100 and (category in ('Office Consumables','Kithen & Home'))
group by category;

select category, count(*) as product_count
from products
group by category;


select category, count(*) as product_count
from products
group by category
having count(*)>=3;

select category, count(*) as product_count
from products
group by category
having count(*)>=3
order by count(*);

#sum()

select * from products;

select sum(unit_price) from products;

select sum(unit_price) 
from products
where category='computers';

select category, sum(unit_price) 
from products
group by category;

#avg

select avg(unit_price) from products;

select avg(unit_price) 
from products
where category='computers';

select category, avg(unit_price) 
from products
group by category;

#max()

select max(unit_price) from products;


select max(unit_price) 
from products
group by category='computers';

select max(unit_price) 
from products
group by category;

select product_name, category,unit_price
from products
where unit_price=(select max(unit_price) from products);


select product_name, category,unit_price
from products
where unit_price=(select max(unit_price) from products);



#min()

select min(unit_price) from products;

select min(unit_price) 
from products
group by category;

#limit

select * from products limit 5;

















