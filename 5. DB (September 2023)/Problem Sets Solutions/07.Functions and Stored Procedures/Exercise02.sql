/* 
	2. Employees with Salary Above Number

Create a stored procedure usp_GetEmployeesSalaryAboveNumber that accepts a number (of type DECIMAL(18,4)) 
as parameter and returns all employees' first and last names, whose salary is above or equal to the given number. 

Example
Supplied number for that example is 48100.
	First Name	Last Name
	Terri		Duffy
	Jean		Trenary
	Ken			Sanchez
	…			…
*/
-- USE SoftUni;
-- GO

CREATE OR ALTER PROC usp_GetEmployeesSalaryAboveNumber (@limit DECIMAL(18,4))
AS
BEGIN
	SELECT 
		FirstName AS [First Name]
	,	LastName AS [Last Name]
	FROM
		Employees
	WHERE
		Salary >= @limit
END
--GO

--EXEC usp_GetEmployeesSalaryAboveNumber 48100;
--DROP PROC usp_GetEmployeesSalaryAboveNumber;