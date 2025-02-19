/*
	12. Countries Holding 'A' 3 or More Times

Find all countries which hold the letter 'A' at least 3 times in their name (case-insensitively). 
Sort the result by ISO code and 
display the "Country Name" and "ISO Code".
Example
	Country Name	ISO Code
	Afghanistan		AFG
	Albania			ALB
	…				…

*/
-- USE Geography;
SELECT 
	CountryName AS [Country Name] 
	, IsoCode AS [ISO Code]
FROM Countries
WHERE LOWER(CountryName) LIKE('%a%a%a%')
ORDER BY [ISO Code]; 
