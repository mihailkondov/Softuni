/*
	5. Find Full Name of Each Employee

Create a SQL query that finds the first, middle and last name for each employee.
Example
	FirstName	MiddleName	LastName
	Guy			R			Gilbert
	Kevin		F			Brown
	Roberto		NULL		Tamburello
	…			…			…
*/

-- USE SoftUni;
SELECT FirstName, MiddleName, LastName
FROM Employees;