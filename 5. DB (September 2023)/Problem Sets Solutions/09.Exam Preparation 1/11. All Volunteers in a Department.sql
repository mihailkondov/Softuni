/*
    11. All Volunteers in a Department

Create a user-defined function named udf_GetVolunteersCountFromADepartment (@VolunteersDepartment) 
that receives a department and returns the count of volunteers, who are involved in this department.

Examples
Query
    SELECT dbo.udf_GetVolunteersCountFromADepartment ('Education program assistant')
Output
    6
*/

CREATE OR ALTER FUNCTION udf_GetVolunteersCountFromADepartment (@VolunteersDepartment VARCHAR(30)) 
RETURNS INT
AS
BEGIN
    DECLARE @Result INT
    
    SELECT 
        @Result = COUNT(*) 
    FROM
       Volunteers WHERE DepartmentId = (SELECT Id FROM VolunteersDepartments WHERE DepartmentName = @VolunteersDepartment)
    RETURN @Result
END
--GO

--SELECT dbo.udf_GetVolunteersCountFromADepartment ('Education program assistant')

--SELECT * FROM VolunteersDepartments
--SELECT * FROM Volunteers WHERE DepartmentId = (SELECT Id FROM VolunteersDepartments WHERE DepartmentName = 'Education program assistant')