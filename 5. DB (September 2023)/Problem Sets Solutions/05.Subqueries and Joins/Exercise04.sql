/* 
	4. Employee Departments

Create a query that selects:
	• EmployeeID
	• FirstName
	• Salary
	• DepartmentName
Filter only employees with a salary higher than 15000. 
Return the first 5 rows,
sorted by DepartmentID in ascending order.

Example
	EmployeeID	FirstName	Salary		DepartmentName
	3			Roberto		43300.00	Engineering
	9			Gail		32700.00	Engineering
	…			…			…			…

*/
--USE SoftUni;
SELECT TOP 5
	e.EmployeeID,
	e.FirstName,
	e.Salary,
	d.Name
FROM 
	Employees AS e
JOIN
	Departments AS d ON d.DepartmentID = e.DepartmentID
WHERE
	Salary > 15000 
ORDER BY d.DepartmentID;