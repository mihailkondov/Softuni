/*
	4. Smallest Deposit Group Per Magic Wand Size

Select the two deposit groups with the lowest average wand size.

Example
	DepositGroup
	Troll Chest
	Venomous Tongue
*/
 -- USE Gringotts;

 -- This query is simpler, but possibly assumes there are two groups tied at lowest average wand size,
 -- or if there is no tie will get the 2 groups with the lowest average wand size.
SELECT TOP 2
	DepositGroup
FROM
	WizzardDeposits
GROUP BY DepositGroup
ORDER BY AVG(MagicWandSize);

-- This query will find the lowest average wand size value and will return all groups with that value, no matter how many of them are tied:
WITH AvgWandSizePerGroup AS (
	SELECT 
		DepositGroup,
		AVG(MagicWandSize) AS AverageWandSize
	FROM
		WizzardDeposits
	GROUP BY DepositGroup

), RankedGroups AS (
	SELECT
		DepositGroup,
		AverageWandSize,
		RANK() OVER (ORDER BY AverageWandSize) AS rn
	FROM
		AvgWandSizePerGroup
)
SELECT 
	  DepositGroup
	--, rn
FROM 
	RankedGroups
WHERE 
	rn = 1


