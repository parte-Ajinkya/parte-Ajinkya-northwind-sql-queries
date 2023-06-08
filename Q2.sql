/* 2. Find all suppliers who provide products in the ‘Seafood’ category */

select distinct s.company_name As "supplier",c.category_name
from suppliers s inner join products p
On s.supplier_id = p.supplier_id
Inner join categories c 
on c.category_id = p.category_id
where category_name ="Seafood";
