/* 27. Find the average quantity of products ordered in each order */

select order_id ,product_id ,AVG(quantity) As "Average"
from Order_details
group by order_id;