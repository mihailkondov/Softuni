/*
    10. Full Info for Flight Destinations

Extract information about all flight destinations which Start between hours: 
6:00 and 20:00 (both inclusive) and have ticket prices higher than 2500. 
Select the airport's name, time of the day,  price of the ticket, passenger's full name, aircraft manufacturer, and aircraft model. 
Order the result by aircraft model ascending.

Required columns:
	AirportName 
	DayTime
	TicketPrice
	FullName (passenger)
	Manufacturer
	Model

Example
    AirportName	                                                DayTime	                    TicketPrice	    FullName	    Manufacturer	        Model
    N'Djamena International Airport	                            2020-09-12 18:14:55.000	    3096.19	        Owen Strivens	Boeing	                737
    Hosea Kutako International Airport	                        2020-08-02 15:43:34.000	    3010.46	        Courtnay Devoy	Boeing      	        787
    Winnipeg James Armstrong Richardson International Airport	2020-11-28 17:58:40.000	    3390.81	        Jeralee Tue	    Airbus	                A330
    Monastir Habib Bourguiba International Airport	            2020-08-23 14:33:46.000	    4807.43	        Danny Simoneau	Northrop Grumman	    B-21 Raider
    Modibo Keita International Airport	                        2021-02-04 14:38:44.000	    2930.91	        Abbey Pedrinson	Rolls-Royce Holdings	EJ200
    King Mswati III International Airport	                    2020-06-13 10:53:40.000	    3190.57	        Juane Gorrynsen	Lockheed Martin	        F-117 Nighthawk
    …	                                                        …	                        …	            …	            …	                    …

*/

SELECT 
    a.AirportName
,   fd.[Start] AS DayTime
,   fd.TicketPrice
,   p.FullName
,   ac.Manufacturer
,   ac.Model
FROM 
    FlightDestinations AS fd
    JOIN Passengers AS p ON p.Id = fd.PassengerId
    JOIN Airports AS a ON a.Id = fd.AirportId
    JOIN Aircraft AS ac ON ac.Id = fd.AircraftId
WHERE 
    CAST(fd.[Start] AS TIME) BETWEEN '06:00:00' AND '20:00:00'
    AND fd.TicketPrice > 2500
ORDER BY 
    ac.Model ASC