-- Write your query below
with cte as(
    select exam_id,min(score) mn, max(score) mx
    from exam
    group by exam_id
), cte_loud as(
    select student_id
    from exam e join cte c on e.exam_id = c.exam_id
    where e.score=c.mn or e.score=c.mx
)
select student_id,student_name
from student
where student_id in (select student_id from exam) and student_id not in(select student_id from cte_loud)
order by student_id;