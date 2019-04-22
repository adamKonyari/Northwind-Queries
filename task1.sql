select product_name as Product, company_name as Company
from products p
join suppliers s
on p.supplier_id = s.supplier_id
order by p.product_name, s.company_name asc;