-- Write your query below
select
    customer_id
    , customer_name
from customers c
where customer_id in (
    select customer_id from orders o where o.customer_id=c.customer_id and product_name='A'
) and customer_id in (
    select customer_id from orders o where o.customer_id=c.customer_id and product_name='B'
) and customer_id not in (
    select customer_id from orders o where o.customer_id=c.customer_id and product_name='C'
)
order by customer_name;