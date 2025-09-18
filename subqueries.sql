-- subqueries
SELECT *
FROM employee_demographics
 WHERE employee_id in
   (SELECT employee_id
      FROM employee_salary
       WHERE dept_id=1)