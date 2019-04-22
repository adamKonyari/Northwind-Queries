select company_name as Company, array_agg(order_id) as order_id
from customers c
left join orders o on c.customer_id = o.customer_id
group by c.company_name
order by Company;
