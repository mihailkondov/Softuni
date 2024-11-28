/*
    7. Owners and Their Animals
Extract the animals for each owner. 
Find the top 5 owners, who have the biggest count of animals. 
Select the owner's name and the count of the animals he owns. 
Order the result by the count of animals owned (descending) and 
then by the owner's name.

Example
    Owner	            CountOfAnimals
    Kaloqn Stoqnov	    4
    Kiril Peshev	    4
    Kamelia Yancheva	3
    Martin Genchev	    3
    Metodi Dimitrov	    3
*/


SELECT TOP 5
    o.[Name] AS [Owner] 
,   COUNT(a.[Name]) AS CountOfAnimals
FROM 
    Animals AS a JOIN
    Owners AS o ON o.Id = a.OwnerId
GROUP BY    
    o.[Name]
ORDER BY 
    CountOfAnimals DESC