/* 
	14. Employees Minimum Salaries

Select the minimum salary from the employees for departments with ID (2, 5, 7) but only for those, hired after 01/01/2000.

Your query should return:
	• DepartmentID

Example
	DepartmentID	MinimumSalary
	2				25000.00
	5				12800.00
	…				…
*/
-- USE SoftUni;

SELECT 
	  DepartmentID
	, MIN(Salary) AS MinimumSalary
FROM Employees
WHERE 
	DepartmentID IN (2, 5, 7)
	AND HireDate > '01/01/2000'
GROUP BY 
	DepartmentID;