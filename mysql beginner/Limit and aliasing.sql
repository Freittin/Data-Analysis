-- Limit

SELECT * FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1;

-- Aliasing (more of replacement eg replacing as with simpler definition)

SELECT gender, AVG(age) FROM employee_demographics
group by gender
having avg(age) > 40;
-- becomes
SELECT gender, AVG(age) avg_age
FROM employee_demographics
group by gender
having avg_age > 40;