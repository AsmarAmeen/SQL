SELECT * 
FROM employee_demographics;

SELECT * 
FROM employee_salary;

-- TRIGGER
DELIMITER $$
CREATE TRIGGER employee_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics(employee_id,first_name,last_name)
    VALUES (NEW.employee_id,NEW.first_name,NEW.last_name);
END $$
DELIMITER ;

INSERT INTO employee_salary(employee_id,first_name,last_name,occupation,salary,dept_id)
VALUES(13,'asmar','ameen','CEO','450000',NULL);



DELIMITER $$
CREATE TRIGGER employee_add
	AFTER INSERT ON employee_demographics
    FOR EACH ROW
BEGIN
	INSERT INTO employee_salary(employee_id,first_name,last_name,occupation,salary)
    VALUES(NEW.employee_id,new.first_name,NEW.occupation,NEW.salary);
END $$
DELIMITER ;
 INSERT INTO employee_demographics(employee_id,first_name,last_name,age,gender)
 VALUES('15','AHSAN','AMEEN','20','male');
    


