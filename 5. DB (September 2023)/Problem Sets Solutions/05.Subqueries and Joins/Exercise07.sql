/* 
	7. Employees with Project

Create a query that selects:
	• EmployeeID
	• FirstName
	• ProjectName
Filter only employees with a project which has started after 13.08.2002 and it is still ongoing (no end date). 
Return the first 5 rows sorted by EmployeeID in ascending order.

Example
	EmployeeID	FirstName	ProjectName
	1			Guy			Racing Socks
	1			Guy			Road Bottle Cage
	…			…			…
*/
-- USE SoftUni;
SELECT TOP 5
	e.EmployeeID,
	FirstName,
	p.Name AS ProjectName
FROM 
	Employees AS e
JOIN EmployeesProjects AS ep ON ep.EmployeeID = e.EmployeeID
JOIN Projects AS p ON p.ProjectID = ep.ProjectID
WHERE p.StartDate > '08.13.2002'
AND p.EndDate IS NULL
ORDER BY 
	e.EmployeeID;
