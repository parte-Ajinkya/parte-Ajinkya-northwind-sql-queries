/* 22. Get the employees who have processed orders for ‘Chai’ product */

select e.First_name, e.Last_name ,p.product_name from employees e inner join orders o
On e.employee_id = o.employee_id
inner join order_details o_d 
On o.order_id = o_d.order_id
Inner join products p 
On o_d.product_id = p.product_id
where product_name = "Chai";