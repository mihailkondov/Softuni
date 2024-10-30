/* 
    8. Delete Employees and Departments

Create a procedure with the name usp_DeleteEmployeesFromDepartment (@departmentId INT) 
which deletes all Employees from a given department. 
Delete these departments from the Departments table too.
Finally, SELECT the numberof employeesfrom the given department. 
If the delete statements are correct the select query should return 0.
After completing that exercise restore your database to revert all changes.
Hint:
You may set ManagerID column in Departments table to nullable (using query "ALTER TABLE …").
*/
-- USE SoftUni
CREATE OR ALTER PROC usp_DeleteEmployeesFromDepartment 
    @departmentId INT
AS
BEGIN  
    -- Delete EmployeesProjects entries about the employees to be deleted
    DELETE EmployeesProjects 
    WHERE EmployeeID IN (
        SELECT EmployeeID 
        FROM Employees 
        WHERE DepartmentID = @departmentId
    );

    -- Make Departments ManagerID field nullable
    ALTER TABLE Departments
    ALTER COLUMN ManagerID INT NULL; 

    -- Set manager ID to null in case the manager of the department was deleted
    UPDATE Departments
    SET ManagerID = NULL
    WHERE ManagerID IN (
                        SELECT EmployeeID 
                          FROM Employees 
                         WHERE DepartmentID = @departmentId
    )

    -- Drop self reference (ManagerID)
    ALTER TABLE Employees
    ALTER COLUMN ManagerID INT NULL;

    -- Set department ID nullable
    ALTER TABLE Employees
    ALTER COLUMN DepartmentID INT NULL;

    -- Delete all employees from the given department
    DELETE 
      FROM Employees 
     WHERE DepartmentID = @departmentId;

END
GO

BEGIN TRANSACTION;
GO
    [dbo].[usp_DeleteEmployeesFromDepartment] 7;
ROLLBACK;







--SELECT * FROM Employees;
--SELECT * FROM Employees WHERE EmployeeID = 21;

--SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
--WHERE TABLE_NAME = 'Departments'

--SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
--WHERE TABLE_NAME = 'Employees'
