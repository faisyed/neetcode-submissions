-- Write your query below
select u.name, sum(case when t.amount is not null then t.amount else 0 end) as balance
from users u left join transactions t on u.account=t.account
group by u.name
having sum(case when t.amount is not null then t.amount else 0 end)>10000;