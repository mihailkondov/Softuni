/*
	1. One-To-One Relationship

Create two tables and use appropriate data types.
Example
Persons												|		Passports
	PersonID	FirstName	Salary		PassportID	|		PassportID	PassportNumber
	1			Roberto		43300.00	102			|		101			N34FG21B
	2			Tom			56100.00	103			|		102			K65LO4R7
	3			Yana		60200.00	101			|		103			ZE657QP2

Insert the data from the example above. 
Alter the Persons table and make PersonID a primary key. 
Create a foreign key between Persons and Passports by using the PassportID column.
*/

----CREATE A NEW DATABASE:
	-- CREATE DATABASE DB_week3;
	-- USE DB_week3;

----CREATE TABLES
	CREATE TABLE Persons (
		PersonID	INTEGER,
		FirstName	NVARCHAR(100),
		Salary		NUMERIC(10,2),
		PassportID	INTEGER
	);

	CREATE TABLE Passports (
		PassportID INTEGER NOT NULL,
		PassportNumber CHAR(8) NOT NULL
	);

----INSERT VALUES INTO TABLES
	INSERT INTO Persons 
		(PersonID,	FirstName,	Salary,		PassportID)	
	VALUES
		(1,			'Roberto',	43300.00,	102),	
		(2,			'Tom',		56100.00,	103),
		(3,			'Yana',		60200.00,	101)		
	;
	INSERT INTO Passports
		(PassportID,	PassportNumber)
	VALUES
		(101,			'N34FG21B'),
		(102,			'K65LO4R7'),
		(103,			'ZE657QP2')
	;

---- ALTER TABLES ACCORDING TO SPECIFICATIONS
	
	-- Primary key column must not be nullable:
	ALTER TABLE Persons
	ALTER COLUMN PersonID INTEGER NOT NULL; -- This one I forgot to declare earlier, so I'm fixing it here 
											-- because it's required in order to make this column the primary key

	-- Set primary key for the persons table
	ALTER TABLE Persons
	ADD CONSTRAINT Persons_PK PRIMARY KEY(PersonID);

	-- Set primary key for the passports table
	ALTER TABLE Passports
	ADD CONSTRAINT Passports_PK PRIMARY KEY(PassportID);

	-- Now that passports has PK I can reference it in the Persons table as a foreign key
	ALTER TABLE Persons
	ADD CONSTRAINT Passports_FK FOREIGN KEY(PassportID) REFERENCES Passports(PassportID);
