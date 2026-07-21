-- Write your query below
with cte as(
    select
        d.name as department,
        e.name as employee,
        e.salary,
        rank() over(partition by e.department_id order by e.salary desc) as rnk
    from
        department d join employee e on d.id=e.department_id
)
select department, employee, salary from cte where rnk=1;