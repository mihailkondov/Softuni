/* 
	16. Create SoftUni Database

Now create bigger database called SoftUni. 
You will use the same database in the future tasks. 
It should hold information about:
• Towns (Id, Name)
• Addresses (Id, AddressText, TownId)
• Departments (Id, Name)
• Employees (Id, FirstName, MiddleName, LastName, JobTitle, DepartmentId, HireDate, Salary, AddressId)
The Id columns are auto incremented, starting from 1 and increased by 1 (1, 2, 3, 4…). 
Make sure you use appropriate data types for each column. 
Add primary and foreign keys as constraints for each table. 
Use only SQL queries. 
Consider which fields are always required and which are optional.
*/

CREATE DATABASE SoftUni;
USE SoftUni;

CREATE TABLE Towns (
	Id		INTEGER			PRIMARY KEY IDENTITY(1,1),
	Name	NVARCHAR(100)	NOT NULL
);

CREATE TABLE Addresses (
	Id			INTEGER			PRIMARY KEY IDENTITY(1,1),
	AddressText	NVARCHAR(100),
	TownId		INTEGER
);

CREATE TABLE Departments (
	Id		INTEGER			PRIMARY KEY IDENTITY(1,1),
	Name	NVARCHAR(100)	NOT NULL
);

CREATE TABLE Employees (
	Id				INTEGER			PRIMARY KEY IDENTITY(1,1),
	FirstName		NVARCHAR(100)	NOT NULL,
	MiddleName		NVARCHAR(100),
	LastName		NVARCHAR(100)	NOT NULL,
	JobTitle		NVARCHAR(100)	NOT NULL, 
	DepartmentId	INTEGER			NOT NULL,	 -- foreign key
	HireDate		DATE, 
	Salary			NUMERIC,  
	AddressId		INTEGER						 -- foreign key
	FOREIGN KEY (DepartmentId)	REFERENCES	Departments(Id),
	FOREIGN KEY (AddressId)		REFERENCES	Addresses(Id)
);
