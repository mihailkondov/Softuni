/* 
	4. Employees from Town

Create a stored procedure usp_GetEmployeesFromTown that accepts town name as parameter and 
returns the first and last name of those employees, who live in the given town. 

Example
Here it is a list of employees, living in Sofia.
	First Name	Last Name
	Svetlin		Nakov
	Martin		Kulov
	George		Denchev
*/

-- USE SoftUni;
CREATE OR ALTER PROC usp_GetEmployeesFromTown 
	@townName VARCHAR(100)
AS
BEGIN
	SELECT 
		e.FirstName AS [First Name]
	,	e.LastName As [Last Name]
	FROM
		Employees AS e
	JOIN 
		Addresses AS a ON a.AddressID = e.AddressID
	JOIN
		Towns AS t ON t.TownID = a.TownID
	WHERE
		t.Name = @townName	
END
-- GO

-- EXEC usp_GetEmployeesFromTown 'Sofia'
-- DROP PROC usp_GetEmployeesFromTown;