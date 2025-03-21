/* 
	18. Highest Peak Name and Elevation by Country

For each country, find the name and elevation ofthe highest peak, along with its mountain. 
When no peaks are available in some countries, display elevation 0, "(no highest peak)" as peak name and "(no mountain)" as a mountain name. 
When multiple peaks in some countries have the same elevation, display all of them. 
Sort the results by country name alphabetically, then by highest peak name alphabetically. 
Limit only the first 5 rows.

Example
	Country			Highest Peak Name	Highest Peak Elevation	Mountain
	Afghanistan		(no highest peak)	0						(no mountain)
	…				…					…						…
	Argentina		Aconcagua			6962					Andes
	…				…					…						…
	Bulgaria		Musala				2925					Rila
	Burkina	Faso	(no highest peak)	0						(no mountain)
	…				…					…						…
	United States	Mount McKinley		6194					Alaska Range

*/
--USE Geography;
-- SELECT * FROM Peaks ORDER BY Elevation DESC;

-- Use a Common Table Expression (CTE)
WITH PeakData AS (
    SELECT 
        c.CountryName,
        p.PeakName AS HighestPeakName,
        p.Elevation AS HighestPeakElevation,
		m.MountainRange AS Mountain,
        RANK() OVER (PARTITION BY c.CountryName ORDER BY p.Elevation DESC) AS PeakRank
    FROM 
        Countries AS c
    JOIN 
        MountainsCountries AS mc ON mc.CountryCode = c.CountryCode
    JOIN 
        Mountains AS m ON m.Id = mc.MountainId
    JOIN 
        Peaks AS p ON p.MountainId = m.Id
)
SELECT TOP 5
    c.CountryName,
	CASE
		WHEN pd.HighestPeakName IS NULL THEN '(no highest peak)'
		ELSE pd.HighestPeakName
	END AS HighestPeakName,
	CASE
		WHEN pd.HighestPeakElevation IS NULL THEN 0
		ELSE pd.HighestPeakElevation 
	END AS HighestPeakElevation,
    CASE
		WHEN pd.Mountain IS NULL THEN '(no mountain)' 
		ELSE pd.Mountain
	END
FROM 
    Countries AS c
LEFT JOIN 
    PeakData AS pd ON pd.CountryName = c.CountryName AND pd.PeakRank = 1
ORDER BY 
	c.CountryName,
	pd.HighestPeakName;
