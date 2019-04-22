select suppliers.company_name, products.product_name, products.unit_price from products
join suppliers on suppliers.supplier_id = products.supplier_id
join (select products.supplier_id, max(products.unit_price) as unit_price
from products
group by products.supplier_id) as Q1
on products.supplier_id = Q1.supplier_id and products.unit_price = Q1.unit_price
order by unit_price desc;