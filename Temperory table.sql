SELECT * FROM parks_and_recreation.employee_demographics;

--- temporary table
CREATE TEMPORARY TABLE temp_table
(	first_name varchar (50),
	last_name varchar (50),
    movi varchar(100)
    );

INSERT INTO  temp_table
VALUES ('ASMAR','AMEEN','THERI');

SELECT *
FROM temp_table;

create temporary table tem
SELECT * FROM 
employee_salary
;

SELECT *
FROM tem ;
