-- show databases(to show databases)

-- Joins
select * from employee_demographics;

select * from employee_salary;


-- inner join will bring values with similarity
select * from employee_demographics
inner join employee_salary  
	on employee_demographics.employee_id = employee_salary.employee_id
;