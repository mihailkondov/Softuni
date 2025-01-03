/* 
	3. Longest Magic Wand Per Deposit Groups

For wizards in each deposit group show the longest magic wand. 
Rename the new column appropriately.

Example
	DepositGroup	LongestMagicWand
	Blue Phoenix	31
	…				…
*/
-- USE Gringotts;

SELECT 
	DepositGroup,
	MAX(MagicWandSize) AS LongestMagicWand
FROM 
	WizzardDeposits
GROUP BY
	DepositGroup