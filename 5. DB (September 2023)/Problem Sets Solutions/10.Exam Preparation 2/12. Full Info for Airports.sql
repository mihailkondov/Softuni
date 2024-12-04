/*
    12. Full Info for Airports

Create a stored procedure, named usp_SearchByAirportName, which accepts the following parameters:
	airportName(with max length 70)

Extract information about the airport locations with the given airport name. 
The needed data is the name of the airport, full name of the passenger, level of the ticket price 
(depends on flight destination's ticket price: 
'Low'– lower than 400 (inclusive), 'Medium' – between 401 and 1500 (inclusive), and 'High' – more than 1501), 
manufacturer and condition of the aircraft, and the name of the aircraft type.
Order the result by Manufacturer, then by passenger's full name.

Required columns:
	AirportName
	FullName (passenger)
	LevelOfTickerPrice 
	Manifacturer
	Condition
	TypeName (aircraft type)

Example
Query
    EXEC usp_SearchByAirportName 'Sir Seretse Khama International Airport'
Result
    AirportName	                            FullName	        LevelOfTickerPrice	Manufacturer	Condition	TypeName
    Sir Seretse Khama International Airport	Alyson Jankowski	Low	                Airbus	        B	        Private Single Engine
    Sir Seretse Khama International Airport	Bev Wrigglesworth	Medium	            Airbus	        B	        Private Single Engine
    Sir Seretse Khama International Airport	Kelcy Viccary	    High	            Airbus	        B	        Mid-Size Passenger Jets
    Sir Seretse Khama International Airport	Courtnay Devoy	    Low	                GE Aviation	    B	        Heavy Business Jets
    Sir Seretse Khama International Airport	Joyann Garrettson	Low	                Lockheed Martin	A	        Twin Turboprops
    Sir Seretse Khama International Airport	Zeke Rowston	    High	            Lockheed Martin	A	        Private Single Engine
*/
CREATE OR ALTER PROC usp_SearchByAirportName (@airportName NVARCHAR(70))
AS
BEGIN
    SELECT 
    a.AirportName
,   p.FullName
,   CASE
        WHEN TicketPrice <= 400 THEN 'Low'
        WHEN TicketPrice BETWEEN 401 AND 1500 THEN 'Medium'
        WHEN TicketPrice > 1500 THEN 'High'
        ELSE 'ERROR'
    END AS LevelOfTickerPrice
,   ac.Manufacturer
,   ac.Condition
,   act.TypeName
FROM 
    Airports AS a
    LEFT JOIN FlightDestinations AS fd ON fd.AirportId = a.Id
    LEFT JOIN Aircraft AS ac ON ac.Id = fd.AircraftId
    LEFT JOIN AircraftTypes AS act ON act.Id = ac.TypeId
    LEFT JOIN Passengers AS p ON p.Id = fd.PassengerId
WHERE
    a.AirportName = @airportName
ORDER BY
    ac.Manufacturer
,   p.FullName
END;

--SELECT 
--    a.AirportName
--,   p.FullName
--,   CASE
--        WHEN TicketPrice <= 400 THEN 'Low'
--        WHEN TicketPrice BETWEEN 401 AND 1500 THEN 'Medium'
--        WHEN TicketPrice > 1500 THEN 'High'
--        ELSE 'ERROR'
--    END AS LevelOfTickerPrice
--,   ac.Manufacturer
--,   ac.Condition
--,   act.TypeName
--FROM 
--    Airports AS a
--    LEFT JOIN FlightDestinations AS fd ON fd.AirportId = a.Id
--    LEFT JOIN Aircraft AS ac ON ac.Id = fd.AircraftId
--    LEFT JOIN AircraftTypes AS act ON act.Id = ac.TypeId
--    LEFT JOIN Passengers AS p ON p.Id = fd.PassengerId
--WHERE
--    a.AirportName = 'Sir Seretse Khama International Airport'
--ORDER BY
--    ac.Manufacturer
--,   p.FullName
--;

