/*
	9. Find Names of All Employees by Salary in Range

Create a SQL query to find the first name, last name and job title for all employees whose 
salary is in a range between 20000 and 30000.
Example:
	FirstName	LastName	JobTitle
	Rob			Walters		Senior Tool Designer
	Thierry		D'Hers		Tool Designer
	JoLynn		Dobney		Production Supervisor
	…			…			…
*/
-- USE SoftUni;

SELECT FirstName, LastName, JobTitle FROM Employees
WHERE Salary >= 20000
AND	  Salary <= 30000;