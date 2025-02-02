/*
	7. Find Towns Not Starting With

Create a SQL query that finds all towns, which do not start with 'R', 'B' or 'D'. 
Order the result alphabetically by name.

Example
	TownID	Name
	2		Calgary
	23		Cambridge
	15		Carnation
	…		…

*/
--USE SoftUni;

SELECT TownID, Name 
FROM Towns
WHERE SUBSTRING(Name, 1, 1) NOT IN ('R', 'B', 'D')
ORDER BY Name;