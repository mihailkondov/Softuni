/*
	13. Find 5 Best Paid Employees.

Create a SQL query that finds the first and last names of the 5 best-paid Employees, ordered descending by their salary.
Example
	FirstName	LastName
	Ken			Sanchez
	James		Hamilton
	…			…
*/
-- USE SoftUni

SELECT TOP (5)
	FirstName, LastName
FROM 
	Employees 
ORDER BY
	Salary DESC;

-- Resubmit until message "There is already an object named 'Towns' in the database." disappears to pass the test.