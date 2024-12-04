/*
    9.	Regular Passengers

Extract all passengers, who have flown in more than one aircraft and have an 'a' as the second letter of their full name. 
Select the full name, the count of aircraft that he/she traveled, and the total sum which was paid.
Order the result by passenger's FullName.

Required columns:
	FullName
	CountOfAircraft
	TotalPaid

Example
    FullName	            CountOfAircraft 	TotalPaid -- If I fix
    Danny Simoneau	        2	                7587.68
    Haven Seaton	        2	                5390.92
    Jacquelynn Plackstone	2	                4398.36
    Kaylee Coushe	        4	                4286.71
    Lanita Crockatt	        2	                4704.12
    Parker McGeorge	        4	                3896.57
    …	                    …	                …
*/
-- USE Airport;

SELECT 
    FullName
,   COUNT(*) as CountOfAircraft
,   SUM(fd.TicketPrice) AS TotalPaid 
FROM 
    Passengers AS p 
    JOIN FlightDestinations AS fd ON fd.PassengerId = p.Id
WHERE 
    SUBSTRING(FullName, 2, 1) = 'a'
GROUP BY 
    FullName
HAVING 
    COUNT(*) > 1
ORDER BY 
    FullName