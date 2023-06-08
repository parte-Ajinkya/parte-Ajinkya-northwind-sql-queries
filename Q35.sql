/* 35. Find the total sales for each year */

select Year(o.order_date) AS "Year",round(sum(o_d.unit_price * o_d.quantity - (o_d.unit_price * o_d.quantity * o_d.discount)),2) as "TotalSales"
from orders o inner join order_details o_d
On o.order_id = o_d.order_id       
GROUP BY year(o.order_date)
ORDER BY TotalSales;