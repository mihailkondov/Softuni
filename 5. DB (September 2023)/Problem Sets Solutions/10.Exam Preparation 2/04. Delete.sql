/*
    4.	Delete

Delete every passenger whose FullName is up to 10 characters (inclusive) long.

*/

DELETE 
    Passengers 
WHERE 
    LEN(FullName) <= 10
