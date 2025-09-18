SELECT * FROM parks_and_recreation.employee_demographics;

use parks_and_recreation;
#GROUP BY
#It is used to arrange rows that have the same values into groups.

SELECT gender
FROM employee_demographics
group by gender;


SELECT gender , avg(age)
FROM employee_demographics
group by gender;


SELECT occupation , salary
FROM employee_salary
Group by occupation , salary;

SELECT gender , avg(age) ,max(age),min(age),count(age)
FROM employee_demographics
group by gender;

-- ordey BY---
SELECT * 
FROM employee_demographics
ORDER BY first_name;

SELECT * 
FROM employee_demographics
ORDER BY age ;

SELECT * 
FROM employee_demographics
ORDER BY gender,age;

SELECT * 
FROM employee_demographics
ORDER BY 5,4 ;


SELECT * 
FROM employee_demographics
ORDER BY 5,6;

