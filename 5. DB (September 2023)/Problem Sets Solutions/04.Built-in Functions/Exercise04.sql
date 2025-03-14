/*
	4. Find All Employees Except Engineers

Create a SQL query that finds the first and last names of every employee, 
whose job title does not contain "engineer".

Example
	FirstName LastName
	Guy Gilbert
	Kevin Brown
*/
-- USE SoftUni;

SELECT FirstName, LastName
FROM Employees
WHERE LOWER(JobTitle) NOT LIKE('%engineer%')

--SELECT DISTINCT JobTitle
--FROM Employees
--WHERE LOWER(JobTitle) NOT LIKE('%engineer%')
--ORDER BY JobTitle