/* 
	17. Employees Count Salaries

Count the salaries of all employees, who don’t have a manager.

Example
	Count
	4
*/
-- USE SoftUni;

SELECT 
	COUNT(Salary) AS Count
FROM 
	Employees
WHERE
	ManagerID IS NULL