/* 8. Find the products that have never been ordered */

SELECT Products.*
FROM Products
LEFT JOIN order_details ON Products.product_id = order_details.product_id
WHERE order_details.order_id IS NULL;