/* 
	1. Employees with Salary Above 35000
	
Create stored procedure usp_GetEmployeesSalaryAbove35000 that returns all employees' first and last names, whose salary above 35000. 

Example
	First Name	Last Name
	Roberto		Tamburello
	David		Bradley
	Terri		Duffy
	…			… 
*/
-- USE SoftUni;
CREATE OR ALTER PROC usp_GetEmployeesSalaryAbove35000 
AS
BEGIN
	SELECT 
		FirstName AS [First Name]
	,	LastName AS [Last Name]
	FROM
		Employees
	WHERE 
		Salary > 35000
END;
-- GO

-- EXEC usp_GetEmployeesSalaryAbove35000;
-- DROP PROC usp_GetEmployeesSalaryAbove35000