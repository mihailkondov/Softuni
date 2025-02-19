/*
	10. Find Names of All Employees

Create a SQL query that finds the full name of all employees whose salary is exactly 25000, 14000, 12500 or 23600. 
The result should be displayed in a column, named "Full Name", 
which is a combination of the first, middle and last names, separated by a single space.
Example
	Full Name
	Guy R Gilbert
	Thierry B D'Hers
	JoLynn M Dobney*/

-- USE SoftUni;

SELECT 
	CONCAT_WS(' ', FirstName, MiddleName, LastName) AS [Full Name] 
FROM 
	Employees
WHERE 
	Salary IN (25000, 14000, 12500, 23600);

-- If error message is "There is already an object named 'Towns' in the database."
-- keep resubmitting until the test passes.