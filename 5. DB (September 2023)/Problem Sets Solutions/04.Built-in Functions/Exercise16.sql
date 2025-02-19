/*
	16. Get Users with IP Address Like Pattern

Find all users with their IP addresses, 
sorted by username alphabetically. 
Display only the rows which IP address matches the pattern: "***.1^.^.***".

Legend: 
* - one symbol
^ - one or more symbols

Example
	Username			IP Address
	bindbawdy			192.157.20.222
	evolvingimportant	223.175.227.173
	inguinalself		255.111.250.207
	…					…
*/
--USE Diablo;
SELECT 
	  Username
	, IpAddress
FROM 
	Users
WHERE 
	IpAddress LIKE '___.1%.%.___'
ORDER BY 
	Username;

/*  
Essentialy when pattern matching, 
* in SQL becomes _ 
and
^ in SQL becomes % 
*/

