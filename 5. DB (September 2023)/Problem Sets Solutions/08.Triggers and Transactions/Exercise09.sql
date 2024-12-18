/*
    9. Delete Employees

Create a table 
    Deleted_Employees(EmployeeId PK, FirstName, LastName, MiddleName, JobTitle, DepartmentId, Salary) 
    
that will hold information about fired (deleted) employees from the Employees table. 
Add a trigger to Employees table that inserts the corresponding information about the deleted records in Deleted_Employees

*/
--USE SoftUni;
--GO

--CREATE TABLE  Deleted_Employees(
--    EmployeeId      INTEGER     PRIMARY KEY
--,   FirstName       VARCHAR(50) NOT NULL  
--,   LastName        VARCHAR(50) NOT NULL
--,   MiddleName      VARCHAR(50)
--,   JobTitle        VARCHAR(50)
--,   DepartmentId    INTEGER     NOT NULL FOREIGN KEY REFERENCES Departments(DepartmentID)
--,   Salary          MONEY       NOT NULL
--);
--GO

CREATE TRIGGER tr_Deleted_Employees
ON Employees
AFTER DELETE
AS
BEGIN
    INSERT INTO Deleted_Employees (
        /*EmployeeId,*/ FirstName, LastName, MiddleName, JobTitle, DepartmentId, Salary)
    SELECT 
        /*EmployeeId,*/ FirstName, LastName, MiddleName, JobTitle, DepartmentId, Salary
    FROM 
        deleted
END
-- GO
--DROP TABLE Deleted_Employees
--DROP TRIGGER tr_Deleted_Employees
--SELECT * FROM Employees;
--DELETE FROM Employees
--WHERE EmployeeID = 293;
