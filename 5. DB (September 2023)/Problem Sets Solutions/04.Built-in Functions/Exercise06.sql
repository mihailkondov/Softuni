/*
	6. Find Towns Starting With

Create a SQL query that finds all towns with names starting with 'M', 'K', 'B' or 'E'. 
Order the result alphabetically by town name.

Example
	TownID	Name
	5		Bellevue
	31		Berlin
	30		Bordeaux
	…		…
*/
-- USE SoftUni;

SELECT TownID, Name
FROM Towns
WHERE SUBSTRING(Name, 1,1) IN ('M', 'K', 'B', 'E')
ORDER BY Name;