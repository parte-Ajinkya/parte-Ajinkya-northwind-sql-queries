/* 3. Get the total quantity of each product sold */

select p.product_name , sum(o.quantity) as "Quantity" from products p inner join order_details o 
On p.product_id = o.product_id
where p.discontinued = 0 
group by p.product_id;