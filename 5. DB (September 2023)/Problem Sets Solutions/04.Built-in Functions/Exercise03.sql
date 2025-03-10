/*
	3. Find First Names of All Employees

Create a SQL query that finds the first names of all employees 
whose department ID is 3 or 10, 
and the hire year is between 1995 and 2005 inclusive.

Example
	FirstName
	Deborah
	Wendy
	Candy
	…
*/

SELECT FirstName
FROM Employees
WHERE DATEPART(YEAR, HireDate) <= 2005 
AND DATEPART(YEAR, HireDate) >= 1995
AND DepartmentID IN (3, 10);
