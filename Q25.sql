/* 25. Find the employees who have processed more than 100 orders */

select e.first_name ,e.last_name , count(o.order_id)  from employees e inner join orders o 
On e.employee_id = o.employee_id 
Group by e.employee_id
having count(o.order_id) > 100;