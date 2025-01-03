/* 
	15. *Continents and Currencies

Create a query that selects:
	• ContinentCode
	• CurrencyCode
	• CurrencyUsage
Find all continents and their most used currency. 
Filter any currency, which is used in only one country. 
Sort your results by ContinentCode.

Example
	ContinentCode	CurrencyCode	CurrencyUsage
	AF				XOF				8
	AS				AUD				2
	AS				ILS				2
	EU				EUR				26
	NA				XCD				8
	OC				USD				8

*/

SELECT 
	t.Continent,
	MAX(COUNT(t.CurrencyCode))
FROM (SELECT
		CurrencyCode,
		MAX(ContinentCode) AS Continent,
		COUNT(CountryName) AS NumberOfUsers
	FROM
		Countries
	GROUP BY CurrencyCode) AS t	
GROUP BY Continent



--SELECT [name] AS Continents FROM sys.columns WHERE object_id = OBJECT_ID('Continents');
--SELECT [name] AS Countries FROM sys.columns WHERE object_id = OBJECT_ID('Countries');
MAX(COUNT(ctry.CurrencyCode)) AS CurrencyUsage