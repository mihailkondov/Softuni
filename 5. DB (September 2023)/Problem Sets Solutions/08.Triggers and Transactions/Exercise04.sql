/* 
    4. Withdraw Money Procedure

Add stored procedure usp_WithdrawMoney (AccountId, MoneyAmount) 
that withdraws money from an existing account.
Make sure to guarantee valid positive MoneyAmount with precision up to the fourth sign after decimal point. 
The procedure should produce exact results working with the specified precision.

Example
Here is the result for AccountId = 5 and MoneyAmount = 25.
    AccountId   AccountHolderId     Balance
    5           11                  36496.2000

*/
--USE Bank;
--GO

CREATE OR ALTER PROC usp_WithdrawMoney 
(
            @AccountId INTEGER, 
            @MoneyAmount MONEY
) 
AS
BEGIN
    IF @MoneyAmount >= 0
        UPDATE Accounts
        SET Balance = Balance - @MoneyAmount
        WHERE Id = @AccountId
    ELSE
        RAISERROR('Money amount to withdraw must be positive number', 16, 1)
END;

--usp_WithdrawMoney 5, 96
--DROP PROC usp_WithdrawMoney;

--SELECT * FROM Accounts