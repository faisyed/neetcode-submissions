-- Write your query below
with cte as(
    select wimbledon as id from championships
    union all
    select fr_open as id from championships
    union all
    select us_open as id from championships
    union all
    select au_open as id from championships
)
select p.player_id, p.player_name, count(c.id) as grand_slams_count 
from players p join cte c on p.player_id=c.id
group by p.player_id, p.player_name;