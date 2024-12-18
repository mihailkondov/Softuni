/*
	15. User Email Providers

Find all users with information about their email providers. 
Display the username and email provider. 
Sort the results by email provider alphabetically, then by username. 

Example
	Username		Email Provider
	Pesho			abv.bg
	monoxidecos		astonrasuna.com
	bashsassafras	balibless
	…				…
*/
-- USE Diablo;
-- SELECT * FROM Users;

SELECT 
	  Username
	, SUBSTRING(Email, CHARINDEX('@', Email) + 1, LEN(Email)) AS [Email Provier]
FROM 
	Users
ORDER BY
	[Email Provier],
	Username
