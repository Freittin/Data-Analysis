SELECT * FROM parks_and_recreation.employee_salary
WHERE salary <= 50000;

SELECT * FROM parks_and_recreation.employee_demographics
WHERE gender != 'Female';

SELECT * FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01';

-- AND OR NOT -- lOGICAL OPERATORS

SELECT * FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male'
OR NOT gender = 'male';

-- LIKE Statement  we are not looking for an exact match
select * from employee_demographics where first_name like 'a%'; #the parenthesis help to show that data starts with a and goes forward

select * from employee_demographics where first_name like 'a___'; #underscore points out number of characters