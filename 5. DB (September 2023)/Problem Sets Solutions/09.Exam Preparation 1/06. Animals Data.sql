/*
    6.Animals data

Select all animals and their type. Extract name, animal type and birth date (in format 'dd.MM.yyyy'). 
Order the result by animal's name (ascending).

Example
    Name	                    AnimalType	BirthDate
    African Penguin	            Birds	    17.07.2017
    African Spurred Tortoise	Reptiles	26.09.2009
    American Kestrel	        Birds	    27.04.2019
    Anaconda	                Reptiles	13.07.2016
    Axolotl	                    Amphibians	21.01.2019
    Bald Eagle	                Birds	    29.06.2014
    …	                        …	        …
*/

SELECT     
    [Name]
,   AnimalType
,   FORMAT(BirthDate, 'dd.MM.yyyy') AS BirthDate
FROM 
    Animals AS a 
    JOIN AnimalTypes AS t ON a.AnimalTypeId = t.Id
ORDER BY 
    a.[Name];