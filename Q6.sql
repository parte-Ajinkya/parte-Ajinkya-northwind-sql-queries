/* 6. Get the customers who have placed more than 10 orders */

select c.company_name As "customers",count(o.order_id)  as "Orders" 
from customers c left join orders o On 
c.customer_id = o.customer_id 
group by c.customer_id
having count(o.order_id) > 10;