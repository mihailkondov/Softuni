/* 
	1. Employee Address

Create a query that selects:
	• EmployeeId
	• JobTitle
	• AddressId
	• AddressText
Return the first 5 rows sorted by AddressId in ascending order.

Example
	EmployeeId	JobTitle				AddressId	AddressText
	142			Production Technician	1			108	Lakeside Court
	30			Human Resources Manager	2			1341 Prospect St
	…			…						…			…
*/

-- USE SoftUni;
SELECT TOP (5)
	EmployeeID, JobTitle, e.AddressID, AddressText
FROM
	Employees AS e
JOIN 
	Addresses AS a ON e.AddressID = a.AddressID
ORDER BY e.AddressID ASC;
