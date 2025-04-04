/* 
    10. People with Balance Higher Than

You are given a database schema with tables 
    AccountHolders(Id (PK), FirstName, LastName, SSN) 
and 
    Accounts(Id (PK), AccountHolderId (FK), Balance). 

Your task is to create a stored procedure usp_GetHoldersWithBalanceHigherThan 
that accepts a number as a parameter and 
returns all the people, who have more money in total in all their accounts than the supplied number. 
Order them by their first name, then by their last name.

Example
First Name Last Name
Monika Miteva
Petar Kirilov
… …

*/
CREATE PROC usp_GetHoldersWithBalanceHigherThan
    @number DECIMAL(18,4)
AS
BEGIN
      SELECT h.[FirstName] AS [First Name]
           , h.[LastName] AS [Last Name]
        FROM AccountHolders AS h
        JOIN Accounts AS a ON a.AccountHolderId = h.Id
       GROUP BY FirstName, LastName
      HAVING SUM(a.Balance) > @number
       ORDER BY 
             [First Name]
           , [Last Name]
END

--DROP PROC usp_GetHoldersWithBalanceHigherThan
