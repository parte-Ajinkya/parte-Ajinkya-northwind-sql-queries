/* 29. Find the month in the year 2016 with the highest total sales */

select Month(o.order_date) AS "SalesMonth",round(sum(p.unit_price * o_d.quantity - (p.unit_price * o_d.quantity * o_d.discount)),2) as "Sales"
from orders o inner join order_details o_d
On o.order_id = o_d.order_id       
inner join products p
on p.product_id = o_d.product_id
WHERE YEAR(o.order_date) = 2016
GROUP BY MONTH(o.order_date)
ORDER BY Sales DESC
LIMIT 1;
