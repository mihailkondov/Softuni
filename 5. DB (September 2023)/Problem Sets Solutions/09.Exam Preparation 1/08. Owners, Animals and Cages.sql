/*
    08. Owners, Animals and Cages

Extract information about the owners of mammals, the name of their animal and in which cage these animals are. 
Select owner's name and animal's name (in format 'owner-animal'), owner's phone number and the id of the cage. 
Order the result by the name of the owner (ascending) and then by the name of the animal (descending).

Example
    OwnersAnimals	                PhoneNumber	CageId
    Anelia Mihova-Koala	            0897856147	16
    Borislava Kamenova-Fennec Fox	0877477112	21
    Gergana Mancheva-Brown bear	    0897412123	26
    Kaloqn Stoqnov-Leopard	        0878325642	32
    Kaloqn Stoqnov-Elephant	        0878325642	37
    Kamelia Yancheva-Lion	        0876213799	7
    …	                            …	        …
*/

SELECT 
    CONCAT(o.[Name], '-', a.[Name]) AS OwnersAnimals
,   o.PhoneNumber
,   ac.CageId
FROM 
    Owners AS o JOIN
    Animals AS a ON o.Id = a.OwnerId JOIN
    AnimalsCages AS ac ON ac.AnimalId = a.Id
WHERE
    a.AnimalTypeId = (SELECT Id FROM AnimalTypes WHERE AnimalType = 'Mammals')
ORDER BY 
    o.[Name]
,   a.[Name] DESC;

