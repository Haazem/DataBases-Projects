USE MyCompany;

--create sp without parameter
CREATE PROC EMP_INFO 
AS 
BEGIN
	SELECT 
		SSN,
		Fname,
		Lname,
		DNum,
		Superid
	FROM 
	   Employee
END 

--run sp
EXEC EMP_INFO;

--Create sp with parameter 
CREATE PROC Get_Emp_with_Dept
@dept_id INT
AS 
BEGIN
	SELECT 
	   SSN ,
	   Fname,
	   DNum,
	   Superid
	FROM 
	   Employee
	WHERE 
		DNum = @dept_id 
END 

--Run Sp
DECLARE @dept_id INT = 4;
EXEC Get_Emp_with_Dept @dept_id;


--Create Sp to count number of Employees in each Department
CREATE PROC Get_Count_Emp_by_Dept
@dept_id INT ,
@emp_count INT OUTPUT 
AS 
BEGIN
	SELECT
		@emp_count = COUNT(SSN)
	FROM 
		Employee
	WHERE
		DNum = @dept_id	
END 

--Run Sp
DECLARE @count INT;
EXEC Get_Count_Emp_by_Dept 4 , @count OUT ;
SELECT @count AS total;

--create Trigger after insert 
CREATE TRIGGER insert_trigger 
ON Employee
AFTER INSERT 
AS 
SELECT 'INSERTED SUCCESSFULLY';

--Test Trigger
INSERT INTO Employee
VALUES(1001 , 'hazem' , 'mohamed' , 3 , 2);

CREATE TRIGGER insteadof_delete
ON Department
INSTEAD OF  DELETE 
AS 
BEGIN
	SELECT 'Delete not allowed for you'
END 

--Test Trigger 
DELETE 
FROM 
	Department
WHERE 
	DNum = 2
	

CREATE TRIGGER safety   
ON DATABASE   
FOR DROP_TABLE, ALTER_TABLE   
AS   
   PRINT 'You must disable Trigger "safety" to drop or alter tables!'   
   ROLLBACK;  

--Test Trigger
DROP TABLE Work;

--Create index 
CREATE INDEX
	Emp_name_index 
ON 
	Employee(Fname) 









