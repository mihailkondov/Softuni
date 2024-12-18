/* 
	13. Count Mountain Ranges

Create a query that selects:
	• CountryCode
	• MountainRanges
Filter the count of the mountain ranges in the United States, Russia and Bulgaria.

Example
	CountryCode MountainRanges
	BG			6
	RU			1
	…			…

*/
-- USE Geography;

SELECT
	mc.CountryCode,
	COUNT(m.MountainRange)
FROM
	MountainsCountries AS mc
JOIN
	Mountains AS m ON m.Id = mc.MountainId
JOIN
	Countries AS c ON c.CountryCode = mc.CountryCode
WHERE mc.CountryCode IN('BG', 'RU', 'US')
GROUP BY mc.CountryCode;
