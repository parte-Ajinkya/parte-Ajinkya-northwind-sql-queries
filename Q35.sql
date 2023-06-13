/* 35. Find the total sales for each year */

select Year(o.order_date) AS "Year",round(sum(p.unit_price * o_d.quantity - (p.unit_price * o_d.quantity * o_d.discount)),2) as "TotalSales"
from orders o inner join order_details o_d
On o.order_id = o_d.order_id      
inner join products p 
On p.product_id = o_d.product_id
GROUP BY year(o.order_date)
ORDER BY TotalSales
