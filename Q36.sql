/* 36. Classify customers based on their total order amounts such that total order amounts > 5000 should be classified as ‘High Value’, if > 1000 then as ‘Medium Value’ and otherwise as ‘Low Value’
Here is the sample output */

select c.company_name , sum(p.unit_price * o_d.quantity - (p.unit_price * o_d.quantity * o_d.discount)) As "TotalOrderAmount",
case
when sum(p.unit_price * o_d.quantity - (p.unit_price * o_d.quantity * o_d.discount)) > 5000 then 'High Value'
when sum(p.unit_price * o_d.quantity - (p.unit_price * o_d.quantity * o_d.discount))  > 1000 AND  sum(p.unit_price * o_d.quantity - (p.unit_price * o_d.quantity * o_d.discount)) <= 5000 then 'Medium Value'
else 'Low Value'
End as CustomerClass
from customers c inner join orders o 
On c.customer_id = o.customer_id
inner join order_details o_d 
On o.order_id = o_d.order_id
inner join products p 
On p.product_id = o_d.product_id
group by c.customer_id
Order by c.company_name ;  
