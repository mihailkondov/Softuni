/*
	17. Highest Peak and Longest River by Country

For each country, 
find the elevation of the highest peak and the length of the longest river, 
sorted by the highest peak elevation (from highest to lowest), 
then by the longest river length (from longest to smallest), 
then by country name (alphabetically). 

Display NULL when no data is available in some of the columns. 
Limit only the first 5 rows.

Example
	CountryName		HighestPeakElevation	LongestRiverLength
	China			8848					6300
	India			8848					3180
	Nepal			8848					2948
	Pakistan		8611					3180
	Argentina		6962					4880
*/

SELECT 
	c.CountryName,
	MAX(p.Elevation) AS HighestPeakElevation,
	MAX(r.Length) AS LongestRiverLength
FROM
	Countries AS c
LEFT JOIN
	MountainsCountries AS mc ON mc.CountryCode = c.CountryCode
LEFT JOIN
	Mountains AS m ON m.Id = mc.MountainId
LEFT JOIN
	Peaks AS p ON p.MountainId = m.Id
LEFT JOIN
	CountriesRivers AS cr ON c.CountryCode = cr.CountryCode
LEFT JOIN
	Rivers AS r ON r.Id = cr.RiverId

GROUP BY c.CountryName
ORDER BY 
	HighestPeakElevation DESC,
	LongestRiverLength DESC,
	c.CountryName
	