-- Write your query below
with cte as(
    select
        p.product_name,
        p.product_id,
        o.order_id,
        o.order_date,
        rank() over(partition by o.product_id order by o.order_date desc) as rnk
    from
        products p join orders o on p.product_id=o.product_id
)
select product_name, product_id, order_id, order_date
from cte
where rnk=1
order by product_name, product_id, order_id;