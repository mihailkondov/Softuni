/*
	Exercises: Indices and Data Aggregation

This document defines the exercise assignments for the "Databases Basics - MSSQL" course @ Software University. 
You can check your solutions in the Judge system.

Mr. Bodrog is a greedy small goblin who is in charge of Gringotts – the biggest wizard bank. His most precious 
possession is a small database of the deposits in the wizard's world. Taking money is his hobby. He wants your money 
as well, but unfortunately, you are not a wizard. The only magic you know is how to work with databases. That's how 
you got access to the precious data. Mr. Bodrog wants you to send him some reports, otherwise he will send a pack of 
hungry werewolves after you. You don't want to confront a pack of hungry werewolves, do you?
Before going on the next task make sure to download the Gringotts database.
*/

-- Part I – Queries for Gringotts Database



/* 
	1. Records' Count

Import the database and send the total count of records from the one and only table to Mr. Bodrog. 
Make sure nothing gets lost.

Example
	Count
	162

*/

-- use the "../00.Scritps to create the databases for the exercises/Gringotts-Database.sql" script to import the Gringotts database

-- USE Gringotts;
SELECT 
	COUNT(Id)
FROM 
	WizzardDeposits;
