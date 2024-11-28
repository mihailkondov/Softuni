/*
    3.Update
Kaloqn Stoqnov (a current owner, present in the database) came to the zoo to adopt all the animals, who don't have an owner. 
Update the records by putting to those animals the correct OwnerId.
*/

-- SELECT * FROM Animals WHERE OwnerId IS NULL

UPDATE Animals
SET OwnerId = (SELECT TOP 1 [Id] 
               FROM Owners 
               WHERE [Name] = 'Kaloqn Stoqnov'
              )
WHERE OwnerId IS NULL

-- SELECT * FROM Animals WHERE OwnerId = 4