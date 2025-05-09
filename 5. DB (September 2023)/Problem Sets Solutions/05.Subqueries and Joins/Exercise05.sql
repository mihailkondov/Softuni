/* 
	5. Employees Without Project

Create a query that selects:
	• EmployeeID
	• FirstName
Filter only employees without a project. 
Return the first 3 rows, sorted by EmployeeID in ascending order.

Example
	EmployeeID	FirstName
	2			Kevin
	6			David
	…			…

*/
-- USE SoftUni;
SELECT TOP 3
	e.EmployeeID,
	FirstName
FROM
	Employees AS e
LEFT JOIN EmployeesProjects AS ep ON ep.EmployeeID = e.EmployeeID
WHERE ep.EmployeeID IS NULL
ORDER BY e.EmployeeID;

	