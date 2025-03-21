/*
	21. Increase Salaries

Create a SQL query that increases salaries by 12% for all employees that work in one of the following departments –
	Engineering, 
	Tool Design, 
	Marketing or 
	Information Services. 
As a result, select and display only the "Salaries" column from the Employees table. 
After this, you should restore the database to the original data.
Example
	Salary
	12500.00
	15120.00
	48496.00
	33376.00
	…
*/

-- USE SoftUni;
BEGIN TRANSACTION;
	/* This query will only show the altered rows. It can be run before and after the table update to see the changes*/
	--SELECT Salary 
	--FROM Employees AS e 
	--JOIN Departments AS d 
	--ON d.DepartmentID = e.DepartmentId
	--WHERE d.Name in ('Engineering', 'Tool Design', 'Marketing', 'Information Services' );

	UPDATE e
	SET e.Salary = e.Salary * 1.12
	FROM Employees AS e 
	JOIN Departments AS d 
	ON d.DepartmentID = e.DepartmentId
	WHERE d.Name in ('Engineering', 'Tool Design', 'Marketing', 'Information Services' );
	
	SELECT Salary FROM Employees ;

ROLLBACK;