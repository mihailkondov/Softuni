/*
	8. Deposit Charge

Create a query that selects:
	• Deposit group 
	• Magic wand creator
	• Minimum deposit charge for each group 

Select the data in ascending order by MagicWandCreator and DepositGroup.

Example
	DepositGroup	MagicWandCreator	MinDepositCharge
	Blue Phoenix	Antioch Peverell	30.00
	…				…					…
*/
-- USE Gringotts;

SELECT
	DepositGroup,
	MagicWandCreator,
	MIN(DepositCharge) AS [MinDepositCharge]
FROM
	WizzardDeposits
GROUP BY 
	MagicWandCreator, DepositGroup