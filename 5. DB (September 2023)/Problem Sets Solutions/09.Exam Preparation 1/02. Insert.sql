/*
    2.Insert

Let's insert some sample data into the database. 
Write a query to add the following records into the corresponding tables. 
All Ids should be auto-generated.

Volunteers
    Name	        PhoneNumber	Address	                AnimalId	DepartmentId
    Anita Kostova	0896365412	Sofia, 5 Rosa str.	    15	        1
    Dimitur Stoev	0877564223	null	                42	        4
    Kalina Evtimova	0896321112	Silistra, 21 Breza str.	9	        7
    Stoyan Tomov	0898564100	Montana, 1 Bor str.	    18	        8
    Boryana Mileva	0888112233	null	                31	        5

Animals
    Name	            BirthDate	OwnerId	    AnimalTypeId
    Giraffe	            2018-09-21	21	        1
    Harpy Eagle	        2015-04-17	15	        3
    Hamadryas Baboon    2017-11-02	null	    1
    Tuatara	            2021-06-30	2	        4

*/

--USE Zoo;

INSERT INTO Animals 
    ([Name],	            BirthDate,	    OwnerId,	AnimalTypeId)
VALUES
    ('Giraffe',	        '2018-09-21',	21,	        1)
,   ('Harpy Eagle',	    '2015-04-17',	15,	        3)
,   ('Hamadryas Baboon','2017-11-02',	null,	    1)
,   ('Tuatara',         '2021-06-30',	2,	        4)
;

INSERT INTO Volunteers 
    ([Name],            PhoneNumber,    [Address],                  AnimalId,   DepartmentId)
VALUES
    ('Anita Kostova',	'0896365412',	'Sofia, 5 Rosa str.',	    15,	        1)
,   ('Dimitur Stoev',	'0877564223',	null,	                    42,	        4)
,   ('Kalina Evtimova',	'0896321112',	'Silistra, 21 Breza str.',	9,	        7)
,   ('Stoyan Tomov',	'0898564100',	'Montana, 1 Bor str.',	    18,         8)
,   ('Boryana Mileva',	'0888112233',	null,	                    31,	        5)
;