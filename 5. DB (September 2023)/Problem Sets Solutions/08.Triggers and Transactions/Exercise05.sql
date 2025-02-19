/*
    5. Money Transfer

Create stored procedure usp_TransferMoney(SenderId, ReceiverId, Amount) that transfers money from one account to another. 
Make sure to guarantee valid positive MoneyAmount with precision up to the fourth sign after the decimal point. 
Make sure that the whole procedure passes without errors and if an error occurs make no change in the database. 
You can use both: "usp_DepositMoney", "usp_WithdrawMoney" (look at the previous two problems about those procedures).

Example
Here is the result for SenderId = 5, ReceiverId = 1 and MoneyAmount = 5000.

    AccountId   AccountHolderId     Balance
    1           1                   5123.12
    5           11                  31521.2000
*/
CREATE OR ALTER PROC usp_TransferMoney
(
      @SenderId     INTEGER
    , @ReceiverId   INTEGER
    , @Amount       DECIMAL(18, 4)
)
AS
BEGIN
    IF @Amount >= 0
    BEGIN
        BEGIN TRANSACTION
            EXECUTE dbo.usp_DepositMoney @ReceiverId, @Amount;
            EXECUTE usp_WithdrawMoney @SenderId, @Amount;    
        COMMIT TRANSACTION
    END
    ELSE
    BEGIN
         RAISERROR('Transfered amount must be a positive number', 16, 1)
    END
END

--usp_TransferMoney 5, 1, 5000
--SELECT * FROM Accounts