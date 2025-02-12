/*
	14. Games from 2011 and 2012 Year

Find and display the top 50 games 
whose start date is from 2011 and 2012 year. 
Order them by start date, then by name of the game. 
The start date should be in the following format: "yyyy-MM-dd".

Example
	Name			Start
	Rose Royalty	2011-01-05
	London			2011-01-13
	Broadway		2011-01-16
	…				…
*/
-- USE Diablo;
SELECT TOP(50) 
	Name, CONVERT(VARCHAR, Start, 23) AS Start 
FROM 
	Games
WHERE
	DATEPART(YEAR, Start) IN (2011, 2012)
ORDER BY
	Start,
	Name;