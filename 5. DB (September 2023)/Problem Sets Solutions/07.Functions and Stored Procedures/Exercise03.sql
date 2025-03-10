/* 
	3. Town Names Starting With
Create a stored procedure usp_GetTownsStartingWith that accepts a string as parameter and returns all town 
names starting with that string. 

Example
Here is the list of all towns starting with "b".
	Town
	Bellevue
	Bothell
	Bordeaux
	Berlin
*/
-- USE SoftUni;
-- GO

--/* Version 1 using SUBSTRING  CPU time 15ms, Elapsed time 11ms*/
--SET STATISTICS TIME ON;
--SET STATISTICS IO ON;
--GO

--CREATE OR ALTER PROC usp_GetTownsStartingWith 
--	@startString NVARCHAR(50) = 'Sa'
--AS
--BEGIN
--	DECLARE @len AS SMALLINT = LEN(@startString)
--	SELECT
--		[Name]
--	FROM
--		Towns
--	WHERE
--		SUBSTRING([Name], 1, LEN(@startString)) = @startString
--END
--GO 

--EXEC usp_GetTownsStartingWith
--GO

--SET STATISTICS TIME OFF;
--SET STATISTICS IO OFF;
--GO



--/* Version 2 using LEFT CPU time 0ms, elapsed time 6ms*/
--SET STATISTICS TIME ON;
--SET STATISTICS IO ON;
--GO

CREATE OR ALTER PROC usp_GetTownsStartingWith 
	@startString NVARCHAR(50) = 'Sa'
AS
BEGIN
	DECLARE @len AS SMALLINT = LEN(@startString)
	SELECT
		[Name]
	FROM
		Towns
	WHERE
		LEFT([Name], @len) = @startString
END
--GO

--EXEC usp_GetTownsStartingWith
--GO

--SET STATISTICS TIME OFF;
--SET STATISTICS IO OFF;
--GO


--/* Version 3 using wildcard CPU time 16ms, elapsed time 14ms*/
--SET STATISTICS TIME ON;
--SET STATISTICS IO ON;
--GO

--CREATE OR ALTER PROC usp_GetTownsStartingWith 
--	@startString NVARCHAR(50) = 'Sa'
--AS
--BEGIN
--	DECLARE @len AS SMALLINT = LEN(@startString)
--	SELECT
--		[Name]
--	FROM
--		Towns
--	WHERE
--		[Name] LIKE @startString +'%'
--END
--GO

--EXEC usp_GetTownsStartingWith
--GO

--SET STATISTICS TIME OFF;
--SET STATISTICS IO OFF;
--GO
