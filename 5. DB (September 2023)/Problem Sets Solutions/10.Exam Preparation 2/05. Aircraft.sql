/*
    5.Aircraft

Extract information about all the Aircraft. 
Order the results by aircraft's FlightHours descending.

Required columns:
•	Manufacturer
•	Model
•	FlightHours
•	Condition

Example
    Manufacturer	        Model	        FlightHours	    Condition
    Northrop Grumman	    Bat	            149039	        C
    Airbus	                A330	        999	            B
    Rolls-Royce Holdings	Trent 900	    958	            B
    GE Aviation	            CF6	            936	            C
    Boeing	                BBJ	            925	            C
    Northrop Grumman	    X-47A Pegasus   906	            B
    …	                    …	            …	            …
*/

SELECT 
    Manufacturer
,   Model
,   FlightHours
,   Condition
FROM
    Aircraft
ORDER BY
    FlightHours DESC