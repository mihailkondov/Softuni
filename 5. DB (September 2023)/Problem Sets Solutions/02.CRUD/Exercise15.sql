/*
	15. Sort Employees Table

Create a SQL query that sorts all the records in the Employees table by the following criteria:
	• By salary in decreasing order
	• Then by the first name alphabetically
	• Then by the last name descending
	• Then by middle name alphabetically

Example
ID    'First Name'   Last Name   'Middle Name'    'Job Title'                   'Dept ID'   'Mngr ID'   'Hire Date'  'Salary'     'AddressID'
109   Ken            Sanchez      J               Chief Executive Officer       16          NULL        …            125500.00    177
148   James          Hamilton     R               Vice President of Production  7           109         …            84100.00     158
273   Brian          Welcker      S               Vice President of Sales       3           109         …            72100.00     134
...   ...            ...          ...             ...                           ...         ...         ...          ...          ...
*/
-- USE SoftUni;

SELECT 
	* 
FROM 
	Employees 
ORDER BY
	Salary DESC,
	FirstName,
	LastName DESC,
	MiddleName;