/* 
	2. Longest Magic Wand

Select the size of the longest magic wand. 
Rename the new column appropriately.

Example
	LongestMagicWand
	31

*/
-- USE Gringotts;

SELECT 
	MAX(MagicWandSize) AS LongestMagicWand
FROM
	WizzardDeposits

