/*
	6. Employees Hired After

Create a query that selects:
	• FirstName
	• LastName
	• HireDate
	• DeptName

Filter only employees who were hired after 1.1.1999 
and are from either "Sales" or "Finance" department. 
Sort them by HireDate (ascending).

Example
	FirstName	LastName	HireDate				DeptName
	Debora		Poe			2001-01-19 00:00:00		Finance
	Wendy		Kahn		2001-01-26 00:00:00		Finance
	…			…			…						…
*/
-- USE SoftUni;
SELECT
	FirstName,
	LastName,
	HireDate,
	d.Name AS DeptName
FROM
	Employees AS e
JOIN
	Departments AS d ON d.DepartmentID = e.DepartmentID
WHERE
	HireDate >= '1.1.1999'
AND 
	d.Name IN ('Finance', 'Sales')
ORDER BY 
	HireDate;