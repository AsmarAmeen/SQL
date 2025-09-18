SELECT * FROM parks_and_recreation.employee_demographics;

Select * 
FROM employee_salary;

Select * 
FROM parks_departments;


-- inner join = Returns only the rows that match in both tables. (same Id  details) --

SELECT *
FROM employee_salary
inner join employee_demographics
 on  employee_salary.employee_id = employee_demographics.employee_id;
 
 SELECT *
FROM employee_demographics as dem
inner join employee_salary as sal
 on  dem.employee_id = sal.employee_id;
 
 
 SELECT dem.employee_id,age,gender,occupation as acc
FROM employee_salary as sal
inner join employee_demographics as dem
 on  sal.employee_id = dem.employee_id;
 
 -- outer join = Returns all rows from one or both tables, including unmatched rows. --
 /* Types:

LEFT OUTER JOIN (LEFT JOIN): All rows from left table, matched rows from right table. Unmatched right → NULL.
RIGHT OUTER JOIN (RIGHT JOIN): All rows from right table, matched rows from left table. Unmatched left → NULL.
FULL OUTER JOIN: All rows from both tables, unmatched rows → NULL. */

-- left outer --
 SELECT *
FROM employee_demographics as dem
left join employee_salary as sal
 on  dem.employee_id = sal.employee_id;
 
 -- right outer --
 SELECT *
FROM employee_demographics as dem
right join employee_salary as sal
 on  dem.employee_id = sal.employee_id;
 
 -- self join --
 
 SELECT * 
 From employee_salary emp1
 join employee_salary emp2
  on emp1.employee_id = emp2.employee_id;
  
   SELECT emp1.employee_id as emp_1,
   emp1.first_name as emp_1,
    emp1.last_name as emp_1,
     emp2.employee_id as emp_2,
   emp2.first_name as emp_2,
    emp2.last_name as emp_2
    
 From employee_salary emp1
 join employee_salary emp2
  on emp1.employee_id + 1 = emp2.employee_id;
  
  
  -- multiple join --
  SELECT * 
  FROM parks_departments;
  
  
SELECT *
FROM employee_demographics as dem
inner join employee_salary as sa
 ON  dem.employee_id = sa.employee_id
INNER JOIN parks_departments pd
 ON sa.dept_id = pd.department_id;
 
 
 
 
 
 