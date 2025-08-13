-- Temporary tables

select *
From employee_salary;

Create temporary table salary_over_50k
select *
from employee_salary
where salary >=50000;

-- running the temp table
select *
from salary_over_50k;