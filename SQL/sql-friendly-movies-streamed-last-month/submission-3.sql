-- Write your query below
select distinct c.title
from content c join tv_program t on c.content_id=t.content_id
where c.kids_content='Y' and c.content_type='Movies' and t.program_date like '2020-06%';