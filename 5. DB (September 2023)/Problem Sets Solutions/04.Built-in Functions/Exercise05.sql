/*
	5. Find Towns with Name Length

Create a SQL query that finds all town names, which are 5 or 6 symbols long. 
Order the result alphabetically by town name.

Example
	Name
	Berlin
	Duluth
	Duvall
	…
*/
-- USE SoftUni;

SELECT Name FROM Towns
WHERE LEN(Name) IN (5, 6)
ORDER BY Name;