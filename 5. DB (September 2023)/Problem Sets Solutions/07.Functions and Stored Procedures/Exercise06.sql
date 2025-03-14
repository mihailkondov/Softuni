/*
	6. Employees by Salary Level

Create a stored procedure usp_EmployeesBySalaryLevel that receives as parameter level of salary (low, average, or high) and 
print the names of all employees, who have the given level of salary. 
You should use the function 
	- "dbo.ufn_GetSalaryLevel(@Salary)", 
which was part of the previous task, inside your "CREATE PROCEDURE …" query.

Example
Here is the list of all employees with a high salary.
	First Name	Last Name
	Terri		Duffy
	Jean		Trenary
	Ken			Sanchez
	…			…
*/
--USE SoftUni;

--CREATE FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18,4))
--RETURNS NVARCHAR(7)
--BEGIN
--	DECLARE @salaryLevel NVARCHAR(7);
--	RETURN 
--		CASE
--			WHEN @salary < 30000 THEN 'Low'
--			WHEN @salary > 50000 THEN 'High'
--			ELSE 'Average'
--		END 
--END
--GO

CREATE PROC usp_EmployeesBySalaryLevel 
	@level VARCHAR(7) 
AS
BEGIN
	SELECT 
		FirstName AS [First Name]
	,	LastName AS [Last Name]
	FROM	
		Employees
	WHERE
		@level = dbo.ufn_GetSalaryLevel(Salary)
END
--GO

--EXEC usp_EmployeesBySalaryLevel 'High';

--DROP PROC usp_EmployeesBySalaryLevel;
--DROP FUNCTION ufn_GetSalaryLevel;