/* 
    13. *Scalar Function: Cash in User Games Odd Rows


You are given a database "Diablo" holding users, games, items, characters and statistics, available as an SQL script. 
Your task is to write some stored procedures, views, and other server-side database objects and write some SQL queries 
for displaying the data from the database.

Important: start with a clean copy of the "Diablo" database on each problem. Just execute the SQL script again.
Create a function ufn_CashInUsersGames that sums the cash of the odd rows. 
Rows must be ordered by cash in descending order. 
The function should take a game name as a parameter and return the result as a table. 
Submit only your function in.

Execute the function over the following game names, ordered exactly like: "Love in a mist".

Output
SumCash
8585.00

Hint
Use ROW_NUMBER to get the rankings of all rows based on order criteria
*/

--WITH ranked AS (
--    SELECT 
--        g.Name AS [Game Name], 
--        ROW_NUMBER() OVER (PARTITION BY [Name] ORDER BY [Cash] DESC) AS [Rank],
--        Cash
--    FROM 
--        UsersGames AS ug
--    JOIN Games AS g ON g.Id = ug.GameId
--)
--SELECT 
--      SUM([Cash]) AS SumCash
--FROM 
--    ranked
--WHERE [Game Name] = 'Love in a mist'
--AND [Rank] % 2 = 1

--USE Diablo
--GO

CREATE FUNCTION ufn_CashInUsersGames (@gameName NVARCHAR(50))
RETURNS TABLE 
AS 
RETURN(
        WITH ranked AS (
                        SELECT 
                                g.Name AS [Game Name], 
                                ROW_NUMBER() OVER (PARTITION BY [Name] ORDER BY [Cash] DESC) AS [Rank],
                                Cash
                        FROM 
                                UsersGames AS ug
                        JOIN    
                                Games AS g ON g.Id = ug.GameId
        )
        SELECT 
                SUM([Cash]) AS SumCash
        FROM 
            ranked
        WHERE [Game Name] = @gameName
        AND [Rank] % 2 = 1
)

