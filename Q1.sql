/* 1. Get the total number of orders placed by each customer */

select customers.customer_id as "Customers" ,count(orders.order_id) as "Orders"
from customers left join orders
On customers.customer_id =orders.customer_id
group by customers.customer_id;