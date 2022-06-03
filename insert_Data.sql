--insert data into Employee Table
INSERT INTO Employee(SSN,Fname,Lname)
VALUES (1 , 'Hazem' , 'Mohamed'),
	   (2 , 'Ahmed' , 'zizo'),
	   (3 , 'Hamed' , 'tarek'),
	   (4 , 'Emam' , 'Ashour'),
	   (5 , 'Omar' , 'Mohamed'),
	   (6 , 'Shaza' , 'Mohamed')

--insert data into Department Table
INSERT INTO Department(DNum , DName , MgrSSn , Hiredate)
VALUES (1 , 'CS' , 1 , '04/08/2022'),
	   (2 , 'IS' , 2 , '04/07/2022'),
	   (3 , 'IT' , 3 , '04/06/2022'),
	   (4 , 'SE' , 4 , '04/05/2022')

--insert data into Project Table
INSERT INTO Project(PNum , PName , DNum , city)
Values (1 , 'P1' , 1 , 'Cairo'),
	   (2 , 'P2' , 1 , 'Alex')


--insert data into Dependant Table
INSERT INTO Dependant (SSN,Dependant_Name,Gender, BirthDate)
VALUEs (1 , 'Mona' , 'F' , '01/08/2000'),
	   (1 , 'Heba' , 'F' , '01/08/2001'),
	   (2 , 'Ahmed' , 'M' , '01/08/2000')

-- Insert data into Work Table 
INSERT INTO Work(SSN , PNum , Hours)
VALUES (1 , 1 , 10),(2 , 1 , 30),(3 , 2 , 30),(4 , 2 , 50);

--Insert data into Locations Table 
INSERT INTO locations(DNum , loc)
VALUES (1 , 'Alex'),(1 , 'Cairo');








		