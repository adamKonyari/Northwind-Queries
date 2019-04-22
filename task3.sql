select company_name as Company
from suppliers s
join products p
on s.supplier_id = p.supplier_id
group by s.company_name
having count(product_name) = 5
order by s.company_name asc;