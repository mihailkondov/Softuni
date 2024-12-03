/*
    6.	Pilots and Aircraft

Select pilots and aircraft that they operate. 
Extract the pilot's First, Last names, aircraft's Manufacturer, Model, and FlightHours. 
Skip all planes with NULLs and up to 304 FlightHours. 
Order the result by the FlightHours in descending order, then by the pilot's FirstName alphabetically. 

Required columns:
•	FirstName
•	LastName
•	Manufacturer
•	Model
•	FlightHours

Example
    FirstName   LastName	Manufacturer	Model	    FlightHours
    Genna	    Jaquet	    Safran	        SaM146	    303
    Jaynell	    Kidson	    Safran	        SaM146	    303
    Lexie	    Salasar	    Safran	        SaM146	    303
    Roddie	    Gribben	    Safran	        SaM146	    303
    Delaney	    Stove	    GE Aviation	    CT10	    275
    Crosby	    Godlee	    Lockheed Martin F-22 Raptor	271
    …	        …	        …	            …	        …
*/

SELECT 
    p.FirstName
,   p.LastName
,   a.Manufacturer
,   a.Model
,   a.FlightHours
FROM
    Aircraft AS a JOIN
    PilotsAircraft AS pa ON pa.AircraftId = a.Id JOIN
    Pilots AS p ON p.Id = pa.PilotId
WHERE
    a.FlightHours < 304
ORDER BY
    a.FlightHours DESC
,   p.FirstName 