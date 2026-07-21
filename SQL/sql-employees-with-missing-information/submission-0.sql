-- Write your query below
select employee_id
from employees
where employee_id not in (select distinct employee_id from salaries)
union
select employee_id
from salaries
where employee_id not in (select distinct employee_id from employees)
order by employee_id;