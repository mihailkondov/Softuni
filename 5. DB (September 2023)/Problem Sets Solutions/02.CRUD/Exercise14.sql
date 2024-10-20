/*
	14. Find All Employees Except Marketing

Create a SQL query that finds the first and last names of all employees whose department ID is not 4.
Example
	FirstName	LastName
	Guy			Gilbert
	Roberto		Tamburello
	Rob			Walters
*/
-- USE SoftUni

SELECT 
	FirstName, LastName 
FROM 
	Employees 
WHERE 
	DepartmentID != 4;