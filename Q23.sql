/* 23. Find the most common shipping country */

select  ship_country, Count(order_id) as "No_of_Orders" from orders
group by ship_country
order by No_of_orders desc limit 4;