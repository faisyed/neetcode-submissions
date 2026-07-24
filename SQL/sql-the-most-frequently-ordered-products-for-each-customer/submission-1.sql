with cte as(
    select
        o.customer_id,
        o.product_id,
        p.product_name,
        RANK() OVER (PARTITION BY o.customer_id ORDER BY COUNT(*) DESC) AS rnk
    from
        orders o join products p on o.product_id = p.product_id
        join customers c on c.customer_id = o.customer_id
    group by 
        o.customer_id,
        o.product_id,
        p.product_name
)
select 
    customer_id,
    product_id,
    product_name
from cte
where rnk=1;