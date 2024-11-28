/*
    -- V1
    Section 1. DDL (30 pts)
    
You have been given the E/R Diagram of the Zoo

Create a database called Zoo. You need to create 7 tables:
•	Owners – contains information about the owners of the animals;
•	AnimalTypes – contains information about the different animal types in the zoo;
•	Cages – contains information about the animal cages;
•	Animals – contains information about the animals;
•	AnimalsCages – a many-to-many mapping table between the animals and the cages;
•	VolunteersDepartments – contains information about the departments of the volunteers;
•	Volunteers – contains information about the volunteers.

NOTE: Please keep in mind that in case you have to work with a date, you have to use the exact same data type, described in the models tables. For example, data type Date means that you have to use Date, DateTime means that you have to use DateTime. If you don't use the correct type, the Judge system won't accept your submission as correct.
NOTE: Keep in mind that Judge doesn't accept "ALTER" statement and square brackets naming (when the names are not keywords).
NOTE: Use VARCHAR for strings, not NVARCHAR.

You have been tasked to create the tables in the database by the following models:

    Owners
        Column Name	    Data Type	                        Constraints
        Id	            Integer from 0 to 2,147,483,647	    PK, Unique table identification, Identity
        Name	        String up to 50 symbols	            Null is not allowed
        PhoneNumber 	String up to 15 symbols	            Null is not allowed
        Address	        String up to 50 symbols	            Null is allowed

    AnimalTypes
        Column Name	    Data Type	                        Constraints
        Id	            Integer from 0 to 2,147,483,647	    PK, Unique table identification, Identity
        AnimalType	    String up to 30 symbols	            Null is not allowed

    Cages
        Column Name	    Data Type	                        Constraints
        Id	            Integer from 0 to 2,147,483,647	    PK, Unique table identification, Identity
        AnimalTypeId	Integer from 0 to 2,147,483,647	    Relationship with table AnimalTypes,  Null is not allowed

    Animals
        Column Name	    Data Type	                        Constraints
        Id	            Integer from 0 to 2,147,483,647	    PK, Unique table identification, Identity
        Name	        String up to 30 symbols	            Null is not allowed
        BirthDate	    Date	                            Null is not allowed
        OwnerId	        Integer from 0 to 2,147,483,647	    Relationship with table Owners,  Null is allowed
        AnimalTypeId	Integer from 0 to 2,147,483,647	    Relationship with table AnimalTypes,  Null is not allowed

    AnimalsCages
        Column Name	    Data Type	                        Constraints
        CageId	        Integer from 0 to 2,147,483,647	    PK, Unique table identification, Relationship with table Cages,  Null is not allowed
        AnimalId	    Integer from 0 to 2,147,483,647 	PK, Unique table identification, Relationship with table Animals, Null is not allowed

    VolunteersDepartments
        Column Name	    Data Type	                        Constraints
        Id	            Integer from 0 to 2,147,483,647	    PK, Unique table identification, Identity
        DepartmentName	String up to 30 symbols	            Null is not allowed

    Volunteers
        Column Name	    Data Type	                        Constraints
        Id	            Integer from 0 to 2,147,483,647	    PK, Unique table identification, Identity
        Name	        String up to 50 symbols	            Null is not allowed
        PhoneNumber	    String up to 15 symbols	            Null is not allowed
        Address	        String up to 50 symbols	            Null is allowed
        AnimalId	    Integer from 0 to 2,147,483,647	    Relationship with table Animals; Null is allowed
        DepartmentId	Integer from 0 to 2,147,483,647	    Relationship with table VolunteersDepartments, Null is not allowed.

*/
--CREATE DATABASE Zoo;
--USE Zoo;


CREATE TABLE Owners (
    Id                  INTEGER     CONSTRAINT Owners_PK PRIMARY KEY IDENTITY(1,1)
,   [Name]              VARCHAR(50) NOT NULL
,   PhoneNumber         VARCHAR(15) NOT NULL
,   [Address]           VARCHAR(50)
);

CREATE TABLE AnimalTypes (
    Id                  INTEGER     CONSTRAINT AnimalTypes_PK PRIMARY KEY IDENTITY(1,1)
,   AnimalType          VARCHAR(30) NOT NULL
);

CREATE TABLE Cages (
    Id                  INTEGER     CONSTRAINT Cages_PK PRIMARY KEY IDENTITY(1,1)
,   AnimalTypeId        INTEGER     NOT NULL
    CONSTRAINT Cages_FK_AnimalTypeId FOREIGN KEY(AnimalTypeId) REFERENCES AnimalTypes(Id)
);

CREATE TABLE Animals (
    Id                  INTEGER     CONSTRAINT Animals_PK PRIMARY KEY IDENTITY(1,1)
,   [Name]              VARCHAR(30) NOT NULL
,   BirthDate           DATE        NOT NULL
,   OwnerId             INTEGER                 CONSTRAINT Animals_FK_Owners_Id FOREIGN KEY(OwnerId) REFERENCES Owners(Id)
,   AnimalTypeId        INTEGER     NOT NULL    CONSTRAINT Animals_FK_AnimalTypes_Id FOREIGN KEY(AnimalTypeId) REFERENCES AnimalTypes(Id)   
);

CREATE TABLE AnimalsCages (
    CageId              INTEGER     UNIQUE      CONSTRAINT AnimalsCages_FK_Cages_Id FOREIGN KEY(CageId) REFERENCES Cages(Id)      
,   AnimalId            INTEGER     UNIQUE      CONSTRAINT AnimalsCages_FK_Animals_Id FOREIGN KEY(AnimalId) REFERENCES Animals(Id)
,   CONSTRAINT AnimalsCages_PK PRIMARY KEY (CageId, AnimalId)
);

CREATE TABLE VolunteersDepartments(
    Id                  INTEGER     CONSTRAINT VolunteersDepartments_PK PRIMARY KEY IDENTITY(1,1)
,   DepartmentName      VARCHAR(30) NOT NULL
);

CREATE TABLE Volunteers(
    Id                  INTEGER                 CONSTRAINT Volunteers_PK PRIMARY KEY IDENTITY(1,1)
,   [Name]              VARCHAR(50) NOT NULL
,   PhoneNumber         VARCHAR(15) NOT NULL
,   [Address]           VARCHAR(50)
,   AnimalId            INTEGER                 CONSTRAINT Volunteers_FK_Animals_Id FOREIGN KEY(AnimalId) REFERENCES Animals(Id)
,   DepartmentId        INTEGER     NOT NULL    CONSTRAINT Volunteers_FK_VolunteersDepartments_Id FOREIGN KEY(DepartmentId) REFERENCES VolunteersDepartments(Id)
);

---- Drop tables in order
--DROP TABLE Volunteers;
--DROP TABLE VolunteersDepartments;
--DROP TABLE AnimalsCages
--DROP TABLE Animals;
--DROP TABLE Cages;
--DROP TABLE AnimalTypes;
--DROP TABLE Owners;

---- Drop database
--DROP DATABASE Zoo;