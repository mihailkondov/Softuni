/*
3. Sales Employee
Create a query that selects:
	• EmployeeID
	• FirstName
	• LastName
	• DepartmentName
Sort them by EmployeeID in ascending order. 
Select only employees from the "Sales" department.

Example
	EmployeeID	FirstName	LastName	DepartmentName
	268			Stephen		Jiang		Sales
	273			Brian		Welcker		Sales
	…			…			…			…
*/
--USE SoftUni;
SELECT
	e.EmployeeID,
	FirstName,
	LastName,
	d.Name AS DepartmentName
FROM
	Employees AS e
JOIN
	Departments AS d ON e.DepartmentID = d.DepartmentID
WHERE
	d.Name = 'Sales'
ORDER BY 
	e.EmployeeID
