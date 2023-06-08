/* 7. Get the top 5 most sold products */

select product_name,
case 
when units_in_stock <= units_on_order then units_in_stock * unit_price
when units_in_stock > units_on_order Then units_on_order* unit_price
else units_on_order* unit_price
End AS "Total_Products_sold"
From products
order by total_Products_sold desc limit 5;