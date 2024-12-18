/*
Part II – Queries for SoftUni Database

That's it! You no longer work for Mr. Bodrog. You have decided to find a proper job as an analyst in SoftUni. 
It's not a surprise that you will use the SoftUni database. Things get more exciting here!


	13. Departments Total Salaries

Create a query that shows the total sum of salaries for each department. 
Order them by DepartmentID.

Your query should return:
	• DepartmentID

Example
	DepartmentID	TotalSalary
	1				241000.00
	…				…
*/
-- USE SoftUni
SELECT 
	DepartmentID, 
	SUM(Salary) AS TotalSalary
FROM 
	Employees
GROUP BY 
	DepartmentID