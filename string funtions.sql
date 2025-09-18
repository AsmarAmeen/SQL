-- STRING Funtion --
SELECT length('SKY');

select *
FROM employee_demographics;
-- Length --
select first_name,length(First_name)
FROM employee_demographics;

select first_name,length(First_name)
FROM employee_demographics
order by 2;


-- upper
Select upper('first_name');
Select lower('FIRST_NAME');

select first_name,length(First_name)
FROM employee_demographics
order by 2;

-- trim L and R

SELECT trim('        SKY            ');
SELECT Rtrim('        SKY            ');
SELECT Ltrim('        SKY            ');

SELECT first_name,LEFT (FIRST_NAME,4)
FROM employee_demographics;

SELECT first_name,right (FIRST_NAME,4)
FROM employee_demographics;

SELECT first_name,
left (FIRST_NAME,4),
right  (FIRST_NAME,4)
FROM employee_demographics;

SELECT first_name,
left (FIRST_NAME,4),
right  (FIRST_NAME,4),
SUBSTRING(first_name,3,2)
FROM employee_demographics;


SELECT first_name,
left (FIRST_NAME,4),
right  (FIRST_NAME,4),
SUBSTRING(first_name,3,2),
birth_date,
 SUBSTRING(birth_date ,6,2) AS birth_month
FROM employee_demographics;


-- replace
SELECT first_name,replace( first_name ,'A' ,'b') AS changing
FROM employee_demographics;

-- locate
SELECT locate('x','alex');

SELECT first_name, locate('An',first_name)
FROM employee_demographics;


-- CONCAT 
SELECT first_name,last_name,
CONCAT(first_name ,' ', last_name) AS fulll_name
FROM employee_demographics;

