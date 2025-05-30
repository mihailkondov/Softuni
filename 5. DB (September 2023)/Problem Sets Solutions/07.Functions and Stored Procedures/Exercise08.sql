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
    -- PART 0: Find the IDs of the employees to be deleted
    DECLARE @EmployeesToDelete TABLE ([Id] INT);
    INSERT INTO @EmployeesToDelete 
                SELECT EmployeeID 
                  FROM Employees 
                 WHERE DepartmentID = @departmentId

    -- PART 1: Delete the employees

    -- 1.1.1 Delete EmployeesProjects entries about the employees to be deleted - removes reference
    DELETE 
      FROM EmployeesProjects 
     WHERE EmployeeID IN (
                          SELECT Id 
                            FROM @EmployeesToDelete 
                         );
    
    -- 1.1.2 Remove reference Employees -> Employees
    UPDATE Employees
       SET ManagerID = NULL
    WHERE ManagerID IN (
                         SELECT EmployeeID 
                           FROM Employees 
                          WHERE DepartmentID = @departmentId
                        )

    -- 1.1.3 Set manager ID to null in case the manager of the department was deleted
        -- Make Departments ManagerID field nullable
    ALTER TABLE Departments
    ALTER COLUMN ManagerID INT NULL; 
        -- Update values
    UPDATE Departments
    SET ManagerID = NULL
    WHERE ManagerID IN (
                        SELECT Id 
                          FROM @EmployeesToDelete 
    )

    -- 1.2 Delete all employees from the given department
    DELETE 
      FROM Employees 
     WHERE EmployeeID IN (SELECT [Id] FROM @EmployeesToDelete)

    -- PART 2: Delete the department
    -- 2.1 Set this reference Employees.DepartmentID -> Departments.DepartmentID to NULL
    ALTER TABLE Employees
    ALTER COLUMN DepartmentID INT NULL;

    UPDATE Employees
       SET DepartmentID = NULL
     WHERE DepartmentID = @departmentId;

     DELETE
       FROM Departments
      WHERE DepartmentID = @departmentId;

    SELECT COUNT(*) FROM Employees WHERE DepartmentID = @departmentId
END
--GO

--BEGIN TRANSACTION;
--GO
--    [dbo].[usp_DeleteEmployeesFromDepartment] 7;
--ROLLBACK;
