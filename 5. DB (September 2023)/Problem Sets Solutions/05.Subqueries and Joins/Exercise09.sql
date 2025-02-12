/* 
	9. Employee Manager

Create a query that selects:
	• EmployeeID
	• FirstName
	• ManagerID
	• ManagerName
Filter all employees with a manager who has ID equals to 3 or 7. 
Return all the rows, sorted by EmployeeID in ascending order.
Example
	EmployeeID	FirstName	ManagerID	ManagerName
	4			Rob			3			Roberto
	9			Gail		3			Roberto
	…			…			…			…
*/

-- USE SoftUni;
SELECT 
	e.EmployeeID
	, e.FirstName
	, e.ManagerID
	, m.FirstName AS ManagerName
FROM 
	Employees AS e
JOIN 
	Employees AS m ON e.ManagerID = m.EmployeeID
WHERE 
	m.EmployeeID IN (3, 7)
ORDER BY 
	e.EmployeeID
