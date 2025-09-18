
SELECT * 
FROM employee_salary
WHERE first_name = 'Ron';

SELECT * 
FROM employee_salary
Where salary <= 50000;

SELECT *
From employee_demographics
where gender = 'female';

SELECT *
From employee_demographics
where gender = 'male';

Select *
FROM employee_demographics
where age >= 40;


#AND or NOT ---logical think

SELECT *
FROM employee_demographics
where age > 40 And gender ='male';

# unique PAMDAS In Logical
SELECT *
FROM employee_demographics
where   (first_name = 'Leslie' And age = 44 ) or age > 55 ;


#like sttaement 
# % is for AND
SELECT *
FROM employee_demographics
where first_name like '%es%';

SELECT *
FROM employee_demographics
where first_name like 'j%';

SELECT *
FROM employee_demographics
where first_name like 'a__'
