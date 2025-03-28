/* 
    2. Create Table Emails

Create another table – NotificationEmails(Id, Recipient, Subject, Body). 
Add a trigger to logs table and 
create new email whenever new record is inserted in logs table. 
The following data is required to be filled for each email:
    • Recipient – AccountId
    • Subject – "Balance change for account: {AccountId}"
    • Body - "On {date} your balance was changed from {old} to {new}."
Submit your query only for the trigger action.

Example
    Id  Recipient   Subject                         Body
    1   1           Balance change for account: 1   On Sep 12 2016 2:09PM your balance was changed from 113.12 to 103.12.
    …   …           …                               …
*/

--USE Bank;
--GO

-- CREATE TABLE NotificationEmails(
--        [Id]        INTEGER PRIMARY KEY IDENTITY(1,1)
--,       [Recipient] INTEGER
--,       [Subject]   NVARCHAR(100)
--,       [Body]      NVARCHAR(100)
--        CONSTRAINT FK_Recipient FOREIGN KEY (Recipient) REFERENCES AccountHolders(Id)
--);
--GO 

 CREATE OR ALTER TRIGGER tr_NotificationEmails_on_Logs
     ON Logs
    FOR INSERT 
     AS
        BEGIN
            INSERT INTO NotificationEmails -- ([Recipient], [Subject], [Body])
            VALUES 
            (
                    (   
                        SELECT AccountId 
                        FROM inserted
                    ), 
                    CONCAT( 
                        'Balance change for account: ',
                        (
                            SELECT AccountId FROM inserted
                        )
                    ),
                    CONCAT(
                        'On ', CURRENT_TIMESTAMP, ' your balance was changed from ',
                        (
                            SELECT OldSum 
                            FROM inserted 
                        ), ' to ',
                        (
                            SELECT NewSum
                            FROM inserted
                        ), '.'
                    )
            );
        END
--GO  

--DROP TABLE NotificationEmails;
--DROP TRIGGER tr_NotificationEmails_on_Accounts
--------
--SELECT * FROM Accounts AS a JOIN AccountHolders AS ah ON  ah.Id = a.AccountHolderId ORDER BY ah.Id;
--SELECT * FROM Logs;
--SELECT * FROM Accounts
--SELECT * FROM NotificationEmails