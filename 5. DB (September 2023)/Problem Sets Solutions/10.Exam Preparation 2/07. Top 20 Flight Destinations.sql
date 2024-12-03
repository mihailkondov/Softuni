/*
    7. Top 20 Flight Destinations

Select top 20  flight destinations, where Start day is an even number. 
Extract DestinationId, Start date, passenger's FullName, AirportName, and TicketPrice. 
Order the result by TicketPrice descending, then by AirportName ascending.

Required columns:
	DestinationId
	Start
	FullName (passenger)
	AirportName
	TicketPrice

Example
    DestinationId	Start	                    FullName	            AirportName	                                                TicketPrice
    95	            2020-07-02 15:27:47.000	    Cullan Dogerty	        Kisangani Bangoka International Airport	                    5048.89
    9	            2020-02-06 22:32:14.000	    Lanita Crockatt	        Providenciales Airport	                                    4100.49
    56	            2021-02-20 21:04:53.000	    Gaye Sillars	        Netaji Subhas Chandra Bose International Airport	        4002.21
    55	            2021-02-28 13:13:55.000	    Zeke Rowston	        Sir Seretse Khama International Airport	                    3700.65
    32	            2020-09-10 01:55:19.000	    Jacquelynn Plackstone	Bujumbura International Airport	                            3690.22
    38	            2020-11-28 17:58:40.000	    Jeralee Tue	            Winnipeg James Armstrong Richardson International Airport	3390.81
    …	            …	                        …	                    …	                                                        …
*/

SELECT TOP 20
    d.Id AS DestinationId
,   d.[Start]
,   p.FullName	            
,   po.AirportName	                                                
,   d.TicketPrice
FROM FlightDestinations AS d
JOIN Airports AS po ON po.Id = d.AirportId
JOIN Passengers AS p ON p.Id = d.PassengerId
WHERE 
    DAY(d.[Start]) % 2 = 0
ORDER BY
    TicketPrice DESC
,   AirportName

--SELECT TOP 5 * FROM Passengers