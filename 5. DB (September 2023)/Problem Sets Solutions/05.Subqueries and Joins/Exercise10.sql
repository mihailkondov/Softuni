/* 
	10. Employees Summary

Create a query that selects:
	• EmployeeID
	• EmployeeName
	• ManagerName
	• DepartmentName
Show the first 50 employees with their managers and the departments they are in (show the departments of the employees). 
Order them by EmployeeID.

Example
	EmployeeID	EmployeeName		ManagerName		DepartmentName
	1			Guy Gilbert			Jo Brown		Production
	2			Kevin Brown			David Bradley	Marketing
	3			Roberto Tamburello	Terri Duffy		Engineering
	…			…					…				…
*/
SELECT TOP 50
	e.EmployeeID,
	CONCAT_WS(' ', e.FirstName, e.LastName) AS EmployeeName,
	CONCAT_WS(' ', m.FirstName, m.LastName) AS ManagerName,
	d.Name AS DepartmentName
FROM
	Employees AS e
JOIN 
	Employees AS m ON e.ManagerID = m.EmployeeID
JOIN
	Departments AS d ON d.DepartmentID = e.DepartmentID
ORDER BY 
	EmployeeID