/*
	18. Orders Table

You are given a table Orders(Id, ProductName, OrderDate) filled with data. 
Consider that the payment for that  order must be accomplished within 3 days after the order date. 
Also the delivery date is up to 1 month. 
Write a query to show each product's name, order date, pay and deliver due dates.

Original Table:
	Id	ProductName		OrderDate
	1	Butter			2016-09-19 00:00:00.000
	2	Milk			2016-09-30 00:00:00.000
	3	Cheese			2016-09-04 00:00:00.000
	4	Bread			2015-12-20 00:00:00.000
	5	Tomatoes		2015-12-30 00:00:00.000
	…	…				…

Output:
	ProductName		OrderDate					Pay Due						Deliver Due
	Butter			2016-09-19 00:00:00.000		2016-09-22 00:00:00.000		2016-10-19 00:00:00.000
	Milk			2016-09-30 00:00:00.000		2016-10-03 00:00:00.000		2016-10-30 00:00:00.000
	Cheese			2016-09-04 00:00:00.000		2016-09-07 00:00:00.000		2016-10-04 00:00:00.000
	Bread			2015-12-20 00:00:00.000		2015-12-23 00:00:00.000		2016-01-20 00:00:00.000
	Tomatoes		2015-12-30 00:00:00.000		2016-01-02 00:00:00.000		2016-01-30 00:00:00.000
	…				…							…							…
*/

--CREATE TABLE #Orders(
--	Id INTEGER PRIMARY KEY IDENTITY(1,1),
--	ProductName NVARCHAR(100),
--	OrderDate DATETIME
--);
--INSERT INTO #Orders
--	(ProductName,	OrderDate)
--VALUES
--	 ('Butter',		'2016-09-19')
--	,('Milk',		'2016-09-30')
--	,('Cheese',		'2016-09-04')
--	,('Bread',		'2015-12-20')
--	,('Tomatoes',	'2015-12-30')
--;

SELECT 
	  ProductName 
	, OrderDate
	, DATEADD(DAY, 3, OrderDate) AS [Pay Due]
	, DATEADD(MONTH, 1, OrderDate) AS [Deliver Due]
FROM
--	#Orders
	Orders

-- DROP TABLE #Orders;