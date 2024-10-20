/*
	20. Last 7 Hired Employees

Create a SQL query that findsthe last 7 hired employees, 
select their first, last name and hire date. 
Order the result by hire date descending.
Example
	FirstName	LastName	HireDate
	Rachel		Valdez		2005-07-01 00:00:00
	Lynn		Tsoflias	2005-07-01 00:00:00
	Syed		Abbas		2005-04-15 00:00:00
	… … …
*/
-- USE SoftUni;
SELECT TOP (7) 
	FirstName, LastName, HireDate
FROM 
	Employees
ORDER BY
	HireDate DESC;