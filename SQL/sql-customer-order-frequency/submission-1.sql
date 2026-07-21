-- Write your query below
with cte as (
    select
        o.customer_id,
        to_char(o.order_date,'yyyy-mm') mon,
        sum(o.quantity*p.price) as purchase
    from
        orders o join product p on o.product_id=p.product_id
    where order_date>='2020-06-01' and order_date<'2020-08-01'
    group by o.customer_id, mon
    having sum(o.quantity*p.price)>=100
)
select c.customer_id,c.name from customers c where c.customer_id in (
    select distinct customer_id from cte group by customer_id having count(1)>1
);