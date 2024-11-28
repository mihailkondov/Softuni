/*
    4.	Delete

The Zoo decided to close one of the Volunteers Departments - Education program assistant.
our job is to delete this department from the database.

NOTE: Keep in mind that there could be foreign key constraint conflicts!

*/

-- SELECT * FROM VolunteersDepartments;

---- All volunteers in the Education program assistant department:
-- SELECT * FROM Volunteers WHERE DepartmentId = (SELECT TOP 1 Id FROM VolunteersDepartments WHERE DepartmentName = 'Education program assistant')

---- This doesn't work because DepartmentId in VolunteersDepartments is set to non-nullable:
--UPDATE Volunteers
--SET DepartmentId = NULL
--WHERE ID IN (
--    SELECT Id 
--    FROM Volunteers 
--    WHERE DepartmentId = (
--        SELECT TOP 1 Id 
--        FROM VolunteersDepartments 
--        WHERE DepartmentName = 'Education program assistant'
--    )
--)

-- Delete all volunteers in the department
DELETE FROM Volunteers
WHERE ID IN (
    SELECT Id 
    FROM Volunteers 
    WHERE DepartmentId = (
        SELECT TOP 1 Id 
        FROM VolunteersDepartments 
        WHERE DepartmentName = 'Education program assistant'
    )
);

-- Delete the department
DELETE FROM VolunteersDepartments
WHERE DepartmentName = 'Education program assistant'

-- SELECT * FROM VolunteersDepartments 