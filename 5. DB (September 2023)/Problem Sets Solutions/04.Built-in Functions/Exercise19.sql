/*
	19. People Table

Create a table People(Id, Name, Birthdate). 
Write a query to find age in years, months, days and minutes for each person for the current time of executing the query.

Original Table
	Id	Name	Birthdate
	1	Victor	2000-12-07 00:00:00.000
	2	Steven	1992-09-10 00:00:00.000
	3	Stephen	1910-09-19 00:00:00.000
	4	John	2010-01-06 00:00:00.000
	…	…		…

Example Output
	Name	Age in Years	Age in Months	Age in Days		Age in Minutes
	Victor	16				189				5754			8286787
	Steven	24				288				8764			12621187
	Stephen 106				1272			38706			55737667
	John	6				80				2437			3510307
	…		…				…				…				…
*/

CREATE TABLE #People (
	Id			INTEGER			PRIMARY KEY IDENTITY(1,1),
	Name		NVARCHAR(100),
	Birthdate	DATETIME
);
INSERT INTO #People
	(Name,			Birthdate)
VALUES
	 ('Victor',		'2000-12-07')
	,('Steven',		'1992-09-10')
	,('Stephen',	'1910-09-19')
	,('John',		'2010-01-06')
;
SELECT 
	Name,
	DATEDIFF(YEAR, Birthdate, CURRENT_TIMESTAMP) AS [Age in Years],	
	DATEDIFF(MONTH, Birthdate, CURRENT_TIMESTAMP) AS [Age in Months],
	DATEDIFF(DAY, Birthdate, CURRENT_TIMESTAMP) AS [Age in Days],	
	DATEDIFF(MINUTE, Birthdate, CURRENT_TIMESTAMP) AS [Age in Minutes]
FROM
	#People;

DROP TABLE #People;