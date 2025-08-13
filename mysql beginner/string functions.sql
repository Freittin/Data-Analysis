-- String functions

SELECT first_name, length(first_name)
FROM parks_and_recreation.employee_demographics;

SELECT first_name, upper(first_name)
FROM parks_and_recreation.employee_demographics;

SELECT first_name, lower(first_name)
FROM parks_and_recreation.employee_demographics;

SELECT first_name, trim(first_name) /*removes spaces*/
FROM parks_and_recreation.employee_demographics;

SELECT first_name, 
left(first_name, 4),
right(first_name, 4),
substring(first_name,3,2) /*pull char in a string*/
FROM parks_and_recreation.employee_demographics;

SELECT first_name, replace(first_name,'A','z')
FROM parks_and_recreation.employee_demographics;

SELECT first_name, locate('An', first_name)
FROM parks_and_recreation.employee_demographics;

SELECT first_name, last_name, 
concat(first_name," " , last_name)
FROM parks_and_recreation.employee_demographics;