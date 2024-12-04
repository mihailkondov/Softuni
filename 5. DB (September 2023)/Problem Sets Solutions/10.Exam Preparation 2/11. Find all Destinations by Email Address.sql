/*
    11.	Find all Destinations by Email Address

Create a user-defined function named udf_FlightDestinationsByEmail(@email) 
that receives a passenger's email address and returns the number of flight destinations that the passenger has in the database.

Examples
    Query
    SELECT dbo.udf_FlightDestinationsByEmail ('PierretteDunmuir@gmail.com')
    Output
    1

Query
    SELECT dbo.udf_FlightDestinationsByEmail('Montacute@gmail.com')
    Output
    3

Query
    SELECT dbo.udf_FlightDestinationsByEmail('MerisShale@gmail.com')
    Output
    0
*/
CREATE OR ALTER FUNCTION udf_FlightDestinationsByEmail(
    @email NVARCHAR(50)
)
RETURNS INTEGER
AS
BEGIN
    DECLARE @ndest INTEGER
    SET @ndest = (SELECT 
                        COUNT(*) 
                  FROM 
                        FlightDestinations AS fd 
                        JOIN Passengers AS p ON p.Id = fd.PassengerId
                  WHERE 
                        Email = @email
                  GROUP BY 
                        FullName)
    IF @ndest IS NULL
    SET @ndest = 0
    RETURN @ndest
END
-- GO
-- SELECT dbo.udf_FlightDestinationsByEmail ('LoisLeidle@gmail.com')

-- GO
-- SELECT dbo.udf_FlightDestinationsByEmail ('notinthedatabase@gmail.com')
