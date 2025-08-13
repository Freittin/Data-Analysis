-- window functions we use over
/*should be reviewed*/

Select gender, avg(salary) as avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
Group by gender;

Select gender, avg(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    

Select dem.first_name, dem.last_name, gender, salary,
sum(salary) OVER(PARTITION BY gender order by dem.employee_id) AS Rolling_Total
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;

    

Select dem.employee_id, dem.first_name, dem.last_name, gender, salary,
row_number() OVER(PARTITION BY gender order by salary DESC),
rank() OVER(PARTITION BY gender order by salary DESC),
dense_rank() OVER(PARTITION BY gender order by salary DESC)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;