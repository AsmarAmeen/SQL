SELECT * FROM parks_and_recreation.employee_demographics;
use parks_and_recreation;
SELECT *
FROM employee_salary;

SELECT OCCUPATION,AVG(SALARY)
From employee_salary
group by occupation
HAVING occupation like '%manager%';

SELECT OCCUPATION,AVG(SALARY)
From employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary)>70000;

-- limit--

SELECT *
FROM employee_demographics
ORDER BY age
limit 2 , 1;


-- aliasing -- its change the coumn name --

SELECT gender as gen ,avg(age) as avg_age
FROM employee_demographics
Group BY gender
having avg_age>40;
#having avg(age)>40;

