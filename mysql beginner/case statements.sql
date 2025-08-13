-- case statements


SELECT first_name,last_name,
age,
case
	when age <= 30 THEN 'Young'
    when age between 31 and 50 THEN 'old'
    when age >= 50 THEN "On death's door"
End AS AGE_BRACKET
FROM employee_demographics;

-- statement to calculate salary increment + bonus

SELECT first_name,last_name, salary,
case
	when salary < 50000 THEN salary * 1.05
    when salary > 50000 THEN salary * 1.07
End as New_Salary,

case
	when dept_id = 6 THEN salary * .1
 /*bonus targetted to finance team. The id is more of number assigned to dept in park_departments*/   
End as Salary_bonus
FROM employee_salary;
