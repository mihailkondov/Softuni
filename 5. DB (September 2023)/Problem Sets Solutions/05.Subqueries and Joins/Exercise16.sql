/* 
	16. Countries Without Any Mountains

Create a query that returns the count of all countries, which don’t have a mountain.
	Example
	Count
	231
*/

--USE Geography
SELECT 
	COUNT(c.CountryName) AS Count
FROM
	Countries AS c
LEFT 
	JOIN MountainsCountries AS mc ON mc.CountryCode = c.CountryCode
WHERE
	mc.MountainId IS NULL
