/* 
    1. Create Table Logs

Create a table – 
Logs (LogId, AccountId, OldSum, NewSum). 

Add a trigger to the Accounts table that enters a new entry into the Logs table every time the sum on an account change. 
Submit only the query that creates the trigger.

Example
    LogId   AccountId   OldSum  NewSum
    1       1           123.12  113.12
    …       …           …       …
*/
--USE Bank;

--CREATE TABLE Logs(
--    LogId       INTEGER     PRIMARY KEY IDENTITY(1,1)
--,   AccountId   INTEGER
--,   OldSum      MONEY
--,   NewSum      MONEY
--);
--GO

CREATE OR ALTER TRIGGER trigger_hard 
ON Accounts FOR UPDATE
AS 
    INSERT INTO Logs (AccountId, OldSum, NewSum)
    SELECT i.Id, d.Balance, i.Balance
    FROM inserted AS i
    JOIN deleted AS d ON d.Id = i.Id
    WHERE d.Balance != i.Balance

--GO

-------------------------------
--SELECT * FROM AccountHolders;
--SELECT * FROM Accounts;