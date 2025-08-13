SELECT * FROM parks_and_recreation.employee_demographics;

#PEMDAS is used as the method of calculation rather than BODMAS
SELECT first_name, last_name, birth_date, age,
age + 10
FROM parks_and_recreation.employee_demographics;



SELECT distinct first_name, gender FROM parks_and_recreation.employee_demographics;