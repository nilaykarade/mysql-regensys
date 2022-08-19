select * from orders;

select orders.order_id, ecommerce_customer.customer_name
from ecommerce_customer
inner join orders
on ecommerce_customer.customer_id=orders.customer_id;

select orders.order_id, ecommerce_customer.customer_name,
ecommerce_customer.customer_delivery_address
from ecommerce_customer
inner join orders
on ecommerce_customer.customer_id=orders.customer_id;

select orders.order_id, ecommerce_customer.customer_name,
products.product_name,orders.sale_amount,
ecommerce_customer.customer_delivery_address
from ecommerce_customer
inner join orders on ecommerce_customer.customer_id=orders.customer_id
inner join products on products.product_id=orders.product_id;


select orders.order_id, ecommerce_customer.customer_name,
products.product_name,orders.sale_amount,
ecommerce_customer.customer_delivery_address
from ecommerce_customer
inner join orders on ecommerce_customer.customer_id=orders.customer_id
inner join products on products.product_id=orders.product_id
where ecommerce_customer.customer_name='Joy';

select orders.order_id, ecommerce_customer.customer_name,
sum(orders.sale_amount)
from ecommerce_customer
inner join orders on ecommerce_customer.customer_id=orders.customer_id
inner join products on products.product_id=orders.product_id
where ecommerce_customer.customer_name='Joy';

select distinct(orders.order_id), ecommerce_customer.customer_name
from ecommerce_customer
inner join orders on ecommerce_customer.customer_id=orders.customer_id
inner join products on products.product_id=orders.product_id
where ecommerce_customer.customer_name='Kashmira';

select count(distinct(orders.order_id)), ecommerce_customer.customer_name
from ecommerce_customer
inner join orders on ecommerce_customer.customer_id=orders.customer_id
inner join products on products.product_id=orders.product_id
where ecommerce_customer.customer_name='Kashmira';


select orders.order_id, ecommerce_customer.customer_name
from ecommerce_customer
left join orders
on ecommerce_customer.customer_id=orders.customer_id;


select orders.order_id, ecommerce_customer.customer_name
from ecommerce_customer
right join orders
on ecommerce_customer.customer_id=orders.customer_id;



select orders.order_id, ecommerce_customer.customer_name
from ecommerce_customer
cross join orders
on ecommerce_customer.customer_id=orders.customer_id;
