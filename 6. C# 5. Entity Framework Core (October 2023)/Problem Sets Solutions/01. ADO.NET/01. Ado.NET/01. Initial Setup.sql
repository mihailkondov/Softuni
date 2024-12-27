/*
NOTE: You will need the "MinionsDB.sql" file. The queries for creating the database and the tables, and inserting 
info in those tables, are already written in the file. You can use those queries or you can write your own, as long as 
they follow the objectives of the tasks. You should execute the queries step by step, as described in the
"MinionsDB.sql" file.

    1. Initial Setup 

Write a program that connects to your localhost server. 
Create a new database called MinionsDB where we will keep information about our minions and villains.
For each minion, we should keep information about its name, age and town.
Each town has information about the country, where it is located. Villains have name and evilness factors (super 
good, good, bad, evil, super evil). 
Each minion can serve several villains and each villain can have several minions serving him. Fill all tables with at 
least 5 records each.
In the end, you should have the following tables: 
     Countries
     Towns
     Minions
     EvilnessFactors
     Villains
     MinionsVillains

*/
-- DROP DATABASE MinionsDB

--01. 
USE master;
CREATE DATABASE MinionsDB
GO

--02.  
USE MinionsDB
GO

--03.  
CREATE TABLE Countries (Id INT PRIMARY KEY IDENTITY,Name VARCHAR(50))

CREATE TABLE Towns(Id INT PRIMARY KEY IDENTITY,Name VARCHAR(50), CountryCode INT FOREIGN KEY REFERENCES Countries(Id))

CREATE TABLE Minions(Id INT PRIMARY KEY IDENTITY,Name VARCHAR(30), Age INT, TownId INT FOREIGN KEY REFERENCES Towns(Id))

CREATE TABLE EvilnessFactors(Id INT PRIMARY KEY IDENTITY, Name VARCHAR(50))

CREATE TABLE Villains (Id INT PRIMARY KEY IDENTITY, Name VARCHAR(50), EvilnessFactorId INT FOREIGN KEY REFERENCES EvilnessFactors(Id))

CREATE TABLE MinionsVillains (MinionId INT FOREIGN KEY REFERENCES Minions(Id),VillainId INT FOREIGN KEY REFERENCES Villains(Id),CONSTRAINT PK_MinionsVillains PRIMARY KEY (MinionId, VillainId))

--04
INSERT INTO Countries ([Name]) VALUES ('Bulgaria'),('England'),('Cyprus'),('Germany'),('Norway')

INSERT INTO Towns ([Name], CountryCode) VALUES ('Plovdiv', 1),('Varna', 1),('Burgas', 1),('Sofia', 1),('London', 2),('Southampton', 2),('Bath', 2),('Liverpool', 2),('Berlin', 3),('Frankfurt', 3),('Oslo', 5)

INSERT INTO Minions (Name,Age, TownId) VALUES('Bob', 42, 3),('Kevin', 1, 1),('Bob ', 32, 6),('Simon', 45, 3),('Cathleen', 11, 2),('Carry ', 50, 10),('Becky', 125, 5),('Mars', 21, 1),('Misho', 5, 10),('Zoe', 125, 5),('Json', 21, 1)

INSERT INTO EvilnessFactors (Name) VALUES ('Super good'),('Good'),('Bad'), ('Evil'),('Super evil')

INSERT INTO Villains (Name, EvilnessFactorId) VALUES ('Gru',2),('Victor',1),('Jilly',3),('Miro',4),('Rosen',5),('Dimityr',1),('Dobromir',2)

INSERT INTO MinionsVillains (MinionId, VillainId) VALUES (4,2),(1,1),(5,7),(3,5),(2,7),(11,5),(8,4),(9,7),(7,1),(1,3),(7,3),(5,3),(4,3),(1,2),(2,1)