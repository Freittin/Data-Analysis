SELECT * FROM parks_and_recreation.employee_demographics;

SELECT gender FROM parks_and_recreation.employee_demographics
group by gender;

SELECT gender, avg(age) ,max(age), min(age), count(age)  #aggregate functions
FROM parks_and_recreation.employee_demographics
group by gender;

SELECT occupation, salary
FROM parks_and_recreation.employee_salary
group by occupation, salary;

-- ORDER BY
SELECT * from employee_demographics
order by gender, age desc; #u can use column numbers instead of title
