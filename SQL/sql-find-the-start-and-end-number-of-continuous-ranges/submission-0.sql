-- Write your query below
with cte as (
    select
        log_id,
        log_id - row_number() over(order by log_id) as grp
    from
        logs
)
select min(log_id) start_id, max(log_id) end_id
from cte
group by grp
order by grp;