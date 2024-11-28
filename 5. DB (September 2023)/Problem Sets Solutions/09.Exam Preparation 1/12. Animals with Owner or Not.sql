/*
    12. Animals with Owner or Not

Create a stored procedure, named usp_AnimalsWithOwnersOrNot(@AnimalName). 
Extract the name of the owner of the given animal.  If there is no owner, put 'For adoption'.

Example
    Query
        EXEC usp_AnimalsWithOwnersOrNot 'Pumpkinseed Sunfish'
    Result
        Name	                OwnersName
        Pumpkinseed Sunfish	    Kamelia Yancheva
*/

CREATE OR ALTER PROC usp_AnimalsWithOwnersOrNot(
    @AnimalName VARCHAR(30)
)
AS
BEGIN
    
    SELECT 
        a.[Name] 
    ,   CASE 
            WHEN a.OwnerId IS NULL THEN 'For adoption'
            ELSE o.[Name]
        END AS OwnersName
    FROM 
        Animals AS a
        LEFT JOIN Owners AS o ON o.Id = a.OwnerId
    WHERE 
        a.[Name] = @AnimalName
END
