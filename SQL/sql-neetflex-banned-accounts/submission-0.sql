-- Write your query below
select distinct f.account_id
from log_info f join log_info s 
on f.account_id=s.account_id and f.ip_address!=s.ip_address and f.login<=s.logout and s.login<=f.logout
order by f.account_id;