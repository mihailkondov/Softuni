/*
	2. Addresses with Towns

Write a query that selects:
	• FirstName
	• LastName
	• Town
	• AddressText
Sort them by FirstName in ascending order, then by LastName. 
Select the first 50 employees.

Example
	FirstName	LastName	Town	AddressText
	A.Scott		Wright		Newport Hills 1400 Gate Drive
	Alan		Brewer		Kenmore 8192 Seagull Court
	…			…			…		…
*/

-- USE SoftUni;
SELECT TOP 50
	e.FirstName,
	e.LastName,
	t.Name AS Town,
	a.AddressText
FROM
	Employees AS e
JOIN
	Addresses AS a ON a.AddressID = e.AddressID
JOIN 
	Towns AS t ON t.TownID = a.TownID
ORDER BY 
	e.FirstName,
	e.LastName

--SELECT * FROM Employees
--SELECT * FROM Towns
--SELECT * FROM Addresses
