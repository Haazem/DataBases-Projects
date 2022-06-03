--use database 
USE MyCompany;

--create tables 

--create Employee table 
CREATE TABLE Employee(
SSN int primary key ,
Fname varchar(50) Not Null ,
Lname varchar(50) Not Null,
DNum int ,
--add fk
Superid int foreign key references Employee(SSN)

);

--add DNum foreign key from Dept to Employee
ALTER TABLE Employee 
ADD foreign key (DNum) references Department(DNum);

--Alter Foreign key on Emp table
Alter table Employee
Add constraint FK_Emp_Dep FOREIGN KEY(DNum) REFERENCES Department(DNum)
ON DELETE CASCADE ON UPDATE CASCADE ;

--create Dependant table
CREATE TABLE Dependant(
Dependant_Name varchar(50) Not Null,
--add fk 
SSN int foreign key references Employee(SSN),
Gender char(1),
BirthDate date ,
--add composite pk
CONSTRAINT SSN_Dep_pk primary key (SSN , Dependant_Name)
)


--Add Check constraint to Dependant table 
ALTER TABLE Dependant 
ADD CONSTRAINT CH_gender CHECK(Gender = 'm' or Gender = 'F');

 

--create Department table
CREATE TABLE Department(
DNum int primary key,
DName varchar(50) Not Null ,
--add fk
MgrSSn int foreign key references Employee(SSN),
Hiredate date
);


--create location table
CREATE TABLE Locations(
DNum int ,
loc varchar(50),
--add composite pk
CONSTRAINT DNum_loc_pk primary key (DNum , loc),
--add fk
CONSTRAINT loc_DNum_fk foreign key (DNum) references Department(DNum)
);


--create Project table
CREATE TABLE Project(
PNum int primary key ,
PName Varchar(50) Not Null,
DNum int foreign key references Department(DNum),
City varchar(50) Not Null ,
Location varchar(50)
)

--Create Work Table
Create Table Work(
SSN int foreign key references Employee(SSN),
PNum int foreign key references Project(PNum),
Hours int ,
--Add composite pk
CONSTRAINT SSN_PNum_Pk primary key (SSN , PNum) 
);

alter table work
add constraint fk_work foreign key (SSN) references  Employee(SSN)
on update cascade on delete  cascade;




