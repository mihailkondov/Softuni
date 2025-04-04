/* 
	11. Min Average Salary

Create a query that returns the value of the lowest average salary of all departments.

Example
	MinAverageSalary
	10866.6666
*/
-- If Judge test starts talking about Towns and TownID-s resubmit the solution until it stops.
-- USE SoftUni;

SELECT MIN(AverageSalary) AS MinAverageSalary
FROM (
	SELECT 
		AVG(Salary) AS AverageSalary 
	FROM 
		Employees 
	GROUP BY DepartmentID
) AS DepartmentAverages;

--SELECT TOP 1 
--	AVG(Salary) AS AverageSalary 
--FROM 
--	Employees 
--GROUP BY DepartmentID
--ORDER BY AverageSalary;
