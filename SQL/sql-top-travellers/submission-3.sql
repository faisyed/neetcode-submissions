-- Write your query below
select u.name, sum(case when r.distance is not null then r.distance else 0 end) as travelled_distance
from users u left join rides r on u.id=r.user_id
group by u.name
order by sum(case when r.distance is not null then r.distance else 0 end) desc, u.name;