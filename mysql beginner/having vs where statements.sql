SELECT gender, avg(age)
FROM parks_and_recreation.employee_demographics
Group by gender
having avg(age) > 40;

select * from employee_salary;

select occupation, avg(salary)
from employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) > 75000; #works on filtering the aggregate columns and comes after group by