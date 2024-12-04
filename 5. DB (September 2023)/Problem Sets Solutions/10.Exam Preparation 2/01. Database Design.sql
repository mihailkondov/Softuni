/*
    1. Database Design
NOTE: This solution doesn't pass one of the tests in Judge and I can't figure out why, 
but the database it ends up creating works fine for all the other problems from the exam. 

Create a database called Airport. You need to create 7 tables:
	Passengers – contains information about the passenger
        Each passenger has a full name column and an email column.
	Pilots – contains information about the pilot 
	    Each pilot has first and last name columns, an age column, and a rating column.
	AircraftTypes – contains information about the aircraft type
	    Contains the name of the type of aircraft.
	Aircraft – contains information about the aircraft
	    Each aircraft has a manufacturer, a model column, a year column, 
        a flight hours column, a condition  column, and an aircraft type column.
	PilotsAircraft – a many to many mapping tables between the aircraft and the pilots
	    Have composite primary key from the AircraftId column and the PilotId column.
	Airports 
        – contains information about airport name and the country.
	FlightDestinations – contains information about the flight destination
	    Each flight destination has an airport Id column, a start column, an 
        aircraft Id column, a passenger Id column, and a price of the ticket column.

NOTE: 
    Please keep in mind that in case you have to work with a date, 
    you have to use the exact same data type, described in the models tables. 
    For example, data type Date means that you have to use Date, DateTime 
    means that you have to use DateTime. 
    If you don't use the correct type, the Judge system won't accept your submission as correct.

NOTE: 
    Keep in mind that Judge doesn't accept "ALTER" statement and square brackets naming (when the names are not keywords).


You have been tasked to create the tables in the database by the following models:
    
    Passengers
        Column Name	        Data Type	                        Constraints
        Id	                Integer from 0 to 2,147,483,647	    PK, Unique table identification, Identity
        FullName	        String up to 100 symbols	        Unique, NULL is not allowed
        Email	            String up to 50 symbols	            Unique, NULL is not allowed.

    Pilots
        Column Name	        Data Type	                        Constraints
        Id	                Integer from 0 to 2,147,483,647	    PK, Unique table identification, Identity
        FirstName	        String up to 30 symbols	            Unique, NULL is not allowed
        LastName	        String up to 30 symbols	            Unique, NULL is not allowed
        Age	                TinyInt	                            Age should be between 21 and 62 both inclusively, NULL is not allowed
        Rating	            Floating-point number	            Rating should be between 0.0 and 10.0 both inclusively, NULL is allowed.

    AircraftTypes
        Column Name	        Data Type	                        Constraints
        Id	                Integer from 0 to 2,147,483,647	    PK, Unique table identification, Identity
        TypeName	        String up to 30 symbols	            Unique, NULL is not allowed.

    Aircraft
        Column Name	        Data Type	                        Constraints
        Id	                Integer from 0 to 2,147,483,647	    PK, Unique table identification, Identity
        Manufacturer	    String up to 25 symbols	            NULL is not allowed.
        Model	            String up to 30 symbols         	NULL is not allowed.
        Year	            Integer from 0 to 2,147,483,647	    NULL is not allowed.
        FlightHours	        Integer from 0 to 2,147,483,647	    NULL is allowed.
        Condition	        One character.                      A character that shows the condition of the aircraft. 	NULL is not allowed.
        TypeId	            Integer from 0 to 2,147,483,647	    Relationship with table AircraftTypes, NULL is not allowed.

    PilotsAircraft
        Column Name 	    Data Type	                        Constraints
        AircraftId	        Integer from 0 to 2,147,483,647	    PK, Unique table identification, Relationship with table Aircraft,  NULL is not allowed
        PilotId	            Integer from 0 to 2,147,483,647	    PK, Unique table identification, Relationship with table Pilots, NULL is not allowed

    Airports
        Column Name	        Data Type	                        Constraints
        Id	                Integer from 0 to 2,147,483,647	    PK, Unique table identification, Identity
        AirportName	        String up to 70 symbols	            Unique, NULL is not allowed
        Country	            String up to 100 symbols	        Unique, NULL is not allowed

    FlightDestinations
        Column Name	        Data Type	                        Constraints
        Id	                Integer from 0 to 2,147,483,647	    PK, Unique table identification, Identity
        AirportId	        Integer from 0 to 2,147,483,647	    Relationship with table Airports., NULL is not allowed
        Start	            The DateTime when the flight starts	NULL is not allowed
        AircraftId	        Integer from 0 to 2,147,483,647	    Relationship with table Aircraft, NULL is not allowed
        PassengerId	        Integer from 0 to 2,147,483,647	    Relationship with table Passengers, NULL is not allowed
        TicketPrice	        DECIMAL, up to 18 digits, 2 of which after the decimal point.	The DEFAULT value is 15, NULL is not allowed

*/
--CREATE DATABASE Airport
--GO

--USE Airport
--GO

CREATE TABLE Passengers (
    Id          INTEGER                             CONSTRAINT Passengers_PK PRIMARY KEY IDENTITY(1,1)
,   FullName    NVARCHAR(100)   UNIQUE  NOT NULL
,   Email       NVARCHAR(50)    UNIQUE  NOT NULL
);

CREATE TABLE Pilots (
    Id	        INTEGER                             CONSTRAINT Pilots_PK PRIMARY KEY IDENTITY(1,1)
,   FirstName	NVARCHAR(30)    UNIQUE  NOT NULL
,   LastName	NVARCHAR(30)    UNIQUE  NOT NULL 
,   Age	        TINYINT	                NOT NULL    CONSTRAINT chk_age_between_21_and_62 CHECK(Age BETWEEN 21 AND 62)  
,   Rating	    FLOAT                               CONSTRAINT chk_rating_0_to_10 CHECK (Rating BETWEEN 0.0 AND 10.0)
);

CREATE TABLE AircraftTypes (
    Id          INTEGER                             CONSTRAINT Aircraft_Types_PK PRIMARY KEY IDENTITY(1,1)
,   TypeName    NVARCHAR(30)    UNIQUE  NOT NULL
);

CREATE TABLE Aircraft (
    Id          INTEGER                             CONSTRAINT Aircraft_PK PRIMARY KEY IDENTITY(1,1)
,   Manufacturer NVARCHAR(25)           NOT NULL 
,   Model       NVARCHAR(30)            NOT NULL
,   [Year]      INTEGER                 NOT NULL
,   FlightHours INTEGER
,   Condition   CHAR(1)                 NOT NULL
,   TypeId      INTEGER                 NOT NULL    CONSTRAINT Aircraft_FK_AircraftTypes FOREIGN KEY(TypeId) REFERENCES AircraftTypes(Id)
);

CREATE TABLE PilotsAircraft (
    AircraftId  INTEGER         UNIQUE  NOT NULL    CONSTRAINT PilotsAircraft_FK_Aircraft FOREIGN KEY(AircraftId) REFERENCES Aircraft(Id)
,   PilotId     INTEGER         UNIQUE  NOT NULL    CONSTRAINT PilotsAircraft_FK_PilotId FOREIGN KEY(PilotId) REFERENCES Pilots(Id)
,   CONSTRAINT PilotsAircraft_PK PRIMARY KEY (AircraftId, PilotId)
);

CREATE TABLE Airports (
    Id          INTEGER                             CONSTRAINT Airports_PK PRIMARY KEY IDENTITY(1,1)
,   AirportName NVARCHAR(70)    UNIQUE  NOT NULL    
,   Country     NVARCHAR(100)   UNIQUE  NOT NULL
);

CREATE TABLE FlightDestinations (
    Id          INTEGER                             CONSTRAINT FlightDestinations_PK PRIMARY KEY IDENTITY(1,1)
,   AirportId   INTEGER                 NOT NULL    CONSTRAINT FlightDestinations_FK_Airports FOREIGN KEY(AirportId) REFERENCES Airports(Id)
,   [Start]     DATETIME                NOT NULL   
,   AircraftId  INTEGER                 NOT NULL    CONSTRAINT FlightDestinations_FK_Aircraft FOREIGN KEY(AircraftId) REFERENCES Aircraft(Id)
,   PassengerId INTEGER                 NOT NULL    CONSTRAINT FlightDestinations_FK_Passengers FOREIGN KEY(PassengerId) REFERENCES Passengers(Id)
,   TicketPrice DECIMAL(18,2)           NOT NULL    CONSTRAINT default_15 DEFAULT 15 
);

--DROP TABLE Passengers;
--DROP TABLE Pilots;
--DROP TABLE AircraftTypes;
--DROP TABLE Aircraft;
--DROP TABLE PilotsAircraft;
--DROP TABLE Airports;
--DROP TABLE FlightDestinations;

--USE master;
--GO
--DROP DATABASE Airport;