/*
	11. Find All Employees Without a Manager

Create a SQL query that finds the first and last names of those employees who do not have a manager.
	Example
	FirstName	LastName
	Ken			Sanchez
	Svetlin		Nakov
	…			…
*/

-- USE SoftUni
SELECT 
	FirstName, LastName 
FROM
	Employees
WHERE
	ManagerID IS NULL;
