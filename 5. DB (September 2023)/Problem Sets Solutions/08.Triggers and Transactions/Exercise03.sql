/*
    3. Deposit Money

Add stored procedure 
    usp_DepositMoney(AccountId, MoneyAmount) 
that deposits money to an existing account. 
Make sure to guarantee valid positive MoneyAmount with precision up to the fourth sign after the decimal point. 
The procedure should produce exact results working with the specified precision.

Example

Here is the result for AccountId = 1 and MoneyAmount = 10.
    AccountId   AccountHolderId     Balance
    1           1                   133.1200

*/
--USE Bank;
--GO

CREATE OR ALTER PROC usp_DepositMoney(@AccountId INTEGER, @MoneyAmount MONEY) 
AS
BEGIN
    IF @MoneyAmount > 0
    UPDATE Accounts
    SET Balance += @MoneyAmount
    WHERE Id = @AccountId
END

--usp_DepositMoney @AccountId = 1, @MoneyAmount = 10;
--SELECT * FROM Accounts
