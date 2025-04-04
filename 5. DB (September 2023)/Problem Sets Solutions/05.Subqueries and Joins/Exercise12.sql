/* 
	12. Highest Peaks in Bulgaria

Create a query that selects:
	• CountryCode
	• MountainRange
	• PeakName
	• Elevation
Filter all the peaks in Bulgaria, which have elevation over 2835. 
Return all the rows, sorted by elevation in descending order.

Example
	CountryCode		MountainRange	PeakName	Elevation
	BG				Rila			Musala		2925
	BG				Pirin			Vihren		2914
	…				…				…			…
*/
-- USE Geography;

SELECT
	  c.CountryCode
	, m.MountainRange
	, p.PeakName
	, p.Elevation
FROM 
	Countries AS c
JOIN
	MountainsCountries AS mc ON mc.CountryCode = c.CountryCode
JOIN
	Mountains AS m ON m.Id = mc.MountainId
JOIN 
	Peaks AS p ON p.MountainId = m.Id
WHERE
	c.CountryName = 'Bulgaria' AND
	p.Elevation > 2835
ORDER BY
	p.Elevation DESC;