/*
    2. Insert

Write a query to insert data into the Passengers table, based on the Pilots table. 
For all Pilots with an id between 5 and 15 (both inclusive), 
insert data in the Passengers table with the following values:
•	FullName  –  get the first and last name of the pilot separated by a single space
    	Example – 'Lois Leidle'
•	Email – set it to start with full name with no space and add '@gmail.com' - 'FullName@gmail.com'
    	 Example – 'LoisLeidle@gmail.com'
*/

--USE Airport

--SELECT * FROM Passengers
--SELECT * FROM Pilots

INSERT INTO Passengers 
    (FullName, Email)
SELECT 
    FirstName + ' ' + LastName AS FullName
,   FirstName + LastName + '@gmail.com' AS Email        
FROM Pilots
WHERE Id BETWEEN 5 AND 15

