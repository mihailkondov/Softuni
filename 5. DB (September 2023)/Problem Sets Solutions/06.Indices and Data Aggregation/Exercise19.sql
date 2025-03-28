/*
	19. **Salary Challenge

Create a query that returns:
	• FirstName
	• LastName
	• DepartmentID

Select all employees who have salary higher than the average salary of their respective departments. 
Select only the first 10 rows. 
Order them by DepartmentID.

Example

	FirstName	LastName	DepartmentID
	Roberto		Tamburello	1
	…			…			… 
*/
-- USE SoftUni;
WITH AverageSalaryByDept AS (
	SELECT 
		DepartmentID
	,	AVG(Salary) AS AverageDepartmentSalary
	FROM 
		Employees
	GROUP BY DepartmentID
)
SELECT TOP 10
	e.FirstName
,	e.LastName
,	e.DepartmentID
--,	e.Salary
--,	asd.AverageDepartmentSalary
FROM 
	Employees AS e
	JOIN AverageSalaryByDept AS asd ON asd.DepartmentID = e.DepartmentID
WHERE
	e.Salary > asd.AverageDepartmentSalary
ORDER BY DepartmentID
