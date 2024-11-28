/*
    10. Animals for Adoption

Extract all animals, who don't have an owner and are younger than 5 years (5 years from '01/01/2022'), 
except for the Birds. 
Select their name, year of birth and animal type. 
Order the result by animal's name.

Example
    Name	                BirthYear	AnimalType
    Banded Archer Fish	    2022	    Fish
    Chameleon	            2018	    Reptiles
    Desert Hairy Scorpion	2020	    Invertebrates
    Goliath Frog	        2020	    Amphibians
    Koi	                    2021	    Fish
    Poison Frog	            2020	    Amphibians
*/

SELECT 
    a.[Name]
,   YEAR(a.BirthDate) AS BirthYear
,   t.AnimalType
FROM 
    Animals AS a
    JOIN AnimalTypes AS t ON a.AnimalTypeId = t.Id
WHERE 
    t.AnimalType <> 'Birds'
    AND YEAR(a.BirthDate) > 2022 - 5
    AND a.OwnerId IS NULL
ORDER BY 
    a.[Name]