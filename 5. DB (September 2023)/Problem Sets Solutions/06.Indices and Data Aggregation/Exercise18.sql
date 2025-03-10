/* 
	18. *3rd Highest Salary

Find the third highest salary in each department if there is such. 

Example
	DepartmentID	ThirdHighestSalary
	1				36100.00
	…				…
*/

WITH RankedSalaries AS (
	SELECT 
		  FirstName
		, DepartmentID
		, Salary
		, DENSE_RANK() OVER (PARTITION BY DepartmentID ORDER BY Salary DESC) AS DepartmentSalaryOrder
	FROM 
		Employees
)
SELECT DISTINCT
	rs.DepartmentID
	, Salary AS ThirdHighestSalary
FROM
	RankedSalaries AS rs
WHERE
	DepartmentSalaryOrder = 3
