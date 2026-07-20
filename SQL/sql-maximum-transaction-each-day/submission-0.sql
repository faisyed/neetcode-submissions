-- Write your query below
with cte as (
    select
        transaction_id,
        rank() over(partition by to_char(day,'yyyy-mm-dd') order by amount desc) as rnk
    from
        transactions
)
select transaction_id from cte where rnk=1 order by transaction_id;