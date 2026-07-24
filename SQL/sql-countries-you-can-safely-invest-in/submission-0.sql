-- Write your query below
select c.name as country
from person p 
join country c on c.country_code = substring(p.phone_number,1,3)
join calls ca on p.id=ca.caller_id or p.id=ca.callee_id
group by c.name
having avg(ca.duration)>(select avg(duration) from calls);