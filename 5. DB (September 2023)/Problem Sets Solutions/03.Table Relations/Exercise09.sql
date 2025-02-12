/*
	9. *Peaks in Rila

Display all peaks for "Rila" mountain. Include:
	• MountainRange
	• PeakName
	• Elevation
Peaks should be sorted by elevation descending.

Example
	MountainRange	PeakName	Elevation
	Rila			Musala		2925
	…				…			… 
*/
-- USE Geography;

SELECT	
	MountainRange, PeakName, Elevation
FROM	
	Peaks AS p
JOIN	
	Mountains AS m ON m.Id = p.MountainId
WHERE	
	MountainRange = 'Rila'
ORDER BY 
	Elevation DESC;
