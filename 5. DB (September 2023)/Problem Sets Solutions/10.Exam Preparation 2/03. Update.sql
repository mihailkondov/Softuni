/*
    3.	Update

Update all Aircraft, which:
•	Have a condition of 'C' or 'B' 
•	Have FlightHours Null or up to 100 (inclusive)
•	Have Year after 2013 (inclusive)
By setting their condition to 'A'.
*/

UPDATE Aircraft
SET 
    Condition = 'A'
WHERE
    Condition IN ('C', 'B')
    AND (FlightHours IS NULL OR FlightHours <= 100) -- The brackets here are very important
    AND [Year] >= 2013
