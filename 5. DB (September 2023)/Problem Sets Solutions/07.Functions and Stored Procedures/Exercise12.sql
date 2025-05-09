/* 
    12. Calculating Interest

Your task is to create a stored procedure usp_CalculateFutureValueForAccount 
that uses the function from the previous problem 
to give an interest to a person's account for 5 years, along with information about 
their account id, 
first name, 
last name and
current balance as it is shown in the example below. 
It should take the AccountId and the interest rate as parameters. 

Again, you are provided with the dbo.ufn_CalculateFutureValue function, which was part of the previous task.

Example
Account Id  First Name  Last Name   Current Balance     Balance in 5 years
1           Susan       Cane        123.12              198.2860

*Note: for the example above interest rate is 0.1
*/
-- USE DB_week7
-- GO

--CREATE OR ALTER FUNCTION ufn_CalculateFutureValue(
--    @initialSum DECIMAL(15, 4)
--   ,@yearlyInterestRate FLOAT
--   ,@years INT
--)
--RETURNS DECIMAL(15,4)
--BEGIN
--    RETURN @initialSum * POWER( 1 + @yearlyInterestRate, @years) 
--END
--GO

CREATE OR ALTER PROC usp_CalculateFutureValueForAccount(
      @accountId INT
    , @yearlyInterestRate FLOAT)
AS
BEGIN
    SELECT 
          a.Id AS [Account Id]
        , ah.FirstName AS [First Name]
        , ah.LastName AS [Last Name]  
        , a.Balance AS [Current Balance]
        , [dbo].[ufn_CalculateFutureValue](a.Balance, @yearlyInterestRate, 5) AS [Balance in 5 years]
    FROM AccountHolders AS ah
    JOIN Accounts AS a ON a.AccountHolderId = ah.Id
    WHERE a.Id = @accountId
END

-- EXEC usp_CalculateFutureValueForAccount 1, 0.1

-- DROP FUNCTION dbo.ufn_CalculateFutureValue
-- DROP PROC usp_CalculateFutureValueForAccount
