/*
	6. Find Email Address of Each Employee

Create a SQL query that finds the email address of each employee by their first and last name. 
Consider that the email domain is softuni.bg. 
Emails should look like "John.Doe@softuni.bg". 
The produced column should be named "Full Email Address".
Example
	Full Email Address
	Guy.Gilbert@softuni.bg
	Kevin.Brown@softuni.bg
	Roberto.Tamburello@softuni.bg
	…
*/

SELECT 
	FirstName + '.'	+ LastName + '@softuni.bg' AS [Full Email Address]
FROM 
	Employees;

-- The first time I submitted this solution I got this random message:
--		"There is already an object named 'Towns' in the database."
-- Simply resubmitting the same solution seems to have fixed the problem and I don't know why
