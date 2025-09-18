
SELECT * FROM parks_and_recreation.employee_demographics;

SELECT * FROM parks_and_recreation.employee_salary;
-- union --

SELECT age ,gender
FROM employee_demographics
UNION 
SELECT first_name ,last_name
FROM employee_salary;

SELECT first_name ,last_name
FROM employee_demographics
UNION 
SELECT first_name ,last_name
FROM employee_salary;

SELECT first_name ,last_name
FROM employee_demographics
UNION ALL
SELECT first_name ,last_name
FROM employee_salary;

SELECT first_name ,last_name
FROM employee_demographics
UNION DISTINCT
SELECT first_name ,last_name
FROM employee_salary;

SELECT first_name ,last_name , 'Old' as Label
FROM employee_demographics
WHERE age > 50;

SELECT first_name ,last_name , 'Old' as Label
FROM employee_demographics
WHERE age > 50
UNION
SELECT first_name ,last_name , 'High Paid' as Paid
FROM employee_salary
WHERE salary > 70000;


SELECT first_name ,last_name , 'Old Male' as Label
FROM employee_demographics
WHERE age > 50 AND gender = 'Male'
UNION
SELECT first_name ,last_name , 'Old Lady' as Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name ,last_name , 'High Paid' as Paid
FROM employee_salary
WHERE salary > 70000
order by first_name,last_name;
