-- union 
/*union merges several queries/ select statements into one long arguement*/

SELECT first_name, last_name, 'old' AS Label
FROM employee_demographics
WHERE age > 40 and gender = 'male'

union
SELECT first_name, last_name, 'old' AS Label
FROM employee_demographics
WHERE age > 40 and gender = 'female'

UNION
SELECT first_name, last_name, 'Highly Paid Employee' AS Label
FROM employee_salary
WHERE salary > 70000
;