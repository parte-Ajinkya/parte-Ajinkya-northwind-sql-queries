/* 33. Find the suppliers who supply the top 5 most sold products */

select s.company_name ,p.product_name, round(sum(p.unit_price * o_d.quantity - (p.unit_price * o_d.quantity * o_d.discount)),2) As "Revenue" from suppliers s inner join products p 
On s.supplier_id = p.supplier_id
inner join order_details o_d 
On p.product_id = o_d.product_id
group by s.supplier_id
order by revenue DEsc limit 5;
  
