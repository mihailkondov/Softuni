/*
	13. Mix of Peak and River Names

Combine all peak names with all river names, so that the last letterof each peak name is the same as the first letter 
of its corresponding river name. 
Display the peak names, river names and the obtained mix (mix should be in lowercase). 
Sort the results by the obtained mix.

Example
	PeakName		RiverName	Mix
	Aconcagua		Amazon		aconcaguamazon
	Aconcagua		Amur		aconcaguamur
	Banski Suhodol	Lena		banski suhodolena
	…				…			…

*/
--USE Geography;
--SELECT * FROM Peaks;
--SELECT * FROM Rivers;

SELECT 
	  PeakName
	, RiverName 
	, LOWER(CONCAT(p.PeakName, SUBSTRING(r.RiverName,2, LEN(r.RiverName) - 1))) AS Mix
FROM Peaks AS p
CROSS JOIN Rivers AS r 
WHERE 
	SUBSTRING(PeakName, LEN(PeakName), LEN(PeakName)) = SUBSTRING(RiverName, 1, 1)
ORDER BY Mix;