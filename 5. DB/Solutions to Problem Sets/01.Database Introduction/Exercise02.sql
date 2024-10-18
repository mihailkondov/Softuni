/*
	2. Create Tables

In the newly created database Minionsadd table Minions(Id, Name, Age). 
Then add a new table Towns(Id, Name).
Set Id columns of both tables to be primary key as constraint.
*/

USE Minions2024;

CREATE TABLE Minions (
	Id		INTEGER		PRIMARY KEY IDENTITY(1,1),
	Name	NVARCHAR(100),
	Age		INTEGER
);

CREATE TABLE Towns (
	Id		INTEGER		PRIMARY KEY IDENTITY(1,1),
	Name	NVARCHAR(100)
);