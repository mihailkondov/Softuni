/* 
	5. Salary Level Function

Create a function ufn_GetSalaryLevel(@salary DECIMAL(18,4)) that receives salary of an employee and 
returns the level of the salary.
	• If salary is < 30000, return "Low"
	• If salary is between 30000 and 50000 (inclusive), return "Average"
	• If salary is > 50000, return "High"
*/

CREATE FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18,4))
RETURNS NVARCHAR(7)
BEGIN
	DECLARE @salaryLevel NVARCHAR(7);
	RETURN 
		CASE
			WHEN @salary < 30000 THEN 'Low'
			WHEN @salary > 50000 THEN 'High'
			ELSE 'Average'
		END 
END
--GO

--DROP FUNCTION ufn_GetSalaryLevel;
