/* 10. List all ‘Orders’ with ‘Customer’ details and ‘Employee’ who processed it */

select  * from customers c inner join
orders o 
On c.customer_id = o.customer_id
inner join employees e 
On o.employee_id= e.employee_id;