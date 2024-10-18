/*
	20. Basic Select All Fields and Order Them

Modify the queries from the previous problem by sorting:
• Towns - alphabetically by name
• Departments - alphabetically by name
• Employees - descending by salary
Submit your query statements as Prepare DB & Run queries.

*/

-- USE SoftUni;
SELECT * FROM Towns ORDER BY Name ASC;
SELECT * FROM Departments ORDER BY Name ASC;
SELECT * FROM Employees ORDER BY Salary DESC;
