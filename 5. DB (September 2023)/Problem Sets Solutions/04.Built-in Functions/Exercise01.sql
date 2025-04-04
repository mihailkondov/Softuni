/*
	1. Find Names of All Employees by First Name

Create a SQL query that finds all employees whose first name starts with "Sa". As a result, display "FirstName" 
and "LastName".

Example
	FirstName	LastName
	Sariya		Harnpadoungsataya
	Sandra		Reategui Alayo
	…			…

*/
-- There is already an object named 'Towns' in the database. <- this bug is back. Resubmit until it disappears

--USE SoftUni;
--SET STATISTICS TIME ON

--SELECT * FROM Employees WHERE FirstName LIKE('Sa%'); -- Completed in 3ms
--SELECT * FROM Employees WHERE SUBSTRING(FirstName, 1, 2) = 'Sa'; -- Completed in 9ms

SELECT 	FirstName, LastName
  FROM  Employees
 WHERE	FirstName LIKE('Sa%');

 