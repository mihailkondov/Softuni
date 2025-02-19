/*
	8. Geography Design

Create an E/R Diagram of the Geography Database.*/


/*
--Solution:
		__MountainsCountries__				__Countries__				__Currencies__
+-----o	MountainId				+---+----->	CountryCode			+----->	CurrencyCode
|		CountryCode		  o-----+	|		IsoCode				|		Description
|									|		CountryName			|
|		__Mountains__				|		CurrencyCode  o-----+		__Continents__
+----->	Id				  o-----+	|		ContinentCode o-----------> ContinentCode
		MountainRange			|	|		Population			 		ContinentName
								|	|		AreaInSqKm			 
		__Peaks__				|	|		Capital						__Rivers__
		Id						|	|							+----->	Id
		PeakName				|	|		__CountiresRivers__	|		RiverName
		Elevation				|	|		RiverId		  o-----+		Length
		MountainId		  <-----+	+----->	CountryCode					DrainageArea
																		AverageDischarge
																		Outflow
*/									
