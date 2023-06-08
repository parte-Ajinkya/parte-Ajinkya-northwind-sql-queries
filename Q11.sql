/* 11. Calculate the average product price by category */

select c.category_name, AVG(p.unit_price) from products p inner join categories c 
On p.category_id = c.category_id
group by c.category_id;