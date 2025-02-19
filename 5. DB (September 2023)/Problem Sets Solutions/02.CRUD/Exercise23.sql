/*
	23. Biggest Countries by Population

Find the 30 biggest countries by population, located in Europe. 
Display the "CountryName" and "Population". 
Order the results by population (from biggest to smallest), then by country alphabetically.

Example
	CountryName		Population
	Russia			140702000
	Germany			81802257
	France			64768389
	…				…
*/

-- USE Geography;
SELECT TOP 30
	CountryName, [Population]
FROM 
	Countries
WHERE
	ContinentCode = 'EU'
ORDER BY
	[Population] DESC,
	CountryName;