/* A procedure - in SQL is a saved block of SQL code that can be executed whenever needed, 
with or without parameters  (LIKE A FUNTION )*/

CREATE PROCEDURE large_salary()
SELECT * 
FROM employee_salary;
CALL  large_salary();


/* We use DELIMITER because a procedure contains multiple statements with semicolons inside.
 Without changing the delimiter, MySQL would stop too early and throw an erro */
  --  USE for  DELIMITER $$ , // 
DELIMITER // 
CREATE PROCEDURE large_salary2()
BEGIN
	SELECT * 
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT * 
	FROM employee_salary
	WHERE salary >= 10000;
END  //
-- (DELIMITER space + semicolon)
DELIMITER ;
CALL  large_salary2();


DELIMITER // 
CREATE PROCEDURE large_salary4( guh INT)
BEGIN
	SELECT salary
	FROM employee_salary
    WHERE employee_id = guh;
	
END  //
-- (DELIMITER space + semicolon)
DELIMITER ;
CALL  large_salary4(1);