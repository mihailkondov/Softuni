/* 
    8. Employees with Three Projects

Create a procedure usp_AssignProject(@emloyeeId, @projectID) that assigns projects to an employee. 
If the employee has more than 3 project throw an exception and rollback the changes. 
The exception message must be: "The employee has too many projects!" with Severity = 16, State = 1.
*/
--USE SoftUni;
--GO

CREATE OR ALTER PROC usp_AssignProject(
      @employeeId INTEGER
    , @projectID INTEGER
)
AS
    BEGIN
        BEGIN TRANSACTION
            INSERT INTO EmployeesProjects 
            VALUES (@employeeId, @projectID);   

            IF 
                (SELECT COUNT(*) FROM EmployeesProjects WHERE EmployeeID = @employeeId) > 3
            BEGIN
                RAISERROR('The employee has too many projects!', 16, 1);
                ROLLBACK TRANSACTION;
            END
            ELSE
                COMMIT TRANSACTION
    END
