SELECT *
 FROM employee_demographics;
 
 SELECT *
 FROM employee_salary;
 
  -- Common Table Expression. (CTE)
 WITH cte_name  AS(
 SELECT employee_id,age
 FROM employee_demographics)
 SELECT * FROM cte_name  WHERE employee_id = 1;
 
  WITH cte_name  AS(
 SELECT employee_id,age
 FROM employee_demographics)
 SELECT * FROM cte_name ;
 
SELECT gender,AVG(salary),MAX(salary),MIN(salary),COUNT(salary)
 FROM employee_demographics dem
 JOIN  employee_salary sal
   ON dem.employee_id = sal.employee_id
GROUP BY gender;
 

WITH cte_exz AS(
SELECT gender,AVG(salary),MAX(salary),MIN(salary),COUNT(salary)
 FROM employee_demographics dem
 JOIN  employee_salary sal
   ON dem.employee_id = sal.employee_id
GROUP BY gender )

SELECT *
 FROM cte_exz;
 
 WITH cte_exz AS (
SELECT gender,AVG(salary),MAX(salary),MIN(salary),COUNT(salary)
 FROM employee_demographics dem
 JOIN  employee_salary sal
   ON dem.employee_id = sal.employee_id
GROUP BY gender )

SELECT *
 FROM cte_exz;
 
  WITH cte_exz AS (
SELECT gender,AVG(salary) avg_sal,MAX(salary)max_sal,MIN(salary)min_sal,COUNT(salary)count_sal
 FROM employee_demographics dem
 JOIN  employee_salary sal
   ON dem.employee_id = sal.employee_id
GROUP BY gender )
SELECT AVG(avg_sal)
 FROM cte_exz;
 
 
 -- -- -- -- -- -- -- -- CTE Advance -- --- -- -- 
WITH CTE_EXZ AS(
 SELECT employee_id,gender,birth_date
 FROM employee_demographics
 WHERE birth_date> '1985-01-01'),
 
CTE_EXZ2 AS(
 SELECT employee_id,salary
 FROM employee_salary
 WHERE salary > 50000)

SELECT *
FROM CTE_EXZ
JOIN CTE_EXZ2
		ON CTE_EXZ.employee_id=CTE_EXZ2.employee_id;
 
 
 
  WITH cte_exz  (Gender, avg_sal,max_sal,min_sal,count_sal) AS
  (
SELECT gender,AVG(salary) avg_sal,MAX(salary)max_sal,MIN(salary)min_sal,COUNT(salary)count_sal
 FROM employee_demographics dem
 JOIN  employee_salary sal
   ON dem.employee_id = sal.employee_id
GROUP BY gender )
SELECT *
 FROM cte_exz;
 
 
  WITH cte_exz  (Gender, avg_sal,max_sal,min_sal,count_sal) AS
  (
SELECT gender,AVG(salary) avg_sal,MAX(salary)max_sal,MIN(salary)min_sal,COUNT(salary)count_sal
 FROM employee_demographics dem
 JOIN  employee_salary sal
   ON dem.employee_id = sal.employee_id
GROUP BY gender )
SELECT avg_sal,max_sal
 FROM cte_exz;
 