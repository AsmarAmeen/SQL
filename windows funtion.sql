SELECT * 
FROM employee_demographics;

-- over

SELECT gender,avg(salary) over()
From employee_demographics AS dem
JOIN employee_salary AS SAL
 ON dem.employee_id=SAL.employee_id
;

SELECT gender,avg(salary) over( partition by gender)
From employee_demographics AS dem
JOIN employee_salary AS SAL
 ON dem.employee_id=SAL.employee_id
;


SELECT dem.employee_id,dem.first_name,SAL.last_name, gender,salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY SALARY desc) AS row_num,
RANK()       OVER(PARTITION BY gender ORDER BY SALARY desc) AS rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY SALARY desc) AS DENSE_num
From employee_demographics AS dem
JOIN employee_salary AS SAL
 ON dem.employee_id=SAL.employee_id
