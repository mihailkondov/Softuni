/* 
    9. Find Full Name

You are given a database schema with tables 
    AccountHolders(Id (PK), FirstName, LastName, SSN) 
and 
    Accounts(Id (PK), AccountHolderId (FK), Balance). 

Write a stored procedure usp_GetHoldersFullName that selects the full name of all people. 

Example
    Full Name
    Susan Cane
    Kim Novac
    Jimmy Henderson
    …
*/
CREATE PROC usp_GetHoldersFullName AS
SELECT FirstName + ' ' + LastName FROM AccountHolders;