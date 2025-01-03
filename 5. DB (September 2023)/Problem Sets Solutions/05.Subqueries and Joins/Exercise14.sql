/* 
	14. Countries With or Without Rivers

Create a query that selects:
	• CountryName
	• RiverName
Find the first 5 countries with or without rivers in Africa. 
Sort them by CountryName in ascending order.

Example
	CountryName		RiverName
	Algeria			Niger
	Angola			Congo
	Benin			Niger
	Botswana		NULL
	Burkina Faso	Niger
*/

SELECT TOP 5
	c.CountryName,
	r.RiverName
FROM
	Countries AS c
LEFT JOIN
	CountriesRivers AS cr ON cr.CountryCode = c.CountryCode
LEFT JOIN
	Rivers AS r ON r.Id = cr.RiverId
JOIN
	Continents AS cont ON cont.ContinentCode = c.ContinentCode
WHERE ContinentName = 'Africa'
ORDER BY c.CountryName;

--SELECT [name] AS Countries FROM sys.columns WHERE object_id = OBJECT_ID('Countries');
--SELECT [name] AS Rivers FROM sys.columns WHERE object_id = OBJECT_ID('Rivers');