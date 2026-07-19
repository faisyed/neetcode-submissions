-- Write your query below
select seller_name
from seller
where seller_id not in (
    select
        distinct seller_id
    from
        orders
    where to_char(sale_date,'yyyy')='2020'
)
order by seller_name;