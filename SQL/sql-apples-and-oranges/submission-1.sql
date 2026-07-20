-- Write your query below
with cte as(
    select
        sale_date,
        sum(case when fruit='apples' then sold_num else 0 end) ap,
        sum(case when fruit='oranges' then sold_num else 0 end) ora
    from
        sales
    group by sale_date
)
select
    sale_date,
    ap-ora as diff
from
    cte
order by sale_date;