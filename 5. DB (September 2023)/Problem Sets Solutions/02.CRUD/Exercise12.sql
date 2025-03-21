/*
	12. Find All Employees with a Salary More Than 50000

Create a SQL query that finds the first name, last name and salary for employees with a salary higher than 50000. 
Order the result in decreasing order by salary.
Example
	FirstName	LastName	Salary
	Ken			Sanchez		125500.00
	James		Hamilton	84100.00
	…			…			…
*/

-- USE SoftUni
SELECT 
	FirstName, LastName, Salary
FROM 
	Employees 
WHERE 
	Salary > 50000
ORDER BY
	Salary DESC;

-- Resubmit until message "There is already an object named 'Towns' in the database." disappears to pass the test.