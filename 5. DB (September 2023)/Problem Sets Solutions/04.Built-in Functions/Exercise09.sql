/*
	9. Length of Last Name

Create a SQL query that finds all employees, whose last name is exactly 5 characters long.

Example
	FirstName	LastName
	Kevin		Brown
	Terri		Duffy
	Jo			Brown
	Diane		Glimp
	…			…
*/
--USE SoftUni
SELECT 
	FirstName, LastName 
FROM 
	Employees
WHERE LEN(LastName) = 5;