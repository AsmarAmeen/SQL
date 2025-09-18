
-- case

SELECT first_name,
last_name,
age,
CASE 
  WHEN age <40 THEN 'Young'
  WHEN age >55 THEN 'Old'
  When Age BETWEEN '40' AND '50' then 'pritty' 
END AS label
 FROM employee_demographics
 ORDER BY age ASC ;
 
 
 -- pay increase and bonus
 -- < 50000 = 5%
 -- > 50000 = 7%
 -- finace = 10% bonus
 
 SELECT first_name,
 last_name,concat(first_name ,' ', last_name) AS full_name,
 salary,
 CASE 
	WHEN salary <= 50000 THEN salary * 1.05
	WHEN salary >= 50000 THEN salary * 1.07
   
 END AS bonus,
  CASE
     WHEN dept_id = 6 THEN salary * .10
  END AS bonus

FROM employee_salary
ORDER BY salary ASC;