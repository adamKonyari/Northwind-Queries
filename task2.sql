select company_name as Company, count(product_name) as NumberOfProducts
from suppliers s
join products p
on s.supplier_id = p.supplier_id
group by s.company_name
order by NumberOfProducts desc, Company asc;

