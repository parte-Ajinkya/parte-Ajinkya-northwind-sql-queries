/* 28. Find the top 3 most popular categories of products ordered */

select  c.category_name,count(order_id) As "TotalOrder"  from categories c inner join products p 
On c.category_id = p.category_id
Inner join order_details o_d
On p.product_id = o_d.product_id
Group by c.category_id
Order by TotalOrder desc Limit 3;