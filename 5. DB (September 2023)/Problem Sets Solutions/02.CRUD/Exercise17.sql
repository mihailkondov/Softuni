/*
	17. Create View Employees with Job Titles

Create a SQL query that creates a view "V_EmployeeNameJobTitle" with a full employee name and a job title. 
When the middle name is NULL replace it with an empty string ('').
Example
	Full Name			Job Title
	Guy R Gilbert		Production Technician
	Kevin F Brown		Marketing Assistant
	Roberto Tamburello	Engineering Manager
	…					…
*/
--DROP VIEW IF EXISTS V_EmployeeNameJobTitle;

--GO

CREATE OR ALTER VIEW 
	V_EmployeeNameJobTitle
AS
	SELECT 
		CONCAT(
			FirstName
			, ' ', 
				CASE
					WHEN MiddleName IS NULL  THEN ''
					ELSE MiddleName
				END  
			,' '
			, LastName
		) AS [Full Name],
		JobTitle AS [Job Title]
	FROM Employees;

---- While I would rather use the following query in a real situation, 
---- in this exercise NULL entries must become space + "" + space (effectively double space) 
---- so this solution doesn't pass the Judge test
--DROP VIEW IF EXISTS V_EmployeeNameJobTitle;
--
--GO
--
--CREATE VIEW 
--	V_EmployeeNameJobTitle
--AS
--	SELECT 
--		CONCAT_WS(' ', FirstName, MiddleName, LastName) AS [Full Name],
--					-- If we have a NULL parameter, the CONCAT() function returns a NULL output. 
--					-- However, the CONCAT_WS() function ignores the NULL and processes the remaining parameters for data concatenation.
--		JobTitle AS [Job Title]
--	FROM Employees;

---- See the view I just created:
-- SELECT * FROM V_EmployeeNameJobTitle;