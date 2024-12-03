/*
    8. Number of Flights for Each Aircraft

Extract information about all the Aircraft and the count of their FlightDestinations. 
Display average ticket price (AvgPrice) of each flight destination by the Aircraft, rounded to the second digit. 
Take only the aircraft with at least 2  FlightDestinations. 
Order the results by count of flight destinations descending, then by the aircraft's id ascending. 

Required columns:
	AircraftId
	Manufacturer
	FlightHours
	FlightDestinationsCount
	AvgPrice

Example
    AircraftId	Manufacturer	    FlightHours	FlightDestinationsCount	AvgPrice
    13	        Safran	            849	        4	                    3208.200000
    80	        Lockheed Martin	    714	        4	                    1743.140000
    1	        Safran	            559	        3	                    1347.710000
    8	        Safran	            527	        3	                    1366.200000
    25	        Northrop Grumman	414	        3	                    452.960000
    37	        GE Aviation	        4	        3	                    896.950000
    …	        …	                …	        …	                    …
*/

SELECT 
    a.Id AS AircraftId
,   a.Manufacturer
,   a.FlightHours
,   COUNT(*) AS FlightDestinationsCount
,   ROUND(AVG(fd.TicketPrice), 2) AS AvgPrice
FROM
    Aircraft AS a
    JOIN FlightDestinations AS fd ON fd.AircraftId = a.Id
GROUP BY 
    a.Id, a.Manufacturer, a.FlightHours
HAVING 
    COUNT(*) > 1
ORDER BY 
    FlightDestinationsCount DESC
,   AircraftId