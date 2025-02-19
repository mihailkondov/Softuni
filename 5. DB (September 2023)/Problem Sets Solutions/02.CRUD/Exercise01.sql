/*
	1. Examine the Databases

Download and get familiar with the SoftUni, Diablo and Geography database schemas and tables. 
You will use them in the current and the following exercises to write queries.
-- I combined the three scripts to create the 3 separate databases for the whole problem set:
	SoftUni
	Diablo
	Geography
*/


-------------------------------------------------------------------
-- This script will create a sample database "SoftUni" in        --
-- MS SQL Server and will populate sample data in its tables.    --
-------------------------------------------------------------------

USE master
GO

CREATE DATABASE SoftUni
GO

USE SoftUni
GO

CREATE TABLE Towns(
  TownID int IDENTITY NOT NULL,
  Name VARCHAR(50) NOT NULL,
  CONSTRAINT PK_Towns PRIMARY KEY CLUSTERED(TownID ASC)
)
GO

SET IDENTITY_INSERT Towns ON

INSERT INTO Towns (TownID, Name)
VALUES (1, 'Redmond')

INSERT INTO Towns (TownID, Name)
VALUES (2, 'Calgary')

INSERT INTO Towns (TownID, Name)
VALUES (3, 'Edmonds')

INSERT INTO Towns (TownID, Name)
VALUES (4, 'Seattle')

INSERT INTO Towns (TownID, Name)
VALUES (5, 'Bellevue')

INSERT INTO Towns (TownID, Name)
VALUES (6, 'Issaquah')

INSERT INTO Towns (TownID, Name)
VALUES (7, 'Everett')

INSERT INTO Towns (TownID, Name)
VALUES (8, 'Bothell')

INSERT INTO Towns (TownID, Name)
VALUES (9, 'San Francisco')

INSERT INTO Towns (TownID, Name)
VALUES (10, 'Index')

INSERT INTO Towns (TownID, Name)
VALUES (11, 'Snohomish')

INSERT INTO Towns (TownID, Name)
VALUES (12, 'Monroe')

INSERT INTO Towns (TownID, Name)
VALUES (13, 'Renton')

INSERT INTO Towns (TownID, Name)
VALUES (14, 'Newport Hills')

INSERT INTO Towns (TownID, Name)
VALUES (15, 'Carnation')

INSERT INTO Towns (TownID, Name)
VALUES (16, 'Sammamish')

INSERT INTO Towns (TownID, Name)
VALUES (17, 'Duvall')

INSERT INTO Towns (TownID, Name)
VALUES (18, 'Gold Bar')

INSERT INTO Towns (TownID, Name)
VALUES (19, 'Nevada')

INSERT INTO Towns (TownID, Name)
VALUES (20, 'Kenmore')

INSERT INTO Towns (TownID, Name)
VALUES (21, 'Melbourne')

INSERT INTO Towns (TownID, Name)
VALUES (22, 'Kent')

INSERT INTO Towns (TownID, Name)
VALUES (23, 'Cambridge')

INSERT INTO Towns (TownID, Name)
VALUES (24, 'Minneapolis')

INSERT INTO Towns (TownID, Name)
VALUES (25, 'Portland')

INSERT INTO Towns (TownID, Name)
VALUES (26, 'Duluth')

INSERT INTO Towns (TownID, Name)
VALUES (27, 'Detroit')

INSERT INTO Towns (TownID, Name)
VALUES (28, 'Memphis')

INSERT INTO Towns (TownID, Name)
VALUES (29, 'Ottawa')

INSERT INTO Towns (TownID, Name)
VALUES (30, 'Bordeaux')

INSERT INTO Towns (TownID, Name)
VALUES (31, 'Berlin')

INSERT INTO Towns (TownID, Name)
VALUES (32, 'Sofia')

SET IDENTITY_INSERT Towns OFF

GO

CREATE TABLE Addresses(
  AddressID int IDENTITY NOT NULL,
  AddressText VARCHAR(100) NOT NULL,
  TownID int NULL,
  CONSTRAINT PK_Addresses PRIMARY KEY CLUSTERED (AddressID ASC)
)
GO

SET IDENTITY_INSERT Addresses ON

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (1, '108 Lakeside Court', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (2, '1343 Prospect St', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (3, '1648 Eastgate Lane', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (4, '2284 Azalea Avenue', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (5, '2947 Vine Lane', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (6, '3067 Maya', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (7, '3197 Thornhill Place', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (8, '3284 S. Blank Avenue', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (9, '332 Laguna Niguel', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (10, '3454 Bel Air Drive', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (11, '3670 All Ways Drive', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (12, '3708 Montana', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (13, '3711 Rollingwood Dr', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (14, '3919 Pinto Road', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (15, '4311 Clay Rd', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (16, '4777 Rockne Drive', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (17, '5678 Clear Court', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (18, '5863 Sierra', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (19, '6058 Hill Street', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (20, '6118 Grasswood Circle', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (21, '620 Woodside Ct.', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (22, '6307 Greenbelt Way', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (23, '6448 Castle Court', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (24, '6774 Bonanza', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (25, '6968 Wren Ave.', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (26, '7221 Peachwillow Street', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (27, '7270 Pepper Way', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (28, '7396 Stratton Circle', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (29, '7808 Brown St.', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (30, '7902 Grammercy Lane', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (31, '8668 Via Neruda', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (32, '8684 Military East', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (33, '8751 Norse Drive', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (34, '9320 Teakwood Dr.', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (35, '9435 Breck Court', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (36, '9745 Bonita Ct.', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (37, 'Pascalstr 951', 31)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (38, '94, rue Descartes', 30)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (39, '1226 Shoe St.', 8)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (40, '1399 Firestone Drive', 8)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (41, '1902 Santa Cruz', 8)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (42, '1970 Napa Ct.', 8)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (43, '250 Race Court', 8)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (44, '5672 Hale Dr.', 8)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (45, '5747 Shirley Drive', 8)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (46, '6387 Scenic Avenue', 8)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (47, '6872 Thornwood Dr.', 8)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (48, '7484 Roundtree Drive', 8)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (49, '8157 W. Book', 8)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (50, '9539 Glenside Dr', 8)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (51, '9833 Mt. Dias Blv.', 8)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (52, '10203 Acorn Avenue', 2)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (53, '3997 Via De Luna', 23)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (54, 'Downshire Way', 23)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (55, '1411 Ranch Drive', 15)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (56, '3074 Arbor Drive', 15)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (57, '390 Ridgewood Ct.', 15)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (58, '9666 Northridge Ct.', 15)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (59, '9752 Jeanne Circle', 15)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (60, '8154 Via Mexico', 27)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (61, '80 Sunview Terrace', 26)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (62, '1825 Corte Del Prado', 17)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (63, '2598 La Vista Circle', 17)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (64, '3421 Bouncing Road', 17)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (65, '3977 Central Avenue', 17)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (66, '5086 Nottingham Place', 17)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (67, '5379 Treasure Island Way', 17)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (68, '8209 Green View Court', 17)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (69, '8463 Vista Avenue', 17)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (70, '9693 Mellowood Street', 17)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (71, '991 Vista Verde', 17)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (72, '1061 Buskrik Avenue', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (73, '172 Turning Dr.', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (74, '2038 Encino Drive', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (75, '2046 Las Palmas', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (76, '2059 Clay Rd', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (77, '207 Berry Court', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (78, '2080 Sycamore Drive', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (79, '2466 Clearland Circle', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (80, '2687 Ridge Road', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (81, '2812 Mazatlan', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (82, '3026 Anchor Drive', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (83, '3281 Hillview Dr.', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (84, '3632 Bank Way', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (85, '371 Apple Dr.', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (86, '504 O St.', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (87, '5423 Champion Rd.', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (88, '6057 Hill Street', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (89, '6870 D Bel Air Drive', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (90, '7338 Green St.', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (91, '7511 Cooper Dr.', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (92, '8152 Claudia Dr.', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (93, '8411 Mt. Orange Place', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (94, '9277 Country View Lane', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (95, '9784 Mt Etna Drive', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (96, '9825 Coralie Drive', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (97, '1185 Dallas Drive', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (98, '1362 Somerset Place', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (99, '181 Gaining Drive', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (100, '1962 Cotton Ct.', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (101, '2176 Apollo Way', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (102, '2294 West 39th St.', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (103, '3238 Laguna Circle', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (104, '3385 Crestview Drive', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (105, '3665 Oak Creek Ct.', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (106, '3928 San Francisco', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (107, '475 Santa Maria', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (108, '5242 Marvelle Ln.', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (109, '5452 Corte Gilberto', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (110, '6629 Polson Circle', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (111, '7640 First Ave.', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (112, '7883 Missing Canyon Court', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (113, '8624 Pepper Way', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (114, '9241 St George Dr.', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (115, '213 Stonewood Drive', 18)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (116, '2425 Notre Dame Ave', 18)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (117, '3884 Beauty Street', 18)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (118, '8036 Summit View Dr.', 18)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (119, '9605 Pheasant Circle', 18)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (120, '1245 Clay Road', 10)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (121, '1748 Bird Drive', 10)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (122, '310 Winter Lane', 10)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (123, '3127 El Camino Drive', 10)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (124, '3514 Sunshine', 10)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (125, '1144 Paradise Ct.', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (126, '1921 Ranch Road', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (127, '3333 Madhatter Circle', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (128, '342 San Simeon', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (129, '3848 East 39th Street', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (130, '5256 Chickpea Ct.', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (131, '5979 El Pueblo', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (132, '6580 Poor Ridge Court', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (133, '7435 Ricardo', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (134, '7691 Benedict Ct.', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (135, '7772 Golden Meadow', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (136, '8585 Los Gatos Ct.', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (137, '9314 Icicle Way', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (138, '9530 Vine Lane', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (139, '989 Crown Ct', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (140, '25 95th Ave NE', 20)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (141, '4095 Cooper Dr.', 20)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (142, '4155 Working Drive', 20)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (143, '463 H Stagecoach Rd.', 20)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (144, '5050 Mt. Wilson Way', 20)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (145, '5203 Virginia Lane', 20)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (146, '5458 Gladstone Drive', 20)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (147, '5553 Cash Avenue', 20)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (148, '5669 Ironwood Way', 20)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (149, '6697 Ridge Park Drive', 20)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (150, '7048 Laurel', 20)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (151, '8192 Seagull Court', 20)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (152, '350 Pastel Drive', 22)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (153, '34 Waterloo Road', 21)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (154, '8291 Crossbow Way', 28)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (155, '5678 Lakeview Blvd.', 24)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (156, '1356 Grove Way', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (157, '158 Walnut Ave', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (158, '1792 Belmont Rd.', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (159, '2275 Valley Blvd.', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (160, '3747 W. Landing Avenue', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (161, '3841 Silver Oaks Place', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (162, '4566 La Jolla', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (163, '4734 Sycamore Court', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (164, '5030 Blue Ridge Dr.', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (165, '5734 Ashford Court', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (166, '7726 Driftwood Drive', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (167, '8310 Ridge Circle', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (168, '896 Southdale', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (169, '9652 Los Angeles', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (170, '2487 Riverside Drive', 19)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (171, '1397 Paradise Ct.', 14)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (172, '1400 Gate Drive', 14)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (173, '3030 Blackburn Ct.', 14)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (174, '4350 Minute Dr.', 14)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (175, '8967 Hamilton Ave.', 14)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (176, '9297 Kenston Dr.', 14)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (177, '9687 Shakespeare Drive', 14)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (178, '9100 Sheppard Avenue North', 29)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (179, '636 Vine Hill Way', 25)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (180, '101 Candy Rd.', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (181, '1275 West Street', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (182, '2137 Birchwood Dr', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (183, '2383 Pepper Drive', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (184, '2427 Notre Dame Ave.', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (185, '2482 Buckingham Dr.', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (186, '3066 Wallace Dr.', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (187, '3397 Rancho View Drive', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (188, '3768 Door Way', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (189, '4909 Poco Lane', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (190, '6369 Ellis Street', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (191, '6891 Ham Drive', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (192, '7297 RisingView', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (193, '8000 Crane Court', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (194, '8040 Hill Ct', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (195, '8467 Clifford Court', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (196, '9006 Woodside Way', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (197, '9322 Driving Drive', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (198, '9863 Ridge Place', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (199, '9882 Clay Rde', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (200, '9906 Oak Grove Road', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (201, '1378 String Dr', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (202, '1803 Olive Hill', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (203, '2176 Brown Street', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (204, '2266 Greenwood Circle', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (205, '2598 Breck Court', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (206, '2736 Scramble Rd', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (207, '4312 Cambridge Drive', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (208, '5009 Orange Street', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (209, '5670 Bel Air Dr.', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (210, '5980 Icicle Circle', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (211, '6510 Hacienda Drive', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (212, '6937 E. 42nd Street', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (213, '7165 Brock Lane', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (214, '7559 Worth Ct.', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (215, '7985 Center Street', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (216, '9495 Limewood Place', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (217, '9533 Working Drive', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (218, '177 11th Ave', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (219, '1962 Ferndale Lane', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (220, '2473 Orchard Way', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (221, '4096 San Remo', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (222, '4310 Kenston Dr.', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (223, '4444 Pepper Way', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (224, '4525 Benedict Ct.', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (225, '5263 Etcheverry Dr', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (226, '535 Greendell Pl', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (227, '6871 Thornwood Dr.', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (228, '6951 Harmony Way', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (229, '7086 O St.', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (230, '7145 Matchstick Drive', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (231, '7820 Bird Drive', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (232, '7939 Bayview Court', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (233, '8316 La Salle St.', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (234, '9104 Mt. Sequoia Ct.', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (235, '1234 Seaside Way', 9)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (236, '5725 Glaze Drive', 9)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (237, '1064 Slow Creek Road', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (238, '1102 Ravenwood', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (239, '1220 Bradford Way', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (240, '1349 Steven Way', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (241, '136 Balboa Court', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (242, '137 Mazatlan', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (243, '1398 Yorba Linda', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (244, '1619 Stillman Court', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (245, '2144 San Rafael', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (246, '2354 Frame Ln.', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (247, '2639 Anchor Court', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (248, '3029 Pastime Dr', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (249, '3243 Buckingham Dr.', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (250, '426 San Rafael', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (251, '4598 Manila Avenue', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (252, '4948 West 4th St', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (253, '502 Alexander Pl.', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (254, '5025 Holiday Hills', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (255, '5125 Cotton Ct.', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (256, '5375 Clearland Circle', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (257, '5376 Catanzaro Way', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (258, '5407 Cougar Way', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (259, '5666 Hazelnut Lane', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (260, '5802 Ampersand Drive', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (261, '6498 Mining Rd.', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (262, '6578 Woodhaven Ln.', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (263, '6657 Sand Pointe Lane', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (264, '6843 San Simeon Dr.', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (265, '7126 Ending Ct.', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (266, '7127 Los Gatos Court', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (267, '7166 Brock Lane', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (268, '7403 N. Broadway', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (269, '7439 Laguna Niguel', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (270, '7594 Alexander Pl.', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (271, '7616 Honey Court', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (272, '77 Birchwood', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (273, '7765 Sunsine Drive', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (274, '7842 Ygnacio Valley Road', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (275, '8290 Margaret Ct.', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (276, '8656 Lakespring Place', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (277, '874 Olivera Road', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (278, '931 Corte De Luna', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (279, '9537 Ridgewood Drive', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (280, '9964 North Ridge Drive', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (281, '1285 Greenbrier Street', 11)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (282, '2115 Passing', 11)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (283, '2601 Cambridge Drive', 11)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (284, '3114 Notre Dame Ave.', 11)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (285, '3280 Pheasant Circle', 11)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (286, '4231 Spar Court', 11)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (287, '4852 Chaparral Court', 11)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (288, '5724 Victory Lane', 11)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (289, '591 Merriewood Drive', 11)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (290, '7230 Vine Maple Street', 11)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (291, '163 Nishava Str, ent A, apt. 1', 32)

SET IDENTITY_INSERT Addresses OFF

GO

CREATE TABLE Projects(
  ProjectID int IDENTITY NOT NULL,
  Name VARCHAR(50) NOT NULL,
  Description ntext NULL,
  StartDate smalldatetime NOT NULL,
  EndDate smalldatetime NULL,
  CONSTRAINT PK_Projects PRIMARY KEY CLUSTERED (ProjectID ASC)
)
GO

SET IDENTITY_INSERT Projects ON

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (1, 'Classic Vest', 'Research, design and development of Classic Vest. Light-weight, wind-resistant, packs to fit into a pocket.', '20030601', NULL)

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (2, 'Cycling Cap', 'Research, design and development of Cycling Cap. Traditional style with a flip-up brim; one-size fits all.', '20010601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (3, 'Full-Finger Gloves', 'Research, design and development of Full-Finger Gloves. Synthetic palm, flexible knuckles, breathable mesh upper. Worn by the AWC team riders.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (4, 'Half-Finger Gloves', 'Research, design and development of Half-Finger Gloves. Full padding, improved finger flex, durable palm, adjustable closure.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (5, 'HL Mountain Frame', 'Research, design and development of HL Mountain Frame. Each frame is hand-crafted in our Bothell facility to the optimum diameter and wall-thickness required of a premium mountain frame. The heat-treated welded aluminum frame has a larger diameter tube that absorbs the bumps.', '20010601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (6, 'HL Road Frame', 'Research, design and development of HL Road Frame. Our lightest and best quality aluminum frame made from the newest alloy; it is welded and heat-treated for strength. Our innovative design results in maximum comfort and performance.', '19980502', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (7, 'HL Touring Frame', 'Research, design and development of HL Touring Frame. The HL aluminum frame is custom-shaped for both good looks and strength; it will withstand the most rigorous challenges of daily riding. Men''s version.', '20050516 16:34:00', NULL)

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (8, 'LL Mountain Frame', 'Research, design and development of LL Mountain Frame. Our best value utilizing the same, ground-breaking frame technology as the ML aluminum frame.', '20021120 09:57:00', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (9, 'LL Road Frame', 'Research, design and development of LL Road Frame. The LL Frame provides a safe comfortable ride, while offering superior bump absorption in a value-priced aluminum frame.', '20010601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (10, 'LL Touring Frame', 'Research, design and development of LL Touring Frame. Lightweight butted aluminum frame provides a more upright riding position for a trip around town.  Our ground-breaking design provides optimum comfort.', '20050516 16:34:00', NULL)

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (11, 'Long-Sleeve Logo Jersey', 'Research, design and development of Long-Sleeve Logo Jersey. Unisex long-sleeve AWC logo microfiber cycling jersey', '20010601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (12, 'Men''s Bib-Shorts', 'Research, design and development of Men''s Bib-Shorts. Designed for the AWC team with stay-put straps, moisture-control, chamois padding, and leg grippers.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (19, 'Mountain-100', 'Research, design and development of Mountain-100. Top-of-the-line competition mountain bike. Performance-enhancing options include the innovative HL Frame, super-smooth front suspension, and traction for all terrain.', '20010601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (20, 'Mountain-200', 'Research, design and development of Mountain-200. Serious back-country riding. Perfect for all levels of competition. Uses the same HL Frame as the Mountain-100.', '20020601', '20040311 10:32:00')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (21, 'Mountain-300', 'Research, design and development of Mountain-300. For true trail addicts.  An extremely durable bike that will go anywhere and keep you in control on challenging terrain - without breaking your budget.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (22, 'Mountain-400-W', 'Research, design and development of Mountain-400-W. This bike delivers a high-level of performance on a budget. It is responsive and maneuverable, and offers peace-of-mind when you decide to go off-road.', '20060222', NULL)

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (23, 'Mountain-500', 'Research, design and development of Mountain-500. Suitable for any type of riding, on or off-road. Fits any budget. Smooth-shifting with a comfortable ride.', '20021120 09:57:00', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (24, 'Racing Socks', 'Research, design and development of Racing Socks. Thin, lightweight and durable with cuffs that stay up.', '20051122', NULL)

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (25, 'Road-150', 'Research, design and development of Road-150. This bike is ridden by race winners. Developed with the Adventure Works Cycles professional race team, it has a extremely light heat-treated aluminum frame, and steering that allows precision control.', '20010601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (26, 'Road-250', 'Research, design and development of Road-250. Alluminum-alloy frame provides a light, stiff ride, whether you are racing in the velodrome or on a demanding club ride on country roads.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (27, 'Road-350-W', 'Research, design and development of Road-350-W. Cross-train, race, or just socialize on a sleek, aerodynamic bike designed for a woman.  Advanced seat technology provides comfort all day.', '20030601', NULL)

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (28, 'Road-450', 'Research, design and development of Road-450. A true multi-sport bike that offers streamlined riding and a revolutionary design. Aerodynamic design lets you ride with the pros, and the gearing will conquer hilly roads.', '20010601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (29, 'Road-550-W', 'Research, design and development of Road-550-W. Same technology as all of our Road series bikes, but the frame is sized for a woman.  Perfect all-around bike for road or racing.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (30, 'Road-650', 'Research, design and development of Road-650. Value-priced bike with many features of our top-of-the-line models. Has the same light, stiff frame, and the quick acceleration we''re famous for.', '20010601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (31, 'Road-750', 'Research, design and development of Road-750. Entry level adult bike; offers a comfortable ride cross-country or down the block. Quick-release hubs and rims.', '20021120 09:57:00', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (32, 'Short-Sleeve Classic Jersey', 'Research, design and development of Short-Sleeve Classic Jersey. Short sleeve classic breathable jersey with superior moisture control, front zipper, and 3 back pockets.', '20030601', NULL)

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (33, 'Sport-100', 'Research, design and development of Sport-100. Universal fit, well-vented, lightweight , snap-on visor.', '20010601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (34, 'Touring-1000', 'Research, design and development of Touring-1000. Travel in style and comfort. Designed for maximum comfort and safety. Wide gear range takes on all hills. High-tech aluminum alloy construction provides durability without added weight.', '20021120 09:57:00', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (35, 'Touring-2000', 'Research, design and development of Touring-2000. The plush custom saddle keeps you riding all day,  and there''s plenty of space to add panniers and bike bags to the newly-redesigned carrier.  This bike has stability when fully-loaded.', '20021120 09:57:00', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (36, 'Touring-3000', 'Research, design and development of Touring-3000. All-occasion value bike with our basic comfort and safety features. Offers wider, more stable tires for a ride around town or weekend trip.', '20021120 09:57:00', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (37, 'Women''s Mountain Shorts', 'Research, design and development of Women''s Mountain Shorts. Heavy duty, abrasion-resistant shorts feature seamless, lycra inner shorts with anti-bacterial chamois for comfort.', '20030601', NULL)

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (38, 'Women''s Tights', 'Research, design and development of Women''s Tights. Warm spandex tights for winter riding; seamless chamois construction eliminates pressure points.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (39, 'Mountain-400', 'Research, design and development of Mountain-400. Suitable for any type of off-road trip. Fits any budget.', '20010601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (40, 'Road-550', 'Research, design and development of Road-550. Same technology as all of our Road series bikes.  Perfect all-around bike for road or racing.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (41, 'Road-350', 'Research, design and development of Road-350. Cross-train, race, or just socialize on a sleek, aerodynamic bike.  Advanced seat technology provides comfort all day.', '20021120 09:57:00', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (42, 'LL Mountain Front Wheel', 'Research, design and development of LL Mountain Front Wheel. Replacement mountain wheel for entry-level rider.', '20021120 09:57:00', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (43, 'Touring Rear Wheel', 'Research, design and development of Touring Rear Wheel. Excellent aerodynamic rims guarantee a smooth ride.', '20050516 16:34:00', NULL)

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (44, 'Touring Front Wheel', 'Research, design and development of Touring Front Wheel. Aerodynamic rims for smooth riding.', '20050516 16:34:00', NULL)

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (45, 'ML Mountain Front Wheel', 'Research, design and development of ML Mountain Front Wheel. Replacement mountain wheel for the casual to serious rider.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (46, 'HL Mountain Front Wheel', 'Research, design and development of HL Mountain Front Wheel. High-performance mountain replacement wheel.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (47, 'LL Touring Handlebars', 'Research, design and development of LL Touring Handlebars. Unique shape reduces fatigue for entry level riders.', '20050516 16:34:00', NULL)

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (48, 'HL Touring Handlebars', 'Research, design and development of HL Touring Handlebars. A light yet stiff aluminum bar for long distance riding.', '20050516 16:34:00', NULL)

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (49, 'LL Road Front Wheel', 'Research, design and development of LL Road Front Wheel. Replacement road front wheel for entry-level cyclist.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (50, 'ML Road Front Wheel', 'Research, design and development of ML Road Front Wheel. Sturdy alloy features a quick-release hub.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (51, 'HL Road Front Wheel', 'Research, design and development of HL Road Front Wheel. Strong wheel with double-walled rim.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (52, 'LL Mountain Handlebars', 'Research, design and development of LL Mountain Handlebars. All-purpose bar for on or off-road.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (53, 'Touring Pedal', 'Research, design and development of Touring Pedal. A stable pedal for all-day riding.', '20050516 16:34:00', NULL)

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (54, 'ML Mountain Handlebars', 'Research, design and development of ML Mountain Handlebars. Tough aluminum alloy bars for downhill.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (55, 'HL Mountain Handlebars', 'Research, design and development of HL Mountain Handlebars. Flat bar strong enough for the pro circuit.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (56, 'LL Road Handlebars', 'Research, design and development of LL Road Handlebars. Unique shape provides easier reach to the levers.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (57, 'ML Road Handlebars', 'Research, design and development of ML Road Handlebars. Anatomically shaped aluminum tube bar will suit all riders.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (58, 'HL Road Handlebars', 'Research, design and development of HL Road Handlebars. Designed for racers; high-end anatomically shaped bar from aluminum alloy.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (59, 'LL Headset', 'Research, design and development of LL Headset. Threadless headset provides quality at an economical price.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (60, 'ML Headset', 'Research, design and development of ML Headset. Sealed cartridge keeps dirt out.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (61, 'HL Headset', 'Research, design and development of HL Headset. High-quality 1" threadless headset with a grease port for quick lubrication.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (77, 'ML Road Rear Wheel', 'Research, design and development of ML Road Rear Wheel. Aluminum alloy rim with stainless steel spokes; built for speed.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (78, 'HL Road Rear Wheel', 'Research, design and development of HL Road Rear Wheel. Strong rear wheel with double-walled rim.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (79, 'LL Mountain Seat/Saddle 2', 'Research, design and development of LL Mountain Seat/Saddle 2. Synthetic leather. Features gel for increased comfort.', '20030601', NULL)

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (80, 'ML Mountain Seat/Saddle 2', 'Research, design and development of ML Mountain Seat/Saddle 2. Designed to absorb shock.', '20030601', '20040311 10:32:00')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (104, 'LL Fork', 'Research, design and development of LL Fork. Stout design absorbs shock and offers more precise steering.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (105, 'ML Fork', 'Research, design and development of ML Fork. Composite road fork with an aluminum steerer tube.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (106, 'HL Fork', 'Research, design and development of HL Fork. High-performance carbon road fork with curved legs.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (107, 'Hydration Pack', 'Research, design and development of Hydration Pack. Versatile 70 oz hydration pack offers extra storage, easy-fill access, and a waist belt.', '20030601', NULL)

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (108, 'Taillight', 'Research, design and development of Taillight. Affordable light for safe night riding - uses 3 AAA batteries', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (109, 'Headlights - Dual-Beam', 'Research, design and development of Headlights - Dual-Beam. Rechargeable dual-beam headlight.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (110, 'Headlights - Weatherproof', 'Research, design and development of Headlights - Weatherproof. Rugged weatherproof headlight.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (111, 'Water Bottle', 'Research, design and development of Water Bottle. AWC logo water bottle - holds 30 oz; leak-proof.', '20030601', NULL)

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (112, 'Mountain Bottle Cage', 'Research, design and development of Mountain Bottle Cage. Tough aluminum cage holds bottle securly on tough terrain.', '20030601', NULL)

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (113, 'Road Bottle Cage', 'Research, design and development of Road Bottle Cage. Aluminum cage is lighter than our mountain version; perfect for long distance trips.', '20040221', NULL)

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (114, 'Patch kit', 'Research, design and development of Patch kit. Includes 8 different size patches, glue and sandpaper.', '20030601', NULL)

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (115, 'Cable Lock', 'Research, design and development of Cable Lock. Wraps to fit front and rear tires, carrier and 2 keys included.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (116, 'Minipump', 'Research, design and development of Minipump. Designed for convenience. Fits in your pocket. Aluminum barrel. 160psi rated.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (117, 'Mountain Pump', 'Research, design and development of Mountain Pump. Simple and light-weight. Emergency patches stored in handle.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (118, 'Hitch Rack - 4-Bike', 'Research, design and development of Hitch Rack - 4-Bike. Carries 4 bikes securely; steel construction, fits 2" receiver hitch.', '20030601', NULL)

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (119, 'Bike Wash', 'Research, design and development of Bike Wash. Washes off the toughest road grime; dissolves grease, environmentally safe. 1-liter bottle.', '20050801', NULL)

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (120, 'Touring-Panniers', 'Research, design and development of Touring-Panniers. Durable, water-proof nylon construction with easy access. Large enough for weekend trips.', '20020601', '20030601')

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (121, 'Fender Set - Mountain', 'Research, design and development of Fender Set - Mountain. Clip-on fenders fit most mountain bikes.', '20030601', NULL)

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (122, 'All-Purpose Bike Stand', 'Research, design and development of All-Purpose Bike Stand. Perfect all-purpose bike stand for working on your bike at home. Quick-adjusting clamps and steel construction.', '20050901', NULL)

INSERT INTO Projects (ProjectID, Name, Description, StartDate, EndDate)
VALUES (127, 'Rear Derailleur', 'Research, design and development of Rear Derailleur. Wide-link design.', '20030601', NULL)

GO

SET IDENTITY_INSERT Projects OFF

CREATE TABLE EmployeesProjects(
  EmployeeID int NOT NULL,
  ProjectID int NOT NULL,
  CONSTRAINT PK_EmployeesProjects PRIMARY KEY CLUSTERED (EmployeeID ASC, ProjectID ASC)
)
GO

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (1, 4)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (1, 24)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (1, 38)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (1, 113)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (3, 1)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (3, 21)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (3, 58)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (3, 110)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (4, 25)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (4, 39)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (4, 53)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (4, 105)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (5, 27)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (5, 41)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (5, 55)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (5, 107)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (7, 12)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (7, 32)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (7, 107)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (7, 121)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (8, 2)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (8, 22)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (8, 36)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (8, 111)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (9, 9)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (9, 52)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (9, 104)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (9, 118)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (10, 3)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (10, 23)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (10, 37)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (10, 112)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (11, 10)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (11, 53)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (11, 105)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (11, 119)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (12, 28)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (12, 42)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (12, 56)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (12, 108)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (13, 20)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (13, 34)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (13, 48)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (13, 127)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (14, 19)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (14, 33)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (14, 108)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (14, 122)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (15, 1)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (15, 21)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (15, 35)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (15, 110)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (16, 20)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (16, 34)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (16, 109)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (16, 127)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (17, 20)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (17, 34)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (17, 109)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (17, 127)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (18, 1)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (18, 21)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (18, 35)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (18, 110)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (19, 12)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (19, 32)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (19, 107)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (19, 121)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (20, 19)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (20, 33)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (20, 108)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (20, 122)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (21, 10)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (21, 30)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (21, 105)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (21, 119)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (22, 8)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (22, 28)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (22, 42)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (22, 117)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (23, 9)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (23, 29)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (23, 43)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (23, 118)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (24, 10)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (24, 30)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (24, 44)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (24, 119)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (25, 11)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (25, 31)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (25, 106)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (25, 120)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (26, 5)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (26, 25)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (26, 39)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (26, 114)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (27, 26)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (27, 40)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (27, 115)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (29, 7)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (29, 27)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (29, 41)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (29, 116)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (30, 26)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (30, 78)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (30, 115)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (31, 11)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (31, 31)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (31, 45)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (31, 120)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (32, 12)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (32, 32)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (32, 46)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (32, 121)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (33, 19)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (33, 33)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (33, 47)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (33, 122)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (36, 1)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (36, 21)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (36, 35)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (36, 49)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (37, 2)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (37, 22)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (37, 36)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (37, 50)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (38, 2)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (38, 22)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (38, 36)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (38, 111)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (39, 3)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (39, 23)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (39, 60)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (39, 112)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (40, 4)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (40, 24)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (40, 61)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (40, 113)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (41, 4)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (41, 24)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (41, 38)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (41, 52)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (42, 7)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (42, 27)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (42, 79)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (42, 116)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (43, 26)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (43, 78)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (43, 115)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (44, 9)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (44, 29)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (44, 104)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (44, 118)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (45, 5)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (45, 25)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (45, 77)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (45, 114)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (48, 12)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (48, 55)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (48, 107)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (48, 121)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (49, 8)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (49, 28)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (49, 80)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (49, 117)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (50, 7)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (50, 27)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (50, 79)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (50, 116)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (51, 3)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (51, 23)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (51, 37)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (51, 112)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (52, 49)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (52, 78)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (52, 115)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (53, 7)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (53, 50)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (53, 79)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (53, 116)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (54, 7)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (54, 50)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (54, 79)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (54, 116)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (55, 8)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (55, 28)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (55, 80)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (55, 117)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (56, 9)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (56, 29)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (56, 104)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (56, 118)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (57, 10)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (57, 30)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (57, 105)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (57, 119)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (58, 11)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (58, 31)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (58, 106)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (58, 120)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (60, 8)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (60, 51)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (60, 80)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (60, 117)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (61, 9)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (61, 52)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (61, 104)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (61, 118)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (62, 10)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (62, 53)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (62, 105)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (62, 119)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (63, 11)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (63, 54)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (63, 106)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (63, 120)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (64, 4)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (64, 24)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (64, 38)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (64, 113)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (65, 5)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (65, 48)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (65, 77)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (65, 114)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (66, 1)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (66, 44)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (66, 58)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (66, 110)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (67, 20)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (67, 57)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (67, 109)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (67, 127)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (68, 1)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (68, 21)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (68, 58)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (68, 110)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (69, 2)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (69, 22)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (69, 59)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (69, 111)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (70, 49)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (70, 78)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (70, 115)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (73, 19)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (73, 56)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (73, 108)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (73, 122)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (74, 10)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (74, 30)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (74, 44)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (74, 119)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (75, 11)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (75, 31)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (75, 45)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (75, 120)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (76, 12)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (76, 32)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (76, 46)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (76, 121)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (77, 7)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (77, 27)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (77, 41)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (77, 55)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (78, 19)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (78, 33)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (78, 47)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (78, 122)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (79, 9)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (79, 29)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (79, 43)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (79, 57)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (80, 20)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (80, 34)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (80, 48)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (80, 127)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (81, 1)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (81, 21)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (81, 35)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (81, 49)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (83, 4)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (83, 24)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (83, 38)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (83, 52)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (84, 5)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (84, 25)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (84, 39)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (84, 53)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (86, 9)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (86, 29)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (86, 43)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (86, 57)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (87, 9)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (87, 29)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (87, 43)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (87, 118)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (88, 2)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (88, 22)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (88, 36)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (88, 50)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (89, 3)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (89, 23)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (89, 37)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (89, 51)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (90, 20)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (90, 57)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (90, 109)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (90, 127)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (91, 26)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (91, 40)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (91, 54)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (92, 7)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (92, 27)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (92, 41)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (92, 55)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (93, 8)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (93, 28)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (93, 42)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (93, 56)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (95, 12)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (95, 32)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (95, 46)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (95, 60)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (96, 22)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (96, 36)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (96, 50)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (96, 79)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (97, 21)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (97, 35)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (97, 49)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (97, 78)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (98, 22)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (98, 36)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (98, 50)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (98, 79)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (99, 23)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (99, 37)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (99, 51)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (99, 80)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (100, 24)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (100, 38)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (100, 52)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (100, 104)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (101, 25)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (101, 39)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (101, 53)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (101, 105)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (102, 2)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (102, 45)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (102, 59)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (102, 111)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (103, 5)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (103, 48)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (103, 77)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (103, 114)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (104, 19)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (104, 33)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (104, 47)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (104, 61)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (105, 20)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (105, 34)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (105, 48)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (105, 77)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (107, 11)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (107, 31)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (107, 45)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (107, 59)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (108, 8)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (108, 28)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (108, 42)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (108, 117)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (110, 10)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (110, 30)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (110, 44)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (110, 58)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (111, 26)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (111, 40)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (111, 54)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (112, 1)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (112, 44)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (112, 58)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (112, 110)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (113, 2)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (113, 45)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (113, 59)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (113, 111)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (114, 10)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (114, 30)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (114, 44)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (114, 58)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (115, 3)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (115, 46)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (115, 60)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (115, 112)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (116, 4)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (116, 47)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (116, 61)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (116, 113)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (118, 43)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (118, 57)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (118, 109)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (118, 127)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (120, 42)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (120, 56)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (120, 108)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (120, 122)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (122, 40)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (122, 54)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (122, 106)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (122, 120)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (123, 5)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (123, 25)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (123, 39)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (123, 114)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (124, 37)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (124, 51)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (124, 80)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (124, 117)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (125, 38)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (125, 52)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (125, 104)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (125, 118)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (126, 39)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (126, 53)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (126, 105)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (126, 119)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (127, 19)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (127, 56)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (127, 108)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (127, 122)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (129, 41)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (129, 55)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (129, 107)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (129, 121)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (131, 29)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (131, 43)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (131, 57)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (131, 109)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (132, 21)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (132, 35)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (132, 49)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (132, 78)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (133, 30)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (133, 44)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (133, 58)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (133, 110)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (134, 31)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (134, 45)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (134, 59)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (134, 111)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (135, 7)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (135, 27)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (135, 41)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (135, 116)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (136, 26)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (136, 40)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (136, 54)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (136, 106)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (137, 27)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (137, 41)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (137, 55)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (137, 107)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (138, 28)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (138, 42)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (138, 56)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (138, 108)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (141, 35)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (141, 49)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (141, 78)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (141, 115)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (142, 36)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (142, 50)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (142, 79)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (142, 116)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (143, 26)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (143, 40)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (143, 115)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (144, 32)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (144, 46)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (144, 60)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (144, 112)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (145, 5)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (145, 25)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (145, 39)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (145, 53)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (146, 33)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (146, 47)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (146, 61)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (146, 113)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (147, 34)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (147, 48)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (147, 77)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (147, 114)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (148, 29)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (148, 43)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (148, 57)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (148, 109)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (149, 3)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (149, 46)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (149, 60)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (149, 112)
INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (151, 49)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (151, 78)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (151, 115)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (152, 7)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (152, 50)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (152, 79)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (152, 116)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (153, 8)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (153, 51)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (153, 80)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (153, 117)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (154, 5)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (154, 25)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (154, 77)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (154, 114)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (155, 9)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (155, 52)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (155, 104)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (155, 118)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (156, 10)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (156, 53)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (156, 105)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (156, 119)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (157, 11)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (157, 54)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (157, 106)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (157, 120)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (158, 12)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (158, 32)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (158, 46)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (158, 60)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (159, 11)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (159, 31)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (159, 45)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (159, 120)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (160, 43)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (160, 57)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (160, 109)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (160, 127)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (161, 12)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (161, 55)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (161, 107)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (161, 121)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (162, 1)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (162, 44)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (162, 58)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (162, 110)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (163, 2)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (163, 45)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (163, 59)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (163, 111)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (165, 40)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (165, 54)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (165, 106)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (165, 120)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (167, 3)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (167, 46)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (167, 60)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (167, 112)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (168, 4)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (168, 47)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (168, 61)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (168, 113)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (169, 5)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (169, 48)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (169, 77)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (169, 114)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (170, 19)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (170, 33)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (170, 47)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (170, 61)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (171, 41)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (171, 55)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (171, 107)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (171, 121)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (172, 42)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (172, 56)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (172, 108)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (172, 122)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (173, 12)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (173, 32)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (173, 46)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (173, 121)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (174, 37)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (174, 51)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (174, 80)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (174, 117)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (175, 38)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (175, 52)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (175, 104)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (175, 118)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (176, 4)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (176, 47)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (176, 61)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (176, 113)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (177, 39)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (177, 53)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (177, 105)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (177, 119)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (179, 34)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (179, 48)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (179, 77)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (179, 114)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (180, 35)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (180, 49)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (180, 78)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (180, 115)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (181, 36)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (181, 50)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (181, 79)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (181, 116)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (182, 1)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (182, 21)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (182, 35)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (182, 49)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (183, 26)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (183, 40)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (183, 54)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (183, 106)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (184, 19)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (184, 33)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (184, 47)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (184, 122)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (185, 20)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (185, 34)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (185, 48)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (185, 127)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (186, 32)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (186, 46)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (186, 60)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (186, 112)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (187, 33)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (187, 47)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (187, 61)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (187, 113)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (189, 27)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (189, 41)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (189, 55)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (189, 107)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (190, 28)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (190, 42)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (190, 56)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (190, 108)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (191, 4)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (191, 24)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (191, 61)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (191, 113)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (192, 29)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (192, 43)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (192, 57)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (192, 109)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (193, 30)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (193, 44)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (193, 58)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (193, 110)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (194, 31)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (194, 45)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (194, 59)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (194, 111)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (196, 22)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (196, 36)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (196, 50)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (196, 79)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (197, 2)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (197, 22)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (197, 36)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (197, 50)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (199, 23)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (199, 37)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (199, 51)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (199, 80)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (200, 3)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (200, 23)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (200, 37)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (200, 51)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (202, 12)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (202, 32)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (202, 46)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (202, 60)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (204, 24)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (204, 38)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (204, 52)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (204, 104)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (205, 25)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (205, 39)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (205, 53)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (205, 105)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (206, 20)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (206, 34)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (206, 48)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (206, 77)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (207, 19)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (207, 33)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (207, 47)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (207, 61)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (208, 20)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (208, 34)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (208, 48)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (208, 77)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (209, 21)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (209, 35)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (209, 49)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (209, 78)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (210, 3)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (210, 23)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (210, 37)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (210, 51)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (211, 4)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (211, 24)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (211, 38)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (211, 52)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (212, 8)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (212, 51)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (212, 80)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (212, 117)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (213, 9)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (213, 29)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (213, 43)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (213, 57)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (214, 10)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (214, 30)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (214, 44)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (214, 58)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (215, 11)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (215, 31)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (215, 45)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (215, 59)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (217, 31)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (217, 45)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (217, 59)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (218, 3)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (218, 23)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (218, 60)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (218, 112)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (219, 53)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (220, 26)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (220, 40)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (220, 54)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (221, 7)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (221, 27)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (221, 41)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (221, 55)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (222, 8)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (222, 42)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (222, 56)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (224, 10)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (224, 44)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (224, 119)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (225, 22)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (225, 59)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (225, 111)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (226, 4)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (226, 24)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (226, 38)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (226, 113)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (227, 114)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (228, 26)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (228, 40)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (228, 115)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (229, 7)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (229, 27)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (229, 41)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (229, 116)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (230, 8)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (230, 42)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (230, 117)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (232, 29)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (232, 43)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (232, 118)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (234, 20)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (234, 34)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (234, 109)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (234, 127)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (235, 1)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (235, 21)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (235, 35)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (235, 110)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (236, 22)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (236, 36)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (236, 111)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (237, 3)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (237, 23)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (237, 37)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (237, 112)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (239, 12)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (239, 32)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (239, 107)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (239, 121)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (240, 108)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (240, 122)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (243, 31)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (243, 106)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (243, 120)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (245, 20)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (245, 57)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (245, 109)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (245, 127)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (246, 1)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (246, 21)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (246, 58)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (246, 110)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (247, 22)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (247, 59)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (247, 111)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (248, 3)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (248, 23)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (248, 60)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (248, 112)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (249, 4)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (249, 24)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (249, 61)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (249, 113)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (250, 77)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (250, 114)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (252, 12)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (252, 55)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (252, 107)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (252, 121)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (253, 8)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (253, 42)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (253, 56)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (254, 26)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (254, 78)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (254, 115)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (255, 7)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (255, 27)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (255, 79)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (255, 116)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (256, 8)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (256, 80)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (256, 117)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (257, 29)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (257, 104)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (257, 118)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (258, 10)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (258, 105)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (258, 119)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (262, 56)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (262, 108)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (262, 122)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (263, 24)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (267, 37)

INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
VALUES (267, 80)

GO

CREATE TABLE Departments(
  DepartmentID int IDENTITY NOT NULL,
  Name VARCHAR(50) NOT NULL,
  ManagerID int NOT NULL,
  CONSTRAINT PK_Departments PRIMARY KEY CLUSTERED (DepartmentID ASC)
)
GO

SET IDENTITY_INSERT Departments ON

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (1, 'Engineering', 12)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (2, 'Tool Design', 4)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (3, 'Sales', 273)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (4, 'Marketing', 46)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (5, 'Purchasing', 6)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (6, 'Research and Development', 42)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (7, 'Production', 148)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (8, 'Production Control', 21)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (9, 'Human Resources', 30)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (10, 'Finance', 3)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (11, 'Information Services', 42)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (12, 'Document Control', 90)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (13, 'Quality Assurance', 274)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (14, 'Facilities and Maintenance', 218)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (15, 'Shipping and Receiving', 85)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (16, 'Executive', 109)

SET IDENTITY_INSERT Departments OFF

GO

CREATE TABLE Employees(
  EmployeeID int IDENTITY NOT NULL,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  MiddleName VARCHAR(50) NULL,
  JobTitle VARCHAR(50) NOT NULL,
  DepartmentID int NOT NULL,
  ManagerID int NULL,
  HireDate smalldatetime NOT NULL,
  Salary money NOT NULL,
  AddressID int NULL,
  CONSTRAINT PK_Employees PRIMARY KEY CLUSTERED (EmployeeID ASC)
)
GO

SET IDENTITY_INSERT Employees ON

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (1, 'Guy', 'Gilbert', 'R', 'Production Technician', 7, 16, '19980731', 12500, 166)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (2, 'Kevin', 'Brown', 'F', 'Marketing Assistant', 4, 6, '19990226', 13500, 102)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (3, 'Roberto', 'Tamburello', NULL, 'Engineering Manager', 1, 12, '19991212', 43300, 193)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (4, 'Rob', 'Walters', NULL, 'Senior Tool Designer', 2, 3, '20000105', 29800, 155)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (5, 'Thierry', 'D''Hers', 'B', 'Tool Designer', 2, 263, '20000111', 25000, 40)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (6, 'David', 'Bradley', 'M', 'Marketing Manager', 5, 109, '20000120', 37500, 199)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (7, 'JoLynn', 'Dobney', 'M', 'Production Supervisor', 7, 21, '20000126', 25000, 275)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (8, 'Ruth', 'Ellerbrock', 'Ann', 'Production Technician', 7, 185, '20000206', 13500, 108)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (9, 'Gail', 'Erickson', 'A', 'Design Engineer', 1, 3, '20000206', 32700, 22)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (10, 'Barry', 'Johnson', 'K', 'Production Technician', 7, 185, '20000207', 13500, 285)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (11, 'Jossef', 'Goldberg', 'H', 'Design Engineer', 1, 3, '20000224', 32700, 214)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (12, 'Terri', 'Duffy', 'Lee', 'Vice President of Engineering', 1, 109, '20000303', 63500, 209)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (13, 'Sidney', 'Higa', 'M', 'Production Technician', 7, 185, '20000305', 13500, 73)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (14, 'Taylor', 'Maxwell', 'R', 'Production Supervisor', 7, 21, '20000311', 25000, 82)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (15, 'Jeffrey', 'Ford', 'L', 'Production Technician', 7, 185, '20000323', 13500, 156)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (16, 'Jo', 'Brown', 'A', 'Production Supervisor', 7, 21, '20000330', 25000, 70)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (17, 'Doris', 'Hartwig', 'M', 'Production Technician', 7, 185, '20000411', 13500, 144)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (18, 'John', 'Campbell', 'T', 'Production Supervisor', 7, 21, '20000418', 25000, 245)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (19, 'Diane', 'Glimp', 'R', 'Production Technician', 7, 185, '20000429', 13500, 184)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (20, 'Steven', 'Selikoff', 'T', 'Production Technician', 7, 173, '20010102', 9500, 104)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (21, 'Peter', 'Krebs', 'J', 'Production Control Manager', 8, 148, '20010102', 24500, 11)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (22, 'Stuart', 'Munson', 'V', 'Production Technician', 7, 197, '20010103', 10000, 36)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (23, 'Greg', 'Alderson', 'F', 'Production Technician', 7, 197, '20010103', 10000, 18)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (24, 'David', 'Johnson', '', 'Production Technician', 7, 184, '20010103', 9500, 142)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (25, 'Zheng', 'Mu', 'W', 'Production Supervisor', 7, 21, '20010104', 25000, 278)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (26, 'Ivo', 'Salmre', 'William', 'Production Technician', 7, 108, '20010105', 14000, 165)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (27, 'Paul', 'Komosinski', 'B', 'Production Technician', 7, 87, '20010105', 15000, 32)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (28, 'Ashvini', 'Sharma', 'R', 'Network Administrator', 11, 150, '20010105', 32500, 133)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (29, 'Kendall', 'Keil', 'C', 'Production Technician', 7, 14, '20010106', 11000, 257)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (30, 'Paula', 'Barreto de Mattos', 'M', 'Human Resources Manager', 9, 140, '20010107', 27100, 2)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (31, 'Alejandro', 'McGuel', 'E', 'Production Technician', 7, 210, '20010107', 15000, 274)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (32, 'Garrett', 'Young', 'R', 'Production Technician', 7, 184, '20010108', 9500, 283)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (33, 'Jian Shuo', 'Wang', NULL, 'Production Technician', 7, 135, '20010108', 9500, 160)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (34, 'Susan', 'Eaton', 'W', 'Stocker', 15, 85, '20010108', 9000, 204)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (35, 'Vamsi', 'Kuppa', '', 'Shipping and Receiving Clerk', 15, 85, '20010108', 9500, 51)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (36, 'Alice', 'Ciccu', 'O', 'Production Technician', 7, 38, '20010108', 11000, 284)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (37, 'Simon', 'Rapier', 'D', 'Production Technician', 7, 7, '20010109', 12500, 64)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (38, 'Jinghao', 'Liu', 'K', 'Production Supervisor', 7, 21, '20010109', 25000, 55)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (39, 'Michael', 'Hines', 'T', 'Production Technician', 7, 182, '20010110', 14000, 168)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (40, 'Yvonne', 'McKay', 'S', 'Production Technician', 7, 159, '20010110', 10000, 107)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (41, 'Peng', 'Wu', 'J', 'Quality Assurance Supervisor', 13, 200, '20010110', 21600, 39)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (42, 'Jean', 'Trenary', 'E', 'Information Services Manager', 11, 109, '20010112', 50500, 194)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (43, 'Russell', 'Hunter', NULL, 'Production Technician', 7, 74, '20010113', 11000, 258)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (44, 'A. Scott', 'Wright', NULL, 'Master Scheduler', 8, 148, '20010113', 23600, 172)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (45, 'Fred', 'Northup', 'T', 'Production Technician', 7, 210, '20010113', 15000, 282)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (46, 'Sariya', 'Harnpadoungsataya', 'E', 'Marketing Specialist', 4, 6, '20010113', 14400, 106)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (47, 'Willis', 'Johnson', 'T', 'Recruiter', 9, 30, '20010114', 18300, 99)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (48, 'Jun', 'Cao', 'T', 'Production Technician', 7, 38, '20010115', 11000, 197)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (49, 'Christian', 'Kleinerman', 'E', 'Maintenance Supervisor', 14, 218, '20010115', 20400, 118)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (50, 'Susan', 'Metters', 'A', 'Production Technician', 7, 184, '20010115', 9500, 224)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (51, 'Reuben', 'D''sa', 'H', 'Production Supervisor', 7, 21, '20010116', 25000, 249)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (52, 'Kirk', 'Koenigsbauer', 'J', 'Production Technician', 7, 123, '20010116', 10000, 250)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (53, 'David', 'Ortiz', 'J', 'Production Technician', 7, 18, '20010116', 12500, 267)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (54, 'Tengiz', 'Kharatishvili', '', 'Control Specialist', 12, 90, '20010117', 16800, 129)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (55, 'Hanying', 'Feng', 'P', 'Production Technician', 7, 143, '20010117', 14000, 182)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (56, 'Kevin', 'Liu', 'H', 'Production Technician', 7, 210, '20010118', 15000, 259)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (57, 'Annik', 'Stahl', 'O', 'Production Technician', 7, 16, '20010118', 12500, 262)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (58, 'Suroor', 'Fatima', 'R', 'Production Technician', 7, 38, '20010118', 11000, 86)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (59, 'Deborah', 'Poe', 'E', 'Accounts Receivable Specialist', 10, 139, '20010119', 19000, 103)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (60, 'Jim', 'Scardelis', 'H', 'Production Technician', 7, 74, '20010120', 11000, 88)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (61, 'Carole', 'Poland', 'M', 'Production Technician', 7, 173, '20010120', 9500, 72)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (62, 'George', 'Li', 'Z', 'Production Technician', 7, 184, '20010122', 9500, 58)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (63, 'Gary', 'Yukish', 'W', 'Production Technician', 7, 87, '20010123', 15000, 80)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (64, 'Cristian', 'Petculescu', 'K', 'Production Supervisor', 7, 21, '20010123', 25000, 276)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (65, 'Raymond', 'Sam', 'K', 'Production Technician', 7, 143, '20010124', 14000, 75)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (66, 'Janaina', 'Bueno', 'Barreiro Gambaro', 'Application Specialist', 11, 42, '20010124', 27400, 131)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (67, 'Bob', 'Hohman', '', 'Production Technician', 7, 14, '20010125', 11000, 44)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (68, 'Shammi', 'Mohamed', 'G', 'Production Technician', 7, 210, '20010125', 15000, 4)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (69, 'Linda', 'Moschell', 'K', 'Production Technician', 7, 38, '20010126', 11000, 5)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (70, 'Mindy', 'Martin', 'C', 'Benefits Specialist', 9, 30, '20010126', 16600, 171)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (71, 'Wendy', 'Kahn', 'Beth', 'Finance Manager', 10, 140, '20010126', 43300, 232)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (72, 'Kim', 'Ralls', 'T', 'Stocker', 15, 85, '20010127', 9000, 42)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (73, 'Sandra', 'Reategui Alayo', NULL, 'Production Technician', 7, 135, '20010127', 9500, 255)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (74, 'Kok-Ho', 'Loh', 'T', 'Production Supervisor', 7, 21, '20010128', 25000, 10)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (75, 'Douglas', 'Hite', 'B', 'Production Technician', 7, 159, '20010128', 10000, 57)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (76, 'James', 'Kramer', 'D', 'Production Technician', 7, 7, '20010128', 12500, 162)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (77, 'Sean', 'Alexander', 'P', 'Quality Assurance Technician', 13, 41, '20010129', 10600, 210)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (78, 'Nitin', 'Mirchandani', 'S', 'Production Technician', 7, 182, '20010129', 14000, 231)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (79, 'Diane', 'Margheim', 'L', 'Research and Development Engineer', 6, 158, '20010130', 40900, 111)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (80, 'Rebecca', 'Laszlo', 'A', 'Production Technician', 7, 16, '20010130', 12500, 6)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (81, 'Rajesh', 'Patel', 'M', 'Production Technician', 7, 210, '20010201', 15000, 81)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (82, 'Vidur', 'Luthra', 'X', 'Recruiter', 9, 30, '20010202', 18300, 176)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (83, 'John', 'Evans', 'P', 'Production Technician', 7, 38, '20010202', 11000, 253)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (84, 'Nancy', 'Anderson', 'A', 'Production Technician', 7, 7, '20010203', 12500, 227)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (85, 'Pilar', 'Ackerman', 'G', 'Shipping and Receiving Supervisor', 15, 21, '20010203', 19200, 269)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (86, 'David', 'Yalovsky', 'A', 'Production Technician', 7, 184, '20010203', 9500, 241)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (87, 'David', 'Hamilton', 'P', 'Production Supervisor', 7, 21, '20010204', 25000, 150)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (88, 'Laura', 'Steele', 'C', 'Production Technician', 7, 123, '20010204', 10000, 62)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (89, 'Margie', 'Shoop', 'W', 'Production Technician', 7, 16, '20010205', 12500, 92)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (90, 'Zainal', 'Arifin', 'T', 'Document Control Manager', 12, 200, '20010205', 17800, 128)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (91, 'Lorraine', 'Nay', 'O', 'Production Technician', 7, 210, '20010205', 15000, 94)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (92, 'Fadi', 'Fakhouri', 'K', 'Production Technician', 7, 143, '20010205', 14000, 281)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (93, 'Ryan', 'Cornelsen', 'L', 'Production Technician', 7, 51, '20010206', 15000, 228)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (94, 'Candy', 'Spoon', 'L', 'Accounts Receivable Specialist', 10, 139, '20010207', 19000, 122)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (95, 'Nuan', 'Yu', NULL, 'Production Technician', 7, 74, '20010207', 11000, 12)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (96, 'William', 'Vong', 'S', 'Scheduling Assistant', 8, 44, '20010208', 16000, 35)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (97, 'Bjorn', 'Rettig', 'M', 'Production Technician', 7, 173, '20010208', 9500, 268)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (98, 'Scott', 'Gode', 'R', 'Production Technician', 7, 197, '20010209', 10000, 256)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (99, 'Michael', 'Rothkugel', 'L', 'Production Technician', 7, 87, '20010211', 15000, 93)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (100, 'Lane', 'Sacksteder', 'M', 'Production Technician', 7, 143, '20010212', 14000, 239)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (101, 'Pete', 'Male', 'C', 'Production Technician', 7, 14, '20010212', 11000, 273)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (102, 'Dan', 'Bacon', 'K', 'Application Specialist', 11, 42, '20010212', 27400, 126)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (103, 'David', 'Barber', 'M', 'Assistant to the Chief Financial Officer', 10, 140, '20010213', 13500, 173)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (104, 'Lolan', 'Song', 'B', 'Production Technician', 7, 74, '20010213', 11000, 77)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (105, 'Paula', 'Nartker', 'R', 'Production Technician', 7, 210, '20010213', 15000, 247)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (106, 'Mary', 'Gibson', 'E', 'Marketing Specialist', 4, 6, '20010213', 14400, 110)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (107, 'Mindaugas', 'Krapauskas', 'J', 'Production Technician', 7, 38, '20010214', 11000, 74)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (108, 'Eric', 'Gubbels', NULL, 'Production Supervisor', 7, 21, '20010215', 25000, 85)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (109, 'Ken', 'Sanchez', 'J', 'Chief Executive Officer', 16, NULL, '20010215', 125500, 177)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (110, 'Jason', 'Watters', 'M', 'Production Technician', 7, 135, '20010215', 9500, 21)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (111, 'Mark', 'Harrington', 'L', 'Quality Assurance Technician', 13, 41, '20010216', 10600, 139)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (112, 'Janeth', 'Esteves', 'M', 'Production Technician', 7, 159, '20010216', 10000, 163)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (113, 'Marc', 'Ingle', 'J', 'Production Technician', 7, 184, '20010217', 9500, 230)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (114, 'Gigi', 'Matthew', '', 'Research and Development Engineer', 6, 158, '20010217', 40900, 23)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (115, 'Paul', 'Singh', 'R', 'Production Technician', 7, 108, '20010218', 14000, 16)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (116, 'Frank', 'Lee', 'T', 'Production Technician', 7, 210, '20010218', 15000, 263)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (117, 'Francois', 'Ajenstat', 'P', 'Database Administrator', 11, 42, '20010218', 38500, 127)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (118, 'Diane', 'Tibbott', 'H', 'Production Technician', 7, 14, '20010219', 11000, 140)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (119, 'Jill', 'Williams', 'A', 'Marketing Specialist', 4, 6, '20010219', 14400, 114)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (120, 'Angela', 'Barbariol', 'W', 'Production Technician', 7, 38, '20010221', 11000, 91)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (121, 'Matthias', 'Berndt', 'T', 'Shipping and Receiving Clerk', 15, 85, '20010221', 9500, 201)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (122, 'Bryan', 'Baker', NULL, 'Production Technician', 7, 7, '20010222', 12500, 166)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (123, 'Jeff', 'Hay', 'V', 'Production Supervisor', 7, 21, '20010222', 25000, 113)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (124, 'Eugene', 'Zabokritski', 'R', 'Production Technician', 7, 184, '20010222', 9500, 226)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (125, 'Barbara', 'Decker', 'S', 'Production Technician', 7, 182, '20010223', 14000, 219)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (126, 'Chris', 'Preston', 'T', 'Production Technician', 7, 123, '20010223', 10000, 279)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (127, 'Sean', 'Chai', '', 'Document Control Assistant', 12, 90, '20010223', 10300, 138)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (128, 'Dan', 'Wilson', 'B', 'Database Administrator', 11, 42, '20010223', 38500, 30)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (129, 'Mark', 'McArthur', 'K', 'Production Technician', 7, 16, '20010224', 12500, 186)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (130, 'Bryan', 'Walton', 'A', 'Accounts Receivable Specialist', 10, 139, '20010225', 19000, 175)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (131, 'Houman', 'Pournasseh', '', 'Production Technician', 7, 74, '20010226', 11000, 185)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (132, 'Sairaj', 'Uddin', 'L', 'Scheduling Assistant', 8, 44, '20010227', 16000, 190)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (133, 'Michiko', 'Osada', 'F', 'Production Technician', 7, 173, '20010227', 9500, 229)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (134, 'Benjamin', 'Martin', 'R', 'Production Technician', 7, 184, '20010228', 9500, 286)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (135, 'Cynthia', 'Randall', 'S', 'Production Supervisor', 7, 21, '20010228', 25000, 147)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (136, 'Kathie', 'Flood', 'E', 'Production Technician', 7, 197, '20010228', 10000, 100)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (137, 'Britta', 'Simon', 'L', 'Production Technician', 7, 16, '20010302', 12500, 95)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (138, 'Brian', 'Lloyd', 'T', 'Production Technician', 7, 210, '20010302', 15000, 288)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (139, 'David', 'Liu', 'J', 'Accounts Manager', 10, 140, '20010303', 34700, 119)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (140, 'Laura', 'Norman', 'F', 'Chief Financial Officer', 16, 109, '20010304', 60100, 215)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (141, 'Michael', 'Patten', 'W', 'Production Technician', 7, 38, '20010304', 11000, 96)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (142, 'Andy', 'Ruth', 'M', 'Production Technician', 7, 135, '20010304', 9500, 1)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (143, 'Yuhong', 'Li', 'L', 'Production Supervisor', 7, 21, '20010305', 25000, 242)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (144, 'Robert', 'Rounthwaite', 'J', 'Production Technician', 7, 159, '20010306', 10000, 280)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (145, 'Andreas', 'Berglund', 'T', 'Quality Assurance Technician', 13, 41, '20010306', 10600, 208)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (146, 'Reed', 'Koch', 'T', 'Production Technician', 7, 184, '20010306', 9500, 191)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (147, 'Linda', 'Randall', 'A', 'Production Technician', 7, 143, '20010307', 14000, 260)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (148, 'James', 'Hamilton', 'R', 'Vice President of Production', 7, 109, '20010307', 84100, 158)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (149, 'Ramesh', 'Meyyappan', 'V', 'Application Specialist', 11, 42, '20010307', 27400, 130)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (150, 'Stephanie', 'Conroy', 'A', 'Network Manager', 11, 42, '20010308', 39700, 136)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (151, 'Samantha', 'Smith', 'H', 'Production Technician', 7, 108, '20010308', 14000, 14)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (152, 'Tawana', 'Nusbaum', 'G', 'Production Technician', 7, 210, '20010309', 15000, 237)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (153, 'Denise', 'Smith', 'H', 'Production Technician', 7, 14, '20010309', 11000, 143)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (154, 'Hao', 'Chen', 'O', 'Human Resources Administrative Assistant', 9, 30, '20010310', 13900, 135)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (155, 'Alex', 'Nayberg', 'M', 'Production Technician', 7, 123, '20010312', 10000, 174)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (156, 'Eugene', 'Kogan', 'O', 'Production Technician', 7, 7, '20010312', 12500, 71)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (157, 'Brandon', 'Heidepriem', 'G', 'Production Technician', 7, 16, '20010312', 12500, 189)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (158, 'Dylan', 'Miller', 'A', 'Research and Development Manager', 6, 3, '20010312', 50500, 141)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (159, 'Shane', 'Kim', 'S', 'Production Supervisor', 7, 21, '20010312', 25000, 20)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (160, 'John', 'Chen', 'Y', 'Production Technician', 7, 182, '20010313', 14000, 65)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (161, 'Karen', 'Berge', 'R', 'Document Control Assistant', 12, 90, '20010313', 10300, 123)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (162, 'Jose', 'Lugo', 'R', 'Production Technician', 7, 16, '20010314', 12500, 271)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (163, 'Mandar', 'Samant', 'H', 'Production Technician', 7, 74, '20010314', 11000, 63)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (164, 'Mikael', 'Sandberg', 'Q', 'Buyer', 5, 274, '20010314', 18300, 50)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (165, 'Sameer', 'Tejani', 'A', 'Production Technician', 7, 74, '20010315', 11000, 66)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (166, 'Dragan', 'Tomic', 'K', 'Accounts Payable Specialist', 10, 139, '20010315', 19000, 115)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (167, 'Carol', 'Philips', 'M', 'Production Technician', 7, 173, '20010316', 9500, 45)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (168, 'Rob', 'Caron', 'T', 'Production Technician', 7, 87, '20010317', 15000, 161)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (169, 'Don', 'Hall', 'L', 'Production Technician', 7, 38, '20010317', 11000, 59)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (170, 'Alan', 'Brewer', 'J', 'Scheduling Assistant', 8, 44, '20010317', 16000, 151)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (171, 'David', 'Lawrence', 'Oliver', 'Production Technician', 7, 184, '20010318', 9500, 167)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (172, 'Baris', 'Cetinok', 'F', 'Production Technician', 7, 87, '20010319', 15000, 244)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (173, 'Michael', 'Ray', 'Sean', 'Production Supervisor', 7, 21, '20010319', 25000, 277)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (174, 'Steve', 'Masters', 'F', 'Production Technician', 7, 18, '20010319', 12500, 252)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (175, 'Suchitra', 'Mohan', 'O', 'Production Technician', 7, 16, '20010320', 12500, 31)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (176, 'Karen', 'Berg', 'A', 'Application Specialist', 11, 42, '20010320', 27400, 132)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (177, 'Terrence', 'Earls', 'W', 'Production Technician', 7, 143, '20010320', 14000, 34)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (178, 'Barbara', 'Moreland', 'C', 'Accountant', 10, 139, '20010322', 26400, 254)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (179, 'Chad', 'Niswonger', 'W', 'Production Technician', 7, 38, '20010322', 11000, 46)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (180, 'Rostislav', 'Shabalin', 'E', 'Production Technician', 7, 135, '20010323', 9500, 9)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (181, 'Belinda', 'Newman', 'M', 'Production Technician', 7, 197, '20010324', 10000, 43)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (182, 'Katie', 'McAskill-White', 'L', 'Production Supervisor', 7, 21, '20010324', 25000, 240)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (183, 'Russell', 'King', 'M', 'Production Technician', 7, 184, '20010325', 9500, 3)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (184, 'Jack', 'Richins', 'S', 'Production Supervisor', 7, 21, '20010325', 25000, 169)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (185, 'Andrew', 'Hill', 'R', 'Production Supervisor', 7, 21, '20010326', 25000, 97)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (186, 'Nicole', 'Holliday', 'B', 'Production Technician', 7, 87, '20010326', 15000, 238)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (187, 'Frank', 'Miller', 'T', 'Production Technician', 7, 14, '20010327', 11000, 289)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (188, 'Peter', 'Connelly', 'I', 'Network Administrator', 11, 150, '20010327', 32500, 137)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (189, 'Anibal', 'Sousa', 'T', 'Production Technician', 7, 108, '20010327', 14000, 183)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (190, 'Ken', 'Myer', 'L', 'Production Technician', 7, 210, '20010328', 15000, 105)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (191, 'Grant', 'Culbertson', '', 'Human Resources Administrative Assistant', 9, 30, '20010329', 13900, 117)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (192, 'Michael', 'Entin', 'T', 'Production Technician', 7, 38, '20010329', 11000, 195)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (193, 'Lionel', 'Penuchot', 'C', 'Production Technician', 7, 159, '20010330', 10000, 261)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (194, 'Thomas', 'Michaels', 'R', 'Production Technician', 7, 7, '20010330', 12500, 78)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (195, 'Jimmy', 'Bischoff', 'T', 'Stocker', 15, 85, '20010330', 9000, 206)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (196, 'Michael', 'Vanderhyde', 'T', 'Production Technician', 7, 135, '20010330', 9500, 90)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (197, 'Lori', 'Kane', 'A', 'Production Supervisor', 7, 21, '20010330', 25000, 198)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (198, 'Arvind', 'Rao', 'B', 'Buyer', 5, 274, '20010401', 18300, 212)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (199, 'Stefen', 'Hesse', 'A', 'Production Technician', 7, 182, '20010401', 14000, 68)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (200, 'Hazem', 'Abolrous', 'E', 'Quality Assurance Manager', 13, 148, '20010401', 28800, 148)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (201, 'Janet', 'Sheperdigian', 'L', 'Accounts Payable Specialist', 10, 139, '20010402', 19000, 218)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (202, 'Elizabeth', 'Keyser', 'I', 'Production Technician', 7, 74, '20010403', 11000, 152)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (203, 'Terry', 'Eminhizer', 'J', 'Marketing Specialist', 4, 6, '20010403', 14400, 19)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (204, 'John', 'Frum', '', 'Production Technician', 7, 184, '20010404', 9500, 112)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (205, 'Merav', 'Netz', 'A', 'Production Technician', 7, 173, '20010404', 9500, 270)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (206, 'Brian', 'LaMee', 'P', 'Scheduling Assistant', 8, 44, '20010404', 16000, 109)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (207, 'Kitti', 'Lertpiriyasuwat', 'H', 'Production Technician', 7, 38, '20010405', 11000, 272)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (208, 'Jay', 'Adams', 'G', 'Production Technician', 7, 18, '20010406', 12500, 157)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (209, 'Jan', 'Miksovsky', 'S', 'Production Technician', 7, 184, '20010406', 9500, 101)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (210, 'Brenda', 'Diaz', 'M', 'Production Supervisor', 7, 21, '20010406', 25000, 251)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (211, 'Andrew', 'Cencini', 'M', 'Production Technician', 7, 123, '20010407', 10000, 233)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (212, 'Chris', 'Norred', 'K', 'Control Specialist', 12, 90, '20010407', 16800, 125)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (213, 'Chris', 'Okelberry', 'O', 'Production Technician', 7, 16, '20010408', 12500, 188)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (214, 'Shelley', 'Dyck', '', 'Production Technician', 7, 143, '20010408', 14000, 164)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (215, 'Gabe', 'Mares', 'B', 'Production Technician', 7, 210, '20010409', 15000, 87)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (216, 'Mike', 'Seamans', 'K', 'Accountant', 10, 139, '20010409', 26400, 120)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (217, 'Michael', 'Raheem', NULL, 'Research and Development Manager', 6, 158, '20010604', 42500, 236)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (218, 'Gary', 'Altman', 'E.', 'Facilities Manager', 14, 148, '20020103', 24000, 203)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (219, 'Charles', 'Fitzgerald', 'B', 'Production Technician', 7, 18, '20020104', 12500, 223)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (220, 'Ebru', 'Ersan', '', 'Production Technician', 7, 25, '20020107', 13500, 225)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (221, 'Sylvester', 'Valdez', 'A', 'Production Technician', 7, 108, '20020112', 14000, 25)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (222, 'Brian', 'Goldstein', 'Richard', 'Production Technician', 7, 51, '20020112', 15000, 48)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (223, 'Linda', 'Meisner', 'P', 'Buyer', 5, 274, '20020118', 18300, 28)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (224, 'Betsy', 'Stadick', 'A', 'Production Technician', 7, 64, '20020119', 13500, 47)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (225, 'Magnus', 'Hedlund', 'E', 'Facilities Administrative Assistant', 14, 218, '20020122', 9800, 211)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (226, 'Karan', 'Khanna', 'R', 'Production Technician', 7, 18, '20020123', 12500, 248)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (227, 'Mary', 'Baker', 'R', 'Production Technician', 7, 25, '20020126', 13500, 246)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (228, 'Kevin', 'Homer', 'M', 'Production Technician', 7, 25, '20020126', 13500, 29)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (229, 'Mihail', 'Frintu', 'U', 'Production Technician', 7, 51, '20020130', 15000, 89)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (230, 'Bonnie', 'Kearney', '', 'Production Technician', 7, 185, '20020202', 13500, 287)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (231, 'Fukiko', 'Ogisu', 'J', 'Buyer', 5, 274, '20020205', 18300, 17)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (232, 'Hung-Fu', 'Ting', 'T', 'Production Technician', 7, 108, '20020207', 14000, 220)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (233, 'Gordon', 'Hee', 'L', 'Buyer', 5, 274, '20020212', 18300, 15)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (234, 'Kimberly', 'Zimmerman', 'B', 'Production Technician', 7, 64, '20020213', 13500, 266)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (235, 'Kim', 'Abercrombie', 'B', 'Production Technician', 7, 16, '20020217', 12500, 56)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (236, 'Sandeep', 'Kaliyath', 'P', 'Production Technician', 7, 51, '20020218', 15000, 234)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (237, 'Prasanna', 'Samarawickrama', 'E', 'Production Technician', 7, 108, '20020223', 14000, 187)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (238, 'Frank', 'Pellow', 'S', 'Buyer', 5, 274, '20020224', 18300, 213)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (239, 'Min', 'Su', 'G', 'Production Technician', 7, 108, '20020225', 14000, 24)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (240, 'Eric', 'Brown', 'L', 'Production Technician', 7, 51, '20020225', 15000, 67)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (241, 'Eric', 'Kurjan', 'S', 'Buyer', 5, 274, '20020228', 18300, 207)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (242, 'Pat', 'Coleman', 'H', 'Janitor', 14, 49, '20020228', 9300, 116)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (243, 'Maciej', 'Dusza', 'W', 'Production Technician', 7, 18, '20020301', 12500, 83)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (244, 'Erin', 'Hagens', 'M', 'Buyer', 5, 274, '20020303', 18300, 8)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (245, 'Patrick', 'Wedge', 'C', 'Production Technician', 7, 64, '20020304', 13500, 7)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (246, 'Frank', 'Martinez', 'R', 'Production Technician', 7, 51, '20020308', 15000, 290)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (247, 'Ed', 'Dudenhoefer', 'R', 'Production Technician', 7, 16, '20020308', 12500, 243)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (248, 'Christopher', 'Hill', 'E', 'Production Technician', 7, 25, '20020311', 13500, 41)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (249, 'Patrick', 'Cook', 'M', 'Production Technician', 7, 51, '20020315', 15000, 264)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (250, 'Krishna', 'Sunkammurali', NULL, 'Production Technician', 7, 108, '20020316', 14000, 79)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (251, 'Lori', 'Penor', 'K', 'Janitor', 14, 49, '20020319', 9300, 124)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (252, 'Danielle', 'Tiedt', 'C', 'Production Technician', 7, 64, '20020323', 13500, 146)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (253, 'Sootha', 'Charncherngkha', 'T', 'Quality Assurance Technician', 13, 41, '20020326', 10600, 149)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (254, 'Michael', 'Zwilling', 'J', 'Production Technician', 7, 18, '20020326', 12500, 76)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (255, 'Randy', 'Reeves', 'T', 'Production Technician', 7, 18, '20020326', 12500, 84)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (256, 'John', 'Kane', 'T', 'Production Technician', 7, 25, '20020330', 13500, 69)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (257, 'Jack', 'Creasey', 'T', 'Production Technician', 7, 51, '20020403', 15000, 265)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (258, 'Olinda', 'Turner', 'C', 'Production Technician', 7, 108, '20020404', 14000, 33)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (259, 'Stuart', 'Macrae', 'J', 'Janitor', 14, 49, '20020405', 9300, 205)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (260, 'Jo', 'Berry', 'L', 'Janitor', 14, 49, '20020407', 9300, 121)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (261, 'Ben', 'Miller', 'T', 'Buyer', 5, 274, '20020409', 18300, 192)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (262, 'Tom', 'Vande Velde', 'M', 'Production Technician', 7, 64, '20020410', 13500, 98)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (263, 'Ovidiu', 'Cracium', 'V', 'Senior Tool Designer', 2, 3, '20030105', 28800, 145)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (264, 'Annette', 'Hill', 'L', 'Purchasing Assistant', 5, 274, '20030106', 12800, 181)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (265, 'Janice', 'Galvin', 'M', 'Tool Designer', 2, 263, '20030123', 25000, 200)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (266, 'Reinout', 'Hillmann', '', 'Purchasing Assistant', 5, 274, '20030125', 12800, 27)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (267, 'Michael', 'Sullivan', 'I', 'Senior Design Engineer', 1, 3, '20030130', 36100, 217)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (268, 'Stephen', 'Jiang', 'Y', 'North American Sales Manager', 3, 273, '20030204', 48100, 196)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (269, 'Wanida', 'Benshoof', 'M', 'Marketing Assistant', 4, 6, '20030207', 13500, 221)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (270, 'Sharon', 'Salavaria', 'B', 'Design Engineer', 1, 3, '20030218', 32700, 216)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (271, 'John', 'Wood', 'L', 'Marketing Specialist', 4, 6, '20030310', 14400, 180)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (272, 'Mary', 'Dempsey', 'A', 'Marketing Assistant', 4, 6, '20030317', 13500, 26)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (273, 'Brian', 'Welcker', 'S', 'Vice President of Sales', 3, 109, '20030318', 72100, 134)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (274, 'Sheela', 'Word', 'H', 'Purchasing Manager', 13, 71, '20030328', 30000, 222)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (275, 'Michael', 'Blythe', 'G', 'Sales Representative', 3, 268, '20030701', 23100, 60)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (276, 'Linda', 'Mitchell', 'C', 'Sales Representative', 3, 268, '20030701', 23100, 170)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (277, 'Jillian', 'Carson', NULL, 'Sales Representative', 3, 268, '20030701', 23100, 61)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (278, 'Garrett', 'Vargas', 'R', 'Sales Representative', 3, 268, '20030701', 23100, 52)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (279, 'Tsvi', 'Reiter', 'Michael', 'Sales Representative', 3, 268, '20030701', 23100, 154)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (280, 'Pamela', 'Ansman-Wolfe', 'O', 'Sales Representative', 3, 268, '20030701', 23100, 179)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (281, 'Shu', 'Ito', 'K', 'Sales Representative', 3, 268, '20030701', 23100, 235)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (282, 'Jose', 'Saraiva', 'Edvaldo', 'Sales Representative', 3, 268, '20030701', 23100, 178)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (283, 'David', 'Campbell', 'R', 'Sales Representative', 3, 268, '20030701', 23100, 13)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (284, 'Amy', 'Alberts', 'E', 'European Sales Manager', 3, 273, '20040518', 48100, 202)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (285, 'Jae', 'Pak', 'B', 'Sales Representative', 3, 284, '20040701', 23100, 54)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (286, 'Ranjit', 'Varkey Chudukatil', 'R', 'Sales Representative', 3, 284, '20040701', 23100, 38)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (287, 'Tete', 'Mensa-Annan', 'A', 'Sales Representative', 3, 268, '20041101', 23100, 53)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (288, 'Syed', 'Abbas', 'E', 'Pacific Sales Manager', 3, 273, '20050415', 48100, 49)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (289, 'Rachel', 'Valdez', 'B', 'Sales Representative', 3, 284, '20050701', 23100, 37)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (290, 'Lynn', 'Tsoflias', '', 'Sales Representative', 3, 288, '20050701', 23100, 153)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (291, 'Svetlin', 'Nakov', 'Ivanov', 'Independent Software Development  Consultant', 6, NULL, '20050301', 48000, 291)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (292, 'Martin', 'Kulov', NULL, 'Independent .NET Consultant', 6, NULL, '20050301', 48000, 291)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (293, 'George', 'Denchev', NULL, 'Independent Java Consultant', 6, NULL, '20050301', 48000, 291)

SET IDENTITY_INSERT Employees OFF

GO

ALTER TABLE Employees
ADD CONSTRAINT FK_Employees_Addresses FOREIGN KEY(AddressID)
REFERENCES Addresses(AddressID)
GO

ALTER TABLE Employees
ADD CONSTRAINT FK_Employees_Departments FOREIGN KEY(DepartmentID)
REFERENCES Departments(DepartmentID)
GO

ALTER TABLE Employees
ADD CONSTRAINT FK_Employees_Employees FOREIGN KEY(ManagerID)
REFERENCES Employees(EmployeeID)
GO

ALTER TABLE EmployeesProjects
ADD CONSTRAINT FK_EmployeesProjects_Employees FOREIGN KEY(EmployeeID)
REFERENCES Employees(EmployeeID)
GO

ALTER TABLE EmployeesProjects
ADD CONSTRAINT FK_EmployeesProjects_Projects FOREIGN KEY(ProjectID)
REFERENCES Projects(ProjectID)
GO

ALTER TABLE Departments
ADD CONSTRAINT FK_Departments_Employees FOREIGN KEY(ManagerID)
REFERENCES Employees(EmployeeID)
GO

ALTER TABLE Addresses
ADD CONSTRAINT FK_Addresses_Towns FOREIGN KEY(TownID)
REFERENCES Towns(TownID)
GO

USE [master]
GO
/****** Object:  Database [Diablo]    Script Date: 7/10/2015 8:03:42 PM ******/
CREATE DATABASE [Diablo]
COLLATE SQL_Latin1_General_CP1_CI_AS;
GO

USE [Diablo]
GO

CREATE TABLE [dbo].[Characters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[StatisticId] [int] NULL,
 CONSTRAINT [PK_Characters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Games]    Script Date: 7/10/2015 8:03:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Games](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Start] [datetime] NOT NULL,
	[Duration] [int] NULL,
	[GameTypeId] [int] NOT NULL,
	[IsFinished] [bit] NOT NULL,
 CONSTRAINT [PK_Games] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GameTypeForbiddenItems]    Script Date: 7/10/2015 8:03:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameTypeForbiddenItems](
	[ItemId] [int] NOT NULL,
	[GameTypeId] [int] NOT NULL,
 CONSTRAINT [PK_GameTypeForbiddenItems] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC,
	[GameTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GameTypes]    Script Date: 7/10/2015 8:03:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[BonusStatsId] [int] NULL,
 CONSTRAINT [PK_GameTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Items]    Script Date: 7/10/2015 8:03:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ItemTypeId] [int] NOT NULL,
	[StatisticId] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[MinLevel] [int] NOT NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ItemTypes]    Script Date: 7/10/2015 8:03:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ItemTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Statistics]    Script Date: 7/10/2015 8:03:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statistics](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Strength] [int] NOT NULL,
	[Defence] [int] NOT NULL,
	[Mind] [int] NOT NULL,
	[Speed] [int] NOT NULL,
	[Luck] [int] NOT NULL,
 CONSTRAINT [PK_Statistics] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserGameItems]    Script Date: 7/10/2015 8:03:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGameItems](
	[ItemId] [int] NOT NULL,
	[UserGameId] [int] NOT NULL,
 CONSTRAINT [PK_UserGameItems] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC,
	[UserGameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/10/2015 8:03:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[RegistrationDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IpAddress] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersGames]    Script Date: 7/10/2015 8:03:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersGames](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GameId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[CharacterId] [int] NOT NULL,
	[Level] [int] NOT NULL,
	[JoinedOn] [datetime] NOT NULL,
	[Cash] [money] NOT NULL,
 CONSTRAINT [PK_UsersGames_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Characters] ON 

INSERT [dbo].[Characters] ([Id], [Name], [StatisticId]) VALUES (1, N'Barbarian', 1)
INSERT [dbo].[Characters] ([Id], [Name], [StatisticId]) VALUES (2, N'Crusader', 2)
INSERT [dbo].[Characters] ([Id], [Name], [StatisticId]) VALUES (3, N'Demon Hunter', 4)
INSERT [dbo].[Characters] ([Id], [Name], [StatisticId]) VALUES (4, N'Monk', 5)
INSERT [dbo].[Characters] ([Id], [Name], [StatisticId]) VALUES (5, N'Witch Doctor', 6)
INSERT [dbo].[Characters] ([Id], [Name], [StatisticId]) VALUES (6, N'Wizard', 7)
INSERT [dbo].[Characters] ([Id], [Name], [StatisticId]) VALUES (7, N'Amazon', 8)
INSERT [dbo].[Characters] ([Id], [Name], [StatisticId]) VALUES (8, N'Assassin', 9)
INSERT [dbo].[Characters] ([Id], [Name], [StatisticId]) VALUES (9, N'Druid', 10)
INSERT [dbo].[Characters] ([Id], [Name], [StatisticId]) VALUES (10, N'Necromancer', 11)
INSERT [dbo].[Characters] ([Id], [Name], [StatisticId]) VALUES (11, N'Paladin', 12)
INSERT [dbo].[Characters] ([Id], [Name], [StatisticId]) VALUES (12, N'Sorceress', 13)
SET IDENTITY_INSERT [dbo].[Characters] OFF
SET IDENTITY_INSERT [dbo].[Games] ON 

INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (1, N'Aithusa', CAST(0x0000A34301804F98 AS DateTime), 4, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (2, N'Acid green', CAST(0x0000A3A300065130 AS DateTime), 7, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (3, N'Apple', CAST(0x0000A388003BE020 AS DateTime), 6, 3, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (4, N'Broadway', CAST(0x0000A3FB00411810 AS DateTime), 5, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (5, N'Ancalagon', CAST(0x0000A3430077C040 AS DateTime), 5, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (6, N'Allium drumstick', CAST(0x0000A324008E8C30 AS DateTime), NULL, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (7, N'Lisbon', CAST(0x0000A3FB00E92F50 AS DateTime), 6, 1, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (8, N'Ablajeck', CAST(0x0000A32400F3E580 AS DateTime), 5, 2, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (9, N'Acaeria', CAST(0x0000A34301312530 AS DateTime), 8, 5, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (10, N'Amsterdam', CAST(0x0000A3FB0135D080 AS DateTime), 2, 3, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (11, N'Helo Prime', CAST(0x0000A324015A11C0 AS DateTime), 5, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (12, N'Shruikan', CAST(0x0000A343015FD650 AS DateTime), 4, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (13, N'California pepperberry', CAST(0x00009CF601518E10 AS DateTime), NULL, 3, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (14, N'Calla lily white', CAST(0x0000A0F9015FD650 AS DateTime), 9, 3, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (15, N'Dahlia', CAST(0x0000A52D00BB0AD0 AS DateTime), 7, 1, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (16, N'Delphinium Belladonna', CAST(0x0000A561004ED3B0 AS DateTime), 5, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (17, N'Delphinium Pacific Giant', CAST(0x00009F5A0077C040 AS DateTime), 3, 4, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (18, N'Daffodil', CAST(0x0000A46F0086DB70 AS DateTime), 2, 5, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (19, N'Eric John', CAST(0x0000A4B00098FC10 AS DateTime), NULL, 4, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (20, N'Eucalyptus silver dollar', CAST(0x00009F7F00A43EE0 AS DateTime), 7, 3, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (21, N'Eucalyptus seeded', CAST(0x0000A54000A6B7B0 AS DateTime), 7, 2, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (22, N'Fernleaf Yarrow', CAST(0x0000A3E200BB0AD0 AS DateTime), 4, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (23, N'Foxtail fern', CAST(0x00009FEC00CB3F40 AS DateTime), 9, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (24, N'Freesia', CAST(0x00009F6800E25180 AS DateTime), NULL, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (25, N'Feverfew', CAST(0x00009E3B00E92F50 AS DateTime), 6, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (26, N'Flax New Zealand', CAST(0x00009F6000F3E580 AS DateTime), 7, 5, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (27, N'Godetia', CAST(0x00009D1500F358E0 AS DateTime), 7, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (28, N'Gardenia', CAST(0x0000A32601126230 AS DateTime), 8, 3, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (29, N'Gerbera daisy', CAST(0x0000A262011D5EB0 AS DateTime), 4, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (30, N'Gerbera Ruby Red', CAST(0x0000A191015BFDF0 AS DateTime), 2, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (31, N'Gayfeather', CAST(0x00009D94015BFDF0 AS DateTime), 2, 5, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (32, N'Goldenrod', CAST(0x0000A4FA0147AAD0 AS DateTime), NULL, 4, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (33, N'Heather', CAST(0x0000A2B00135D080 AS DateTime), 6, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (34, N'Hydrangea', CAST(0x0000A1F700BB0AD0 AS DateTime), 3, 1, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (35, N'Ivy', CAST(0x0000A2A30102BA60 AS DateTime), 5, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (36, N'Japhette orchid', CAST(0x00009F96011567A0 AS DateTime), 1, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (37, N'Kangaroo paw yellow', CAST(0x00009E1F011D5EB0 AS DateTime), 3, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (38, N'Lace fern', CAST(0x0000A45F01323E70 AS DateTime), 7, 4, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (39, N'Lily of the Nile � Alba', CAST(0x0000A1F401377660 AS DateTime), 9, 4, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (40, N'Lumex', CAST(0x0000A082011FD780 AS DateTime), 2, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (41, N'Larkspur pink', CAST(0x0000A2E500E9BBF0 AS DateTime), 2, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (42, N'Lily of the valley', CAST(0x0000A40E007CB1E0 AS DateTime), 7, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (43, N'Lisianthus misty blue', CAST(0x00009E57001DA9C0 AS DateTime), NULL, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (44, N'Lily Elite', CAST(0x00009F80003BE020 AS DateTime), 4, 4, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (45, N'Lavender', CAST(0x0000A357006F82E0 AS DateTime), 2, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (46, N'Lily Monte Negro', CAST(0x0000A05C0098FC10 AS DateTime), 1, 1, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (47, N'Lily Casa Blanca', CAST(0x00009EA700BB0AD0 AS DateTime), NULL, 4, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (48, N'Lily Stargazer', CAST(0x0000A1F800E25180 AS DateTime), 8, 3, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (49, N'Love in a mist', CAST(0x0000A14B00E92F50 AS DateTime), 5, 2, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (50, N'Mimosa', CAST(0x0000A47000E9BBF0 AS DateTime), 4, 2, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (51, N'Ming fern', CAST(0x0000A36500EB61D0 AS DateTime), 1, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (52, N'Monkshood', CAST(0x00009E1400EEAD90 AS DateTime), 2, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (53, N'Monte Cassino', CAST(0x00009E1800F358E0 AS DateTime), NULL, 5, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (54, N'Marguerite daisy', CAST(0x00009D0B00F3E580 AS DateTime), 5, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (55, N'Montbretia', CAST(0x00009D3800FCF5D0 AS DateTime), 2, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (56, N'Misty blue Limonium', CAST(0x0000A28000FE9BB0 AS DateTime), 2, 1, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (57, N'Melaleuca', CAST(0x00009F580102BA60 AS DateTime), 2, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (58, N'Moon orchid', CAST(0x0000A09C0105BFD0 AS DateTime), NULL, 1, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (59, N'Nerine', CAST(0x0000A3CC010B8460 AS DateTime), 7, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (60, N'Peruvian lily', CAST(0x0000A52A0111D590 AS DateTime), 3, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (61, N'Paper Reed', CAST(0x0000A42F011A5940 AS DateTime), 5, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (62, N'Papyrus lions head', CAST(0x00009CF7011BFF20 AS DateTime), 7, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (63, N'Pincushion', CAST(0x0000A0830134FD90 AS DateTime), 6, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (64, N'Phlox', CAST(0x0000A482011567A0 AS DateTime), 4, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (65, N'Pitt Variegated', CAST(0x0000A3B40134FD90 AS DateTime), 5, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (66, N'Peony', CAST(0x0000A0A2011567A0 AS DateTime), NULL, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (67, N'Pink Mink', CAST(0x0000A54B0134FD90 AS DateTime), 7, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (68, N'Pincushion flower annual', CAST(0x00009E27011567A0 AS DateTime), 5, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (69, N'Rose Champagne', CAST(0x00009DB30134FD90 AS DateTime), 6, 5, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (70, N'Red Rover', CAST(0x00009DAA011567A0 AS DateTime), 1, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (71, N'Rose Fire & Ice', CAST(0x0000A4B10134FD90 AS DateTime), 9, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (72, N'Rice flower', CAST(0x0000A134011567A0 AS DateTime), 7, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (73, N'Ranunculus', CAST(0x0000A4EA0134FD90 AS DateTime), 2, 2, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (74, N'Rose Osiana', CAST(0x0000A203011567A0 AS DateTime), NULL, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (75, N'Rose Bridal White', CAST(0x0000A49B00B73270 AS DateTime), 1, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (76, N'Rose Royalty', CAST(0x00009E620187EFF0 AS DateTime), 9, 4, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (77, N'Rose Emblem', CAST(0x00009D19011567A0 AS DateTime), 2, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (78, N'Rose Fantasy', CAST(0x0000A45000B73270 AS DateTime), NULL, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (79, N'Rose Lavanda', CAST(0x00009E3200000000 AS DateTime), 1, 4, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (80, N'Rose Kardinal', CAST(0x00009CF8011567A0 AS DateTime), NULL, 4, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (81, N'Rose Diadem', CAST(0x0000A2DD00B73270 AS DateTime), 5, 5, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (82, N'Rose Lady Liberty', CAST(0x0000A44600000000 AS DateTime), 2, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (83, N'Rose Bridal Pink', CAST(0x00009E1C011567A0 AS DateTime), 2, 1, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (84, N'Summer poinsettia', CAST(0x0000A2B400BB0AD0 AS DateTime), 4, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (85, N'Sprengeri fern', CAST(0x0000A45200000000 AS DateTime), 4, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (86, N'Strawberry banksia', CAST(0x0000A04C011567A0 AS DateTime), 3, 3, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (87, N'Safflower', CAST(0x00009F0E00BB0AD0 AS DateTime), NULL, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (88, N'Spider Fuji Yellow', CAST(0x0000A08800000000 AS DateTime), 2, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (89, N'Salmon Reagan', CAST(0x0000A09C011567A0 AS DateTime), 3, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (90, N'Sweet William', CAST(0x00009F9700BB0AD0 AS DateTime), 2, 1, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (91, N'Sunflower Sunbright', CAST(0x0000A16400000000 AS DateTime), NULL, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (92, N'Strawflower', CAST(0x00009F13011567A0 AS DateTime), 9, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (93, N'Safari Sunset', CAST(0x0000A0DE00BB0AD0 AS DateTime), 4, 5, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (94, N'Sweet pea', CAST(0x0000A34700000000 AS DateTime), 2, 4, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (95, N'Statice blue', CAST(0x0000A15F011567A0 AS DateTime), 7, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (96, N'Stock lavender', CAST(0x00009FEB00BB0AD0 AS DateTime), 1, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (97, N'Sword fern', CAST(0x00009D2C00000000 AS DateTime), 5, 4, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (98, N'Star of Bethlehem', CAST(0x0000A4E5011567A0 AS DateTime), 8, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (99, N'Sage perennial', CAST(0x0000A51800BB0AD0 AS DateTime), NULL, 4, 1)
GO
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (100, N'Saponaria', CAST(0x0000A1CF00000000 AS DateTime), 7, 4, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (101, N'Snapdragon apple blossom', CAST(0x00009F3D011567A0 AS DateTime), 4, 2, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (102, N'Saxicola', CAST(0x00009DAD00000000 AS DateTime), 8, 2, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (103, N'Snapdragon magenta', CAST(0x0000A5350187EFF0 AS DateTime), 3, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (104, N'Solidaster', CAST(0x0000A22600000000 AS DateTime), 2, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (105, N'Speedwell', CAST(0x0000A4570187EFF0 AS DateTime), NULL, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (106, N'Stephanotis', CAST(0x00009F4400000000 AS DateTime), 3, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (107, N'Thorow-wax', CAST(0x0000A3CC0187EFF0 AS DateTime), 3, 2, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (108, N'Telstar', CAST(0x0000A1B800000000 AS DateTime), 7, 1, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (109, N'Tuberose', CAST(0x0000A5090187EFF0 AS DateTime), NULL, 4, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (110, N'Tracelium', CAST(0x0000A24E00000000 AS DateTime), 3, 4, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (111, N'Tulip pink', CAST(0x00009FE50187EFF0 AS DateTime), 3, 5, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (112, N'Waxflower', CAST(0x0000A4B800000000 AS DateTime), 6, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (113, N'Willow curly', CAST(0x00009DE800000000 AS DateTime), 3, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (114, N'Watsonia', CAST(0x0000A3700187EFF0 AS DateTime), 3, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (115, N'Ablajeck', CAST(0x00009EB500000000 AS DateTime), 9, 1, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (116, N'Abregado Rae', CAST(0x0000A10800F3E580 AS DateTime), 8, 2, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (117, N'Abrion', CAST(0x0000A22000000000 AS DateTime), 3, 3, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (118, N'Alderaan', CAST(0x00009F4600000000 AS DateTime), 4, 1, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (119, N'Allied Tion', CAST(0x00009EFC0187EFF0 AS DateTime), 1, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (120, N'Altyr', CAST(0x0000A16200F3E580 AS DateTime), 5, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (121, N'Andat', CAST(0x0000A2C600000000 AS DateTime), NULL, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (122, N'Six Flags', CAST(0x0000A15000000000 AS DateTime), 2, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (123, N'SeaWorld', CAST(0x00009D9A0187EFF0 AS DateTime), 8, 3, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (124, N'Yosemite', CAST(0x00009FE200000000 AS DateTime), 7, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (125, N'Stonehenge', CAST(0x00009F9E00000000 AS DateTime), 7, 3, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (126, N'Machu Picchu', CAST(0x0000A04300000000 AS DateTime), 5, 4, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (127, N'Central Park', CAST(0x0000A0700187EFF0 AS DateTime), 4, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (128, N'Forbidden City', CAST(0x0000A2D000000000 AS DateTime), 5, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (129, N'Broadway', CAST(0x00009E6D00F3E580 AS DateTime), 5, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (130, N'Brooklyn Bridge', CAST(0x00009DF200000000 AS DateTime), 7, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (131, N'Golden Gate', CAST(0x0000A23C0187EFF0 AS DateTime), 5, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (132, N'Pike Place', CAST(0x00009E1400000000 AS DateTime), 8, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (133, N'South Seaport', CAST(0x0000A24B00000000 AS DateTime), 3, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (134, N'Navy Pier', CAST(0x00009D2200000000 AS DateTime), 9, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (135, N'Pier 39', CAST(0x0000A4BE0187EFF0 AS DateTime), 8, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (136, N'Fulvous', CAST(0x00009E8A00000000 AS DateTime), NULL, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (137, N'Fuzzy Wuzzy', CAST(0x0000A1C100F3E580 AS DateTime), 7, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (138, N'Paris', CAST(0x00009FEA00000000 AS DateTime), 7, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (139, N'London', CAST(0x00009E6A0187EFF0 AS DateTime), 4, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (140, N'Bangkok', CAST(0x00009EBB00000000 AS DateTime), 8, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (141, N'Singapore', CAST(0x0000A3D300000000 AS DateTime), 7, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (142, N'New York', CAST(0x00009F560187EFF0 AS DateTime), 7, 4, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (143, N'Kuala Lumpur', CAST(0x0000A1B500F3E580 AS DateTime), 1, 2, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (144, N'Istanbul', CAST(0x0000A27D00000000 AS DateTime), 8, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (145, N'Rome', CAST(0x0000A46200000000 AS DateTime), 5, 3, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (146, N'Hong Kong', CAST(0x0000A42C014AF690 AS DateTime), 5, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (147, N'Dubai', CAST(0x0000A20700F3E580 AS DateTime), NULL, 5, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (148, N'Shanghai', CAST(0x0000A2CE00000000 AS DateTime), 4, 1, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (149, N'Las Vegas', CAST(0x0000A229014AF690 AS DateTime), 3, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (150, N'Miami', CAST(0x0000A31C00000000 AS DateTime), 7, 2, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (151, N'Toronto', CAST(0x0000A25400F3E580 AS DateTime), 2, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (152, N'Los Angeles', CAST(0x0000A38000000000 AS DateTime), 8, 2, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (153, N'Amsterdam', CAST(0x00009D81014AF690 AS DateTime), 7, 2, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (154, N'Moscow', CAST(0x0000A56F00000000 AS DateTime), 9, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (155, N'Cairo', CAST(0x00009E4600F3E580 AS DateTime), 4, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (156, N'Barcelona', CAST(0x0000A286014AF690 AS DateTime), 3, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (157, N'Dublin', CAST(0x0000A1EC00000000 AS DateTime), 6, 5, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (158, N'Prague', CAST(0x0000A2EF00000000 AS DateTime), 8, 3, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (159, N'Madrid', CAST(0x0000A06D00F3E580 AS DateTime), 6, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (160, N'San Francisco', CAST(0x0000A3AD00000000 AS DateTime), NULL, 4, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (161, N'Vancouver', CAST(0x0000A34A014AF690 AS DateTime), 2, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (162, N'Vienna', CAST(0x0000A29200000000 AS DateTime), 4, 1, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (163, N'Budapest', CAST(0x00009EE100F3E580 AS DateTime), 7, 1, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (164, N'Berlin', CAST(0x0000A37700000000 AS DateTime), 9, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (165, N'Tokyo', CAST(0x00009E94014AF690 AS DateTime), 6, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (166, N'Mexico City', CAST(0x00009F2900000000 AS DateTime), 8, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (167, N'Rio de Janeiro', CAST(0x0000A4D200000000 AS DateTime), 6, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (168, N'Buenos Aires', CAST(0x0000A44200000000 AS DateTime), 7, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (169, N'Seoul', CAST(0x0000A454014AF690 AS DateTime), 2, 2, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (170, N'Athens', CAST(0x0000A3DB00000000 AS DateTime), 2, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (171, N'Jerusalem', CAST(0x00009D8300F3E580 AS DateTime), 3, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (172, N'St. Petersburg', CAST(0x0000A43E00000000 AS DateTime), 9, 1, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (173, N'Sydney', CAST(0x00009D8E014AF690 AS DateTime), NULL, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (174, N'Mumbai', CAST(0x00009D5700000000 AS DateTime), 1, 1, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (175, N'Munich', CAST(0x00009DA600000000 AS DateTime), 7, 3, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (176, N'Seattle', CAST(0x00009FB9014AF690 AS DateTime), 5, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (177, N'Delhi', CAST(0x00009EDE00000000 AS DateTime), 8, 3, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (178, N'Venice', CAST(0x00009DC600F3E580 AS DateTime), 9, 4, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (179, N'Beijing', CAST(0x0000A29A00000000 AS DateTime), 2, 4, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (180, N'Cape Town', CAST(0x00009D36014AF690 AS DateTime), 6, 3, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (181, N'Washington D.C.', CAST(0x00009E9B00000000 AS DateTime), 3, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (182, N'Florence', CAST(0x0000A02700000000 AS DateTime), 4, 4, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (183, N'Atlanta', CAST(0x0000A4C900000000 AS DateTime), 9, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (184, N'Boston', CAST(0x0000A3A2014AF690 AS DateTime), NULL, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (185, N'Philadelphia', CAST(0x0000A27300000000 AS DateTime), 5, 4, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (186, N'Chicago', CAST(0x00009EF900000000 AS DateTime), 2, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (187, N'Montreal', CAST(0x0000A31B014AF690 AS DateTime), 8, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (188, N'San Diego', CAST(0x00009F3700000000 AS DateTime), NULL, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (189, N'Warsaw', CAST(0x0000A0DF00F3E580 AS DateTime), 2, 5, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (190, N'Sharm el-Sheikh', CAST(0x0000A27D00000000 AS DateTime), 3, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (191, N'Stockholm', CAST(0x0000A037014AF690 AS DateTime), 8, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (192, N'Canc�n', CAST(0x0000A07200F3E580 AS DateTime), 3, 2, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (193, N'Dallas', CAST(0x00009FE900000000 AS DateTime), NULL, 2, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (194, N'Milan', CAST(0x00009E8E014AF690 AS DateTime), 3, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (195, N'Oslo', CAST(0x0000A48400000000 AS DateTime), 5, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (196, N'Lisbon', CAST(0x0000A09000000000 AS DateTime), NULL, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (197, N'Punta Cana', CAST(0x0000A30B00000000 AS DateTime), 2, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (198, N'Antalya', CAST(0x0000A3C1014AF690 AS DateTime), 2, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (199, N'Mecca', CAST(0x0000A4D600000000 AS DateTime), 7, 3, 1)
GO
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (200, N'Macau', CAST(0x00009F9600F3E580 AS DateTime), 1, 1, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (201, N'Johannesburg', CAST(0x0000A46100000000 AS DateTime), 2, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (202, N'Pattaya', CAST(0x0000A47C00000000 AS DateTime), 2, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (203, N'Kiev', CAST(0x0000A4BF00000000 AS DateTime), 8, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (204, N'Shenzhen', CAST(0x0000A49800000000 AS DateTime), 6, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (205, N'Bucharest', CAST(0x0000A57200000000 AS DateTime), 7, 2, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (206, N'Taipei', CAST(0x0000A18E00000000 AS DateTime), 2, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (207, N'Brussels', CAST(0x0000A48900000000 AS DateTime), 8, 3, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (208, N'Marrakesh', CAST(0x0000A1D500000000 AS DateTime), 2, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (209, N'Orlando', CAST(0x00009EB000000000 AS DateTime), 4, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (210, N'Phuket', CAST(0x00009E7600000000 AS DateTime), 4, 4, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (211, N'Edirne', CAST(0x0000A4C500000000 AS DateTime), 1, 2, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (212, N'Bali', CAST(0x0000A37D00000000 AS DateTime), 6, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (213, N'Copenhagen', CAST(0x0000A4D000000000 AS DateTime), 8, 3, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (214, N'S�o Paulo', CAST(0x0000A15D00000000 AS DateTime), 3, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (215, N'Jakarta', CAST(0x0000A33500000000 AS DateTime), 3, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (216, N'Auckland', CAST(0x00009F7C00000000 AS DateTime), 4, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (217, N'Honolulu', CAST(0x00009FEE00000000 AS DateTime), 4, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (218, N'Wellington', CAST(0x00009FBF00000000 AS DateTime), 2, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (219, N'New Orleans', CAST(0x0000A2FF00000000 AS DateTime), 5, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (220, N'Petra', CAST(0x00009F9600000000 AS DateTime), 3, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (221, N'Edinburgh', CAST(0x0000A28400000000 AS DateTime), 3, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (222, N'Melbourne', CAST(0x0000A2EB00000000 AS DateTime), 8, 1, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (223, N'Manila', CAST(0x0000A28A00000000 AS DateTime), 4, 1, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (224, N'Houston', CAST(0x0000A08400000000 AS DateTime), 8, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (225, N'Lima', CAST(0x0000A06100000000 AS DateTime), 1, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (226, N'Santiago', CAST(0x0000A39D00000000 AS DateTime), 5, 2, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (227, N'Bogot�', CAST(0x00009ED300000000 AS DateTime), 3, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (228, N'Z�rich', CAST(0x00009FDB00000000 AS DateTime), 3, 2, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (229, N'Trafalgar Square', CAST(0x0000A37D00000000 AS DateTime), 5, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (230, N'Niagara Falls', CAST(0x0000A44900000000 AS DateTime), 6, 2, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (231, N'Notre Dame', CAST(0x0000A18300000000 AS DateTime), 7, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (232, N'Great Wall', CAST(0x0000A19D00000000 AS DateTime), 7, 5, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (233, N'Everland', CAST(0x0000A2F200000000 AS DateTime), 5, 2, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (234, N'Grand Canyon', CAST(0x00009DB400000000 AS DateTime), 2, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (235, N'Ocean Park', CAST(0x00009DED00000000 AS DateTime), 9, 5, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (236, N'Empire State', CAST(0x0000A49900000000 AS DateTime), 3, 3, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (237, N'Pompeii', CAST(0x00009D3300000000 AS DateTime), 2, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (238, N'Versailles', CAST(0x0000A23800000000 AS DateTime), 7, 1, 0)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (239, N'Lake Mead', CAST(0x0000A48500000000 AS DateTime), 7, 3, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (240, N'Lotte World', CAST(0x0000A0CB00000000 AS DateTime), 6, 4, 1)
INSERT [dbo].[Games] ([Id], [Name], [Start], [Duration], [GameTypeId], [IsFinished]) VALUES (241, N'Victoria Peak', CAST(0x0000A2A600000000 AS DateTime), 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Games] OFF
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (1, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (7, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (9, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (13, 5)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (15, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (18, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (19, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (21, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (22, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (22, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (24, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (25, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (29, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (32, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (43, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (44, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (47, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (49, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (55, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (62, 5)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (63, 5)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (64, 5)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (67, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (68, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (79, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (84, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (84, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (87, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (94, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (97, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (103, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (117, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (117, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (121, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (124, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (127, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (128, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (129, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (131, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (134, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (136, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (138, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (142, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (145, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (149, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (150, 5)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (159, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (161, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (164, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (164, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (166, 5)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (169, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (180, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (197, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (203, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (205, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (212, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (214, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (215, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (219, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (233, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (242, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (245, 5)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (264, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (266, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (268, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (271, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (272, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (284, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (286, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (294, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (315, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (323, 5)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (332, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (337, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (342, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (342, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (343, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (345, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (348, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (352, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (356, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (362, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (368, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (372, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (378, 5)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (381, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (385, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (388, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (393, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (398, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (403, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (413, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (413, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (414, 5)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (419, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (430, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (432, 5)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (438, 5)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (439, 1)
GO
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (440, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (448, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (451, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (453, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (467, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (473, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (474, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (481, 5)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (482, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (487, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (489, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (491, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (497, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (504, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (510, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (516, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (516, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (528, 5)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (536, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (544, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (545, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (552, 4)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (556, 1)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (564, 2)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (566, 3)
INSERT [dbo].[GameTypeForbiddenItems] ([ItemId], [GameTypeId]) VALUES (569, 4)
SET IDENTITY_INSERT [dbo].[GameTypes] ON 

INSERT [dbo].[GameTypes] ([Id], [Name], [BonusStatsId]) VALUES (1, N'Expert', 116)
INSERT [dbo].[GameTypes] ([Id], [Name], [BonusStatsId]) VALUES (2, N'Beginner', 117)
INSERT [dbo].[GameTypes] ([Id], [Name], [BonusStatsId]) VALUES (3, N'Kinky', 118)
INSERT [dbo].[GameTypes] ([Id], [Name], [BonusStatsId]) VALUES (4, N'Intermediate', 119)
INSERT [dbo].[GameTypes] ([Id], [Name], [BonusStatsId]) VALUES (5, N'Funny', 120)
SET IDENTITY_INSERT [dbo].[GameTypes] OFF
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (1, N'Adventurers Journal', 2, 92, 720.0000, 24)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (2, N'Aether Walker', 27, 102, 473.0000, 46)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (3, N'Ageless Might', 14, 32, 714.0000, 76)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (4, N'Ahavarion, Spear of Lycander', 28, 109, 313.0000, 20)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (5, N'Akanesh, the Herald of Righteousness', 24, 82, 586.0000, 26)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (6, N'Akarats Awakening', 22, 16, 80.0000, 78)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (7, N'Alabaster Gloves', 2, 39, 65.0000, 41)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (8, N'Amazonian Parma', 11, 105, 745.0000, 64)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (9, N'Ambos Pride', 1, 110, 687.0000, 48)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (10, N'Amulets', 12, 39, 792.0000, 49)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (11, N'Ancestors Grace', 18, 57, 565.0000, 18)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (12, N'Ancient Parthan Defenders', 18, 21, 566.0000, 38)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (13, N'Andariel Visage (Diablo III)', 11, 85, 93.0000, 18)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (14, N'Anessazi Edge', 8, 65, 329.0000, 17)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (15, N'Angel Hair Braid', 4, 55, 750.0000, 8)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (16, N'Angelic Shard', 26, 113, 517.0000, 12)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (17, N'Aquila Cuirass', 23, 21, 405.0000, 76)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (18, N'Arcane Barb', 17, 104, 658.0000, 70)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (19, N'Archfiend Arrows', 9, 48, 531.0000, 8)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (20, N'Archmages Vicalyke', 11, 12, 143.0000, 31)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (21, N'Arcstone', 22, 102, 613.0000, 50)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (22, N'Armor of the Kind Regent', 19, 114, 90.0000, 49)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (23, N'Arreats Law', 16, 71, 604.0000, 43)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (24, N'Arthefs Spark of Life', 27, 21, 292.0000, 4)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (25, N'Atrophy', 7, 72, 494.0000, 45)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (26, N'Autums Call', 3, 77, 406.0000, 50)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (27, N'Avarice Band', 24, 71, 729.0000, 32)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (28, N'Axes', 15, 63, 691.0000, 21)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (29, N'Azurewrath (Diablo III)', 22, 96, 96.0000, 55)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (30, N'Bakkan Caster', 25, 100, 762.0000, 37)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (31, N'Balance', 11, 73, 283.0000, 24)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (32, N'Balefire Caster', 2, 37, 260.0000, 32)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (33, N'Baleful Remnant', 16, 8, 771.0000, 36)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (34, N'Band of Hollow Whispers', 21, 42, 405.0000, 20)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (35, N'Band of the Rue Chambers', 6, 61, 665.0000, 76)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (36, N'Band of Untold Secrets', 7, 44, 627.0000, 51)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (37, N'Bane of the Powerful', 1, 14, 480.0000, 32)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (38, N'Bane of the Stricken', 23, 105, 445.0000, 39)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (39, N'Bane of the Trapped', 13, 96, 165.0000, 29)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (40, N'Barter Town Pads', 5, 92, 699.0000, 64)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (41, N'Bastions Revered', 15, 13, 416.0000, 55)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (42, N'Beckon Sail', 14, 72, 334.0000, 5)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (43, N'Behistun Rune', 15, 108, 611.0000, 67)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (44, N'Belt of the Trove', 10, 41, 387.0000, 56)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (45, N'Belt of Transcendence', 8, 4, 67.0000, 12)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (46, N'Belts', 13, 99, 106.0000, 73)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (47, N'Bezoar Stone', 1, 54, 510.0000, 71)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (48, N'Bitterness', 3, 33, 663.0000, 24)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (49, N'Black Bone Arrows', 17, 2, 53.0000, 35)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (50, N'Blackfeather', 3, 13, 442.0000, 9)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (51, N'Blackguard', 2, 112, 756.0000, 4)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (52, N'Blackhand Key (Diablo III)', 15, 64, 161.0000, 44)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (53, N'Blade of Prophecy', 19, 75, 469.0000, 26)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (54, N'Blade of the Warlord', 27, 77, 274.0000, 54)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (55, N'Blessed of Haull', 6, 73, 318.0000, 20)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (56, N'Blind Faith', 3, 93, 528.0000, 46)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (57, N'Blitzbolter', 24, 70, 18.0000, 40)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (58, N'Blood Brother', 1, 96, 551.0000, 34)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (59, N'Blood-Magic Blade', 10, 74, 529.0000, 5)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (60, N'Blood-Magic Edge', 28, 15, 174.0000, 18)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (61, N'Bloody Pincer', 14, 99, 710.0000, 16)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (62, N'Board Walkers', 19, 72, 477.0000, 71)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (63, N'Body Armor', 8, 97, 201.0000, 57)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (64, N'Boj Anglers', 27, 24, 542.0000, 23)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (65, N'Bombardiers Rucksack', 3, 38, 582.0000, 47)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (66, N'Boneshatter', 24, 51, 67.0000, 13)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (67, N'Boon of the Hoarder', 19, 97, 208.0000, 17)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (68, N'Boots', 16, 63, 782.0000, 44)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (69, N'Boots of Disregard', 22, 31, 458.0000, 42)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (70, N'Borns Key', 7, 63, 42.0000, 53)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (71, N'Bottomless Potion of Amplification', 1, 56, 90.0000, 67)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (72, N'Bottomless Potion of Kulle-Aid', 13, 86, 146.0000, 67)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (73, N'Bottomless Potion of Regeneration', 4, 94, 42.0000, 38)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (74, N'Bottomless Potion of the Diamond', 8, 59, 615.0000, 47)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (75, N'Bottomless Potion of the Tower', 3, 78, 375.0000, 54)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (76, N'Bows', 12, 96, 364.0000, 63)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (77, N'Bracers', 13, 47, 357.0000, 39)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (78, N'Broken Crown', 8, 79, 237.0000, 8)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (79, N'Broken Promises', 7, 30, 216.0000, 31)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (80, N'Bul-Kathoss Wedding Band', 1, 114, 663.0000, 79)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (81, N'Buriza-Do Kyanon (Diablo III)', 3, 51, 713.0000, 68)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (82, N'Burst of Wrath', 17, 80, 237.0000, 69)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (83, N'Butches Carver', 15, 48, 212.0000, 3)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (84, N'Calamity', 16, 9, 68.0000, 9)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (85, N'Cams Rebuttal', 10, 102, 271.0000, 52)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (86, N'Cape of the Dark Night', 10, 34, 431.0000, 77)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (87, N'Captured Nightmare', 23, 89, 135.0000, 22)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (88, N'Captured Soul', 25, 94, 380.0000, 13)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (89, N'Carnevil', 17, 59, 116.0000, 72)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (90, N'Cataclysm', 1, 51, 631.0000, 65)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (91, N'Centurion', 4, 64, 112.0000, 52)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (92, N'Ceremonial Knives', 27, 55, 4.0000, 31)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (93, N'Chaingmail', 28, 74, 479.0000, 18)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (94, N'Chanon Bolter', 19, 76, 272.0000, 36)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (95, N'Chilaniks Chain', 22, 113, 267.0000, 50)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (96, N'Cinder Switch', 5, 9, 41.0000, 31)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (97, N'Cindercoat', 22, 38, 326.0000, 78)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (98, N'Cloak of Deception', 5, 47, 597.0000, 55)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (99, N'Cloaks', 22, 63, 249.0000, 60)
GO
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (100, N'Cluckeye', 12, 21, 587.0000, 20)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (101, N'Convention of the Elements', 6, 66, 103.0000, 38)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (102, N'Cord of the Sherma', 15, 53, 739.0000, 27)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (103, N'Corrupted Ashbringer', 16, 28, 771.0000, 7)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (104, N'Corruption', 21, 2, 161.0000, 74)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (105, N'Cosmic Strand', 8, 44, 243.0000, 32)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (106, N'Countess Julias Cameo', 21, 112, 448.0000, 77)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (107, N'Covens Criterion', 27, 68, 592.0000, 1)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (108, N'Crashing Rain', 24, 100, 602.0000, 12)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (109, N'Crossbows', 8, 46, 163.0000, 70)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (110, N'Crown of the Primus', 4, 24, 12.0000, 63)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (111, N'Crusader Shields', 15, 37, 545.0000, 11)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (112, N'Crushbane', 20, 10, 116.0000, 2)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (113, N'Crystal Fist', 18, 41, 236.0000, 73)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (114, N'Custerian Wristguards', 10, 2, 704.0000, 6)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (115, N'Daggers', 13, 56, 198.0000, 23)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (116, N'Daibo', 27, 2, 360.0000, 69)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (117, N'Dark Mages Shade', 8, 40, 196.0000, 73)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (118, N'Darklight', 24, 80, 483.0000, 50)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (119, N'Dawn', 3, 93, 96.0000, 46)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (120, N'Dead Mans Legacy', 17, 57, 356.0000, 22)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (121, N'Deadeye (Diablo III)', 12, 75, 373.0000, 42)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (122, N'Deadly Rebirth', 1, 40, 219.0000, 53)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (123, N'Death Watch Mantle', 24, 8, 432.0000, 26)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (124, N'Deaths Bargain', 2, 24, 354.0000, 66)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (125, N'Deathseers Cowl', 15, 53, 348.0000, 76)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (126, N'Defender of Westmarch', 28, 100, 479.0000, 18)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (127, N'Defiled Doll', 11, 103, 146.0000, 16)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (128, N'Demon Claw', 24, 60, 321.0000, 58)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (129, N'Demon Hand', 16, 62, 609.0000, 28)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (130, N'Demon Machine (Diablo III)', 28, 43, 290.0000, 57)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (131, N'Demon Skin', 10, 67, 9.0000, 27)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (132, N'Denial', 22, 6, 164.0000, 74)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (133, N'Depth Diggers', 16, 99, 444.0000, 24)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (134, N'Devastator', 15, 84, 492.0000, 24)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (135, N'Devil Tongue', 20, 87, 584.0000, 20)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (136, N'Doombringer (Diablo III)', 5, 87, 487.0000, 61)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (137, N'Dovu Energy Trap', 4, 32, 633.0000, 22)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (138, N'Drakons Lesson', 4, 73, 341.0000, 40)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (139, N'Dread Iron', 7, 7, 191.0000, 43)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (140, N'Earthshatter', 3, 21, 160.0000, 19)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (141, N'Eberli Charo', 6, 6, 619.0000, 10)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (142, N'Echoing Fury', 14, 20, 354.0000, 54)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (143, N'Element of Celerity', 1, 13, 354.0000, 57)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (144, N'Emimeis Duffel', 2, 9, 375.0000, 69)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (145, N'Empyrean Messenger', 13, 101, 503.0000, 24)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (146, N'Enchanting Favor', 15, 29, 132.0000, 4)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (147, N'Enforcer', 21, 47, 30.0000, 51)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (148, N'Envious Blade', 13, 46, 182.0000, 69)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (149, N'Erlang Shen', 6, 102, 105.0000, 23)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (150, N'Esoteric Alteration', 22, 9, 675.0000, 73)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (151, N'Essence of the Twin Seas', 6, 107, 468.0000, 23)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (152, N'Eternal Power Capsule', 25, 4, 348.0000, 29)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (153, N'Eternal Union', 20, 4, 47.0000, 74)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (154, N'Etrayu', 19, 25, 576.0000, 79)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (155, N'Eun-Jang-Do', 3, 29, 617.0000, 56)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (156, N'Exarian', 3, 74, 745.0000, 2)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (157, N'Eye of Etlich (Diablo III)', 8, 98, 412.0000, 21)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (158, N'Eye of Peshkov', 26, 81, 772.0000, 59)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (159, N'Eyes of the Dead', 12, 79, 642.0000, 57)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (160, N'Faithful Memory', 22, 55, 191.0000, 52)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (161, N'Fate of the Fell', 2, 53, 721.0000, 23)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (162, N'Fire Brand', 6, 36, 235.0000, 53)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (163, N'Fire Walkers', 22, 52, 393.0000, 21)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (164, N'Fist Weapons', 9, 102, 157.0000, 56)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (165, N'Fjord Cutter', 28, 96, 149.0000, 41)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (166, N'Flails', 1, 20, 278.0000, 15)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (167, N'Fleeting Strap', 15, 59, 670.0000, 6)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (168, N'Flesh Tearer', 16, 100, 251.0000, 72)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (169, N'Fleshrake', 10, 106, 571.0000, 39)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (170, N'Fletchers Pride', 18, 107, 714.0000, 23)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (171, N'Flint Ripper Arrowheads', 4, 35, 193.0000, 68)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (172, N'Flying Dragon', 26, 56, 621.0000, 50)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (173, N'Fragment of Destiny', 8, 40, 163.0000, 4)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (174, N'Freeze of Deflection', 18, 26, 139.0000, 69)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (175, N'Frostburn (Diablo III)', 22, 87, 509.0000, 24)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (176, N'Frozen Blood', 19, 10, 21.0000, 11)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (177, N'Frydehrs Wrath', 20, 48, 390.0000, 29)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (178, N'Fulminator', 26, 23, 276.0000, 44)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (179, N'Fury of the Vanished Peak', 2, 70, 317.0000, 49)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (180, N'Gauntlets of the Rain', 25, 9, 421.0000, 31)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (181, N'Gazing Demise', 19, 82, 322.0000, 13)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (182, N'Gehennas', 9, 14, 411.0000, 71)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (183, N'Gem of Ease', 28, 78, 317.0000, 30)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (184, N'Gem of Efficacious Toxin', 9, 95, 726.0000, 12)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (185, N'Gems', 7, 73, 137.0000, 39)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (186, N'Genzaniku', 25, 33, 779.0000, 42)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (187, N'Gesture of Orpheus', 10, 75, 365.0000, 16)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (188, N'Giant Skull (Diablo III)', 17, 110, 2.0000, 36)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (189, N'Gift of Silaria', 28, 72, 527.0000, 22)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (190, N'Girdle of Giants', 8, 17, 134.0000, 54)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (191, N'Gladiator Gauntlets', 24, 33, 735.0000, 12)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (192, N'Gloves', 11, 10, 103.0000, 22)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (193, N'Gloves of Worship', 18, 39, 621.0000, 74)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (194, N'Glowing Ore', 27, 26, 102.0000, 12)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (195, N'Gogok of Swiftness', 16, 96, 100.0000, 11)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (196, N'Golden Flense', 19, 105, 755.0000, 8)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (197, N'Golden Gorget of Leoric', 7, 77, 772.0000, 3)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (198, N'Golden Scourge', 3, 56, 477.0000, 22)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (199, N'Goldskin (Diablo III)', 13, 19, 449.0000, 62)
GO
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (200, N'Goldwrap (Diablo III)', 11, 89, 207.0000, 68)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (201, N'Greater Rift Keystone', 3, 50, 396.0000, 43)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (202, N'Griswolds Masterpiece', 21, 82, 342.0000, 7)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (203, N'Griswolds Perfection', 3, 110, 117.0000, 55)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (204, N'Griswolds Scribblings', 11, 50, 405.0000, 46)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (205, N'Gungdo Gear', 18, 31, 36.0000, 77)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (206, N'Gyana Na Kashu', 4, 70, 734.0000, 70)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (207, N'Gyrfalcons Foote', 2, 21, 163.0000, 7)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (208, N'Hack', 14, 67, 147.0000, 75)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (209, N'Halcyons Ascent', 6, 82, 157.0000, 20)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (210, N'Hallowed Bulwark', 10, 28, 326.0000, 69)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (211, N'Halo of Arlyse', 4, 16, 659.0000, 44)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (212, N'Hammer Jammers', 2, 21, 428.0000, 42)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (213, N'Hand Crossbows', 23, 94, 302.0000, 48)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (214, N'Hand of the Prophet (Focus)', 27, 90, 330.0000, 40)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (215, N'Harrington Waistguard', 13, 81, 587.0000, 10)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (216, N'Harvest Moon', 24, 77, 588.0000, 74)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (217, N'Haunt of Vaxo', 3, 114, 626.0000, 77)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (218, N'Haunting Girdle', 24, 44, 618.0000, 17)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (219, N'Heart of Evil', 5, 104, 34.0000, 9)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (220, N'Heart of Iron', 23, 84, 743.0000, 51)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (221, N'Heart Slaughter', 1, 109, 652.0000, 31)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (222, N'Hellcat Waistguard', 16, 2, 735.0000, 21)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (223, N'Hellfire Amulet', 17, 59, 201.0000, 46)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (224, N'Hellfire Ring', 26, 92, 752.0000, 44)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (225, N'Hellfire Ring (Dexterity)', 15, 46, 29.0000, 28)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (226, N'Hellfire Ring (Intelligence)', 4, 47, 4.0000, 60)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (227, N'Hellfire Ring (other)', 22, 70, 168.0000, 34)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (228, N'Hellfire Ring (Strength)', 21, 38, 731.0000, 5)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (229, N'Hellfire Ring (Vitality)', 17, 104, 222.0000, 7)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (230, N'Hellrack (Diablo III)', 20, 96, 300.0000, 3)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (231, N'Hellskull', 6, 21, 620.0000, 61)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (232, N'Helltrapper', 16, 17, 683.0000, 40)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (233, N'Helms', 18, 106, 219.0000, 27)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (234, N'Hexing Pants of Mr. Yan', 27, 52, 446.0000, 58)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (235, N'Hierophants Seal', 3, 74, 146.0000, 78)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (236, N'Hillenbrands Training Sword', 13, 30, 135.0000, 61)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (237, N'Hilt of the Silver Wolf', 2, 93, 26.0000, 13)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (238, N'Holy Beacon', 12, 93, 190.0000, 34)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (239, N'Holy Point Shot', 2, 83, 464.0000, 24)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (240, N'Homing Pads', 28, 41, 407.0000, 58)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (241, N'Homunculus (Diablo III)', 14, 81, 517.0000, 43)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (242, N'Human Cartilage', 25, 25, 187.0000, 59)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (243, N'Hwoj Wrap', 27, 23, 225.0000, 17)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (244, N'Ice Climbers', 28, 21, 166.0000, 66)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (245, N'Iceblink (Diablo III)', 28, 47, 177.0000, 47)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (246, N'Idol of Terror', 14, 53, 612.0000, 65)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (247, N'Illusory Boots', 22, 30, 250.0000, 11)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (248, N'In-Geom', 21, 2, 472.0000, 33)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (249, N'Incense Torch of the Grand Temple', 2, 115, 533.0000, 28)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (250, N'Insatiable Belt', 24, 1, 306.0000, 17)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (251, N'Invigorating Gemstone', 16, 2, 687.0000, 75)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (252, N'Inviolable Faith', 4, 15, 305.0000, 71)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (253, N'Iron Wolves Doctrine', 11, 2, 722.0000, 30)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (254, N'Irontoe Mudsputters', 9, 59, 339.0000, 17)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (255, N'Ivory Tower', 10, 31, 414.0000, 13)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (256, N'Izzuccob', 4, 40, 472.0000, 49)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (257, N'Jaces Hammer of Vigilance', 15, 113, 410.0000, 33)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (258, N'Jangs Envelopment', 25, 92, 97.0000, 35)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (259, N'Jawbreaker', 22, 85, 3.0000, 49)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (260, N'Jekangbord', 11, 20, 422.0000, 39)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (261, N'Justice Lantern', 7, 76, 84.0000, 65)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (262, N'Justinians Mercy', 4, 6, 768.0000, 75)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (263, N'Kmar Tenclip', 3, 66, 189.0000, 37)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (264, N'Kassars Retribution', 26, 57, 360.0000, 42)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (265, N'Kekegis Unbreakable Spirit', 6, 69, 56.0000, 71)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (266, N'Kethryes Splint', 23, 12, 648.0000, 63)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (267, N'Key of Bones', 6, 13, 452.0000, 17)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (268, N'Key of Evil', 11, 15, 366.0000, 25)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (269, N'Key of Gluttony', 25, 14, 638.0000, 1)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (270, N'Keystone of Trials', 18, 30, 401.0000, 22)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (271, N'Kill', 14, 54, 696.0000, 30)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (272, N'Kotuurs Brace', 24, 14, 7.0000, 58)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (273, N'Kredes Flame', 21, 84, 765.0000, 62)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (274, N'Kridershot', 7, 24, 514.0000, 61)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (275, N'Kymbos Gold', 1, 90, 179.0000, 53)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (276, N'Lacuni Prowlers', 25, 103, 275.0000, 59)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (277, N'Lai Yuis Persuader', 20, 13, 315.0000, 38)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (278, N'Lai Yuis Taiji', 7, 37, 228.0000, 60)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (279, N'Lamentation', 24, 59, 212.0000, 67)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (280, N'Last Breath', 1, 102, 234.0000, 12)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (281, N'Legendary Gems', 25, 101, 244.0000, 47)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (282, N'Leonine Bow of Hashir', 11, 64, 420.0000, 21)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (283, N'Leorics Crown', 6, 65, 67.0000, 18)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (284, N'Leorics Regret', 28, 107, 194.0000, 47)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (285, N'Leorics Signet', 15, 37, 365.0000, 27)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (286, N'Lidless Wall (Diablo III)', 27, 109, 661.0000, 30)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (287, N'Light of Grace', 2, 83, 746.0000, 54)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (288, N'List of Legendary Items', 10, 25, 67.0000, 44)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (289, N'Living Flame', 10, 68, 671.0000, 77)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (290, N'Living Umbral Oath', 28, 37, 393.0000, 28)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (291, N'Logans Claw', 3, 18, 140.0000, 79)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (292, N'Longshot', 25, 13, 565.0000, 62)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (293, N'Lost Boys', 11, 27, 450.0000, 36)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (294, N'Lut Socks', 20, 100, 30.0000, 43)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (295, N'Lyekurns Diary', 20, 74, 524.0000, 14)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (296, N'Maces', 7, 82, 760.0000, 61)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (297, N'Mad Monarchs Scepter', 24, 54, 370.0000, 7)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (298, N'Madawcs Sorrow', 3, 46, 520.0000, 8)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (299, N'Madstone', 13, 39, 795.0000, 52)
GO
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (300, N'Magefist (Diablo III)', 6, 102, 70.0000, 41)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (301, N'Maghdas Tormented Soul', 17, 8, 783.0000, 56)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (302, N'Maloths Focus', 18, 38, 743.0000, 49)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (303, N'Manald Heal (Diablo III)', 10, 81, 747.0000, 61)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (304, N'Manticore', 21, 79, 243.0000, 33)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (305, N'Mantle of the Rydraelm', 11, 72, 301.0000, 77)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (306, N'Maras Kaleidoscope (Diablo III)', 1, 9, 791.0000, 68)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (307, N'Mask of Jeram', 19, 2, 171.0000, 77)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (308, N'Maximus', 6, 31, 467.0000, 54)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (309, N'Mempo of Twilight', 11, 65, 790.0000, 18)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (310, N'Messerschmidts Reaver (Diablo III)', 10, 9, 282.0000, 46)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (311, N'Mighty Belts', 1, 28, 762.0000, 49)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (312, N'Mighty Weapons', 8, 78, 67.0000, 69)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (313, N'Mirinae, Teardrop of the Starweaver', 12, 73, 91.0000, 50)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (314, N'Mojos', 11, 36, 604.0000, 35)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (315, N'Molten Wildebeests Gizzard', 22, 29, 309.0000, 23)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (316, N'Monster Hunter', 10, 100, 611.0000, 30)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (317, N'Moon Slayer', 7, 21, 532.0000, 64)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (318, N'Moonlight Ward', 13, 51, 624.0000, 25)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (319, N'Moratorium', 5, 76, 658.0000, 5)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (320, N'Morticks Brace', 18, 66, 776.0000, 42)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (321, N'Mutilation Guard', 7, 50, 500.0000, 54)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (322, N'Mykens Ball of Hate', 11, 7, 402.0000, 15)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (323, N'Mystical Source', 26, 90, 506.0000, 7)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (324, N'Nagelring (Diablo III)', 8, 8, 139.0000, 42)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (325, N'Nailbiter', 10, 36, 123.0000, 28)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (326, N'Neanderthal', 9, 2, 174.0000, 73)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (327, N'Nemesis Bracers', 26, 52, 675.0000, 75)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (328, N'Nights Reaping', 2, 79, 719.0000, 22)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (329, N'Nilfurs Boast', 5, 58, 779.0000, 58)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (330, N'Nutcracker', 21, 79, 103.0000, 21)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (331, N'Obsidian Ring of the Zodiac', 27, 9, 642.0000, 72)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (332, N'Oculus Ring', 2, 99, 799.0000, 79)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (333, N'Odyn Son', 24, 61, 21.0000, 2)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (334, N'Odysseys End', 24, 111, 717.0000, 74)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (335, N'Omnislash', 18, 11, 130.0000, 54)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (336, N'Omryns Chain', 5, 25, 331.0000, 58)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (337, N'Ouroboros', 15, 54, 120.0000, 53)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (338, N'Overwhelming Desire', 19, 96, 122.0000, 2)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (339, N'Pain Enhancer', 21, 12, 199.0000, 55)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (340, N'Pandemonium Loop', 1, 79, 383.0000, 58)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (341, N'Pants', 22, 78, 438.0000, 73)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (342, N'Pauldrons', 21, 40, 641.0000, 49)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (343, N'Pauldrons of the Skeleton King', 4, 19, 183.0000, 61)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (344, N'Penders Purchase', 1, 35, 232.0000, 8)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (345, N'Phial of Weakness', 28, 28, 382.0000, 22)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (346, N'Pig Sticker', 3, 85, 189.0000, 57)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (347, N'Piro Marella', 10, 5, 748.0000, 55)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (348, N'Pledge of Caldeum', 17, 14, 193.0000, 50)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (349, N'Polearms', 17, 54, 347.0000, 74)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (350, N'Potions', 24, 11, 312.0000, 32)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (351, N'Pox Faulds', 5, 23, 284.0000, 27)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (352, N'Pride of Cassius', 25, 51, 245.0000, 44)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (353, N'Prides Fall', 15, 91, 465.0000, 1)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (354, N'Profane Pauldrons', 25, 97, 483.0000, 49)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (355, N'Promise of Glory', 19, 92, 683.0000, 77)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (356, N'Pus Spitter (Diablo III)', 28, 31, 705.0000, 27)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (357, N'Puzzle Ring', 13, 52, 567.0000, 5)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (358, N'Quaking Vial', 25, 70, 306.0000, 76)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (359, N'Quetzalcoatl', 6, 79, 294.0000, 4)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (360, N'Quick Draw Belt', 22, 113, 796.0000, 37)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (361, N'Quivers', 20, 52, 301.0000, 39)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (362, N'Rabid Strike', 19, 49, 231.0000, 67)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (363, N'Rakoffs Glass of Life', 4, 96, 694.0000, 77)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (364, N'Ramaladnis Gift', 14, 58, 326.0000, 8)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (365, N'Ranslors Folly', 11, 4, 204.0000, 24)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (366, N'Razor Strop', 11, 16, 396.0000, 17)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (367, N'Reapers Fear', 14, 7, 508.0000, 20)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (368, N'Reapers Wraps', 4, 76, 413.0000, 61)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (369, N'Rechels Ring of Larceny', 17, 62, 268.0000, 45)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (370, N'Relic of Akarat', 7, 52, 503.0000, 61)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (371, N'Remorseless', 22, 38, 157.0000, 34)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (372, N'Rhenho Flayer', 2, 108, 388.0000, 65)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (373, N'Ribald Etchings', 14, 112, 339.0000, 61)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (374, N'Rimeheart', 1, 51, 33.0000, 22)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (375, N'Ring of Royal Grandeur', 3, 68, 554.0000, 53)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (376, N'Rings', 1, 16, 673.0000, 66)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (377, N'Robes of the Rydraelm', 21, 64, 208.0000, 53)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (378, N'Rogars Huge Stone', 8, 17, 254.0000, 75)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (379, N'Rondals Locket', 20, 67, 569.0000, 65)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (380, N'Rozpedins Force', 23, 33, 690.0000, 45)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (381, N'Rozpedins Staff', 13, 24, 11.0000, 31)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (382, N'Ruinstoke', 6, 80, 278.0000, 56)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (383, N'Rydraelm Tome', 17, 33, 625.0000, 67)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (384, N'Sacred Harvester', 25, 32, 678.0000, 40)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (385, N'Saffron Wrap', 16, 2, 221.0000, 28)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (386, N'Salvation (Diablo III)', 19, 59, 650.0000, 59)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (387, N'Sanguinary Vambraces', 6, 72, 520.0000, 60)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (388, N'Sash of Knives', 27, 11, 702.0000, 35)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (389, N'Scarbringer', 8, 103, 264.0000, 43)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (390, N'Schaefers Hammer (Diablo III)', 27, 50, 341.0000, 16)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (391, N'Scrimshaw', 10, 16, 609.0000, 55)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (392, N'Sebors Nightmare', 8, 18, 739.0000, 54)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (393, N'See No Evil', 16, 105, 784.0000, 38)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (394, N'Seismic Treads', 17, 11, 182.0000, 51)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (395, N'Serpents Sparker', 16, 89, 354.0000, 69)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (396, N'Seven Sins', 9, 26, 380.0000, 75)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (397, N'Sever', 26, 34, 782.0000, 14)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (398, N'Shard of Entsteig Plate', 13, 110, 237.0000, 47)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (399, N'Shard of Hate', 27, 57, 546.0000, 45)
GO
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (400, N'Shattered Core', 3, 70, 180.0000, 28)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (401, N'Shens Delight', 11, 6, 162.0000, 13)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (402, N'Shi Mizus Haori', 26, 73, 528.0000, 5)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (403, N'Shields', 12, 28, 380.0000, 16)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (404, N'Shimmering Quill', 13, 112, 140.0000, 25)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (405, N'Shuddering Demon Bone', 28, 72, 13.0000, 54)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (406, N'Shukranis Triumph', 14, 63, 770.0000, 43)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (407, N'Silver Star Piercers', 11, 105, 265.0000, 45)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (408, N'Simplicitys Strength', 6, 23, 29.0000, 47)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (409, N'Sin Seekers', 10, 98, 442.0000, 34)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (410, N'Singularity', 13, 62, 393.0000, 79)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (411, N'Skeleton Key', 18, 81, 236.0000, 26)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (412, N'Skelons Deceit', 28, 69, 531.0000, 44)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (413, N'Skelons Dice', 17, 1, 356.0000, 39)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (414, N'Skorn', 5, 36, 559.0000, 64)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (415, N'Skull Grasp', 8, 114, 95.0000, 64)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (416, N'Skull of Raylend', 20, 31, 443.0000, 38)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (417, N'Skull of Resonance', 20, 81, 45.0000, 36)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (418, N'Sky Splitter', 24, 29, 14.0000, 60)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (419, N'Skycutter', 27, 17, 718.0000, 40)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (420, N'Skywarden', 21, 53, 526.0000, 60)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (421, N'Slave Bonds', 5, 92, 747.0000, 18)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (422, N'Sledge Fist', 22, 78, 243.0000, 69)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (423, N'Sledge of Athskeleng', 5, 41, 743.0000, 74)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (424, N'Slipkas Letter Opener', 22, 113, 466.0000, 61)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (425, N'Sloraks Madness', 21, 41, 108.0000, 42)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (426, N'Smoking Thurible', 11, 32, 428.0000, 78)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (427, N'Solanium', 3, 48, 569.0000, 30)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (428, N'Sorrowful Countenance', 6, 66, 338.0000, 55)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (429, N'Soulsmasher', 25, 45, 797.0000, 51)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (430, N'Sources', 28, 104, 717.0000, 23)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (431, N'Spaulders of Zakara', 6, 60, 335.0000, 7)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (432, N'Spears', 6, 98, 94.0000, 77)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (433, N'Spectrum', 8, 48, 737.0000, 36)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (434, N'Spines of Seething Hatred', 18, 62, 177.0000, 77)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (435, N'Spirit Guards', 13, 45, 775.0000, 55)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (436, N'Spirit Stones', 26, 25, 306.0000, 16)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (437, N'Spite', 13, 2, 80.0000, 10)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (438, N'Split Tusk', 22, 64, 717.0000, 13)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (439, N'Squirts Necklace', 1, 23, 437.0000, 73)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (440, N'St. Archews Gage', 5, 55, 727.0000, 48)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (441, N'Staff of Herding', 27, 19, 42.0000, 24)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (442, N'Staff of Kyro', 5, 49, 534.0000, 43)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (443, N'Stalgards Decimator', 1, 93, 561.0000, 26)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (444, N'Standoff', 6, 34, 674.0000, 74)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (445, N'Starfire', 28, 42, 423.0000, 37)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (446, N'Starmetal Kukri', 27, 100, 733.0000, 23)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (447, N'Starspine', 12, 21, 150.0000, 48)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (448, N'Staves', 27, 114, 769.0000, 40)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (449, N'Steady Strikers', 17, 86, 581.0000, 48)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (450, N'Stolen Ring', 24, 47, 675.0000, 55)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (451, N'Stone Gauntlets', 18, 51, 536.0000, 70)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (452, N'Stone of Jordan (Diablo III)', 6, 56, 550.0000, 13)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (453, N'Storm Crow', 7, 87, 197.0000, 54)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (454, N'Stormshield (Diablo III)', 21, 79, 422.0000, 66)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (455, N'String of Ears (Diablo III)', 25, 35, 113.0000, 66)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (456, N'Strongarm Bracers', 26, 31, 315.0000, 74)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (457, N'Sublime Conviction', 14, 51, 556.0000, 30)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (458, N'Sun Keeper', 23, 71, 753.0000, 59)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (459, N'Sunder', 22, 42, 668.0000, 60)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (460, N'Swamp Land Waders', 22, 100, 193.0000, 22)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (461, N'Swiftmount', 15, 28, 755.0000, 27)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (462, N'Swords', 20, 65, 131.0000, 66)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (463, N'Sydyru Bone', 17, 89, 232.0000, 46)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (464, N'Sydyru Crust', 5, 53, 458.0000, 40)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (465, N'Symbol of the Guardian Brotherhood', 2, 83, 645.0000, 29)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (466, N'Talisman of Aranoch', 20, 24, 393.0000, 34)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (467, N'Tasker and Theo', 5, 5, 452.0000, 9)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (468, N'Telrandens Hand', 6, 50, 303.0000, 39)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (469, N'The Ancient Bonesaber of Zumakalis', 20, 26, 536.0000, 73)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (470, N'The Broken Staff', 14, 63, 399.0000, 63)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (471, N'The Burning Axe of Sankis', 17, 11, 37.0000, 59)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (472, N'The Butchers Sickle', 2, 43, 782.0000, 13)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (473, N'The Cloak of the Garwulf', 26, 6, 662.0000, 49)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (474, N'The Clouds and the Moon', 13, 4, 326.0000, 65)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (475, N'The Crudest Boots', 20, 94, 338.0000, 12)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (476, N'The Dagger of Darts', 13, 65, 157.0000, 75)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (477, N'The Ess of Johan', 21, 109, 613.0000, 54)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (478, N'The Executioner', 14, 62, 305.0000, 23)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (479, N'The Eye of the Storm', 11, 95, 63.0000, 21)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (480, N'The Final Witness', 10, 78, 16.0000, 76)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (481, N'The Fist of AzTurrasq', 26, 97, 472.0000, 5)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (482, N'The Flavor of Time', 18, 99, 183.0000, 43)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (483, N'The Flow of Eternity', 21, 104, 246.0000, 37)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (484, N'The Furnace', 14, 53, 223.0000, 74)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (485, N'The Gavel of Judgment', 22, 31, 418.0000, 17)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (486, N'The Gidbinn (Diablo III)', 23, 34, 128.0000, 48)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (487, N'The Grand Vizier', 26, 79, 298.0000, 56)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (488, N'The Grandfather (Diablo III)', 2, 68, 522.0000, 69)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (489, N'The Grin Reaper', 12, 88, 375.0000, 42)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (490, N'The Helm of Command', 2, 5, 492.0000, 70)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (491, N'The Helm of Rule', 11, 104, 521.0000, 59)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (492, N'The Horadric Hamburger', 17, 107, 762.0000, 39)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (493, N'The Inquisitor', 12, 62, 590.0000, 63)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (494, N'The Laws of Seph', 3, 40, 724.0000, 10)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (495, N'The Magi', 11, 104, 416.0000, 4)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (496, N'The Magistrate', 17, 4, 178.0000, 46)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (497, N'The Minds Eye', 26, 103, 501.0000, 45)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (498, N'The Mortal Drama', 19, 39, 184.0000, 48)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (499, N'The Murlocket', 3, 72, 207.0000, 34)
GO
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (500, N'The Ninth Cirri Satchel', 25, 36, 172.0000, 12)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (501, N'The Oculus (Diablo III)', 16, 77, 34.0000, 32)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (502, N'The Paddle', 12, 2, 290.0000, 71)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (503, N'The Ravens Wing', 2, 55, 79.0000, 70)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (504, N'The Short Mans Finger', 4, 82, 771.0000, 60)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (505, N'The Smoldering Core', 9, 37, 215.0000, 36)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (506, N'The Spider Queen�s Grasp', 11, 50, 326.0000, 48)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (507, N'The Star of Azkaranth', 13, 10, 549.0000, 57)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (508, N'The Sultan of Blinding Sand', 14, 50, 460.0000, 64)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (509, N'The Swami', 14, 78, 211.0000, 17)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (510, N'The Tall Mans Finger', 10, 35, 322.0000, 50)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (511, N'The Three Hundredth Spear', 21, 82, 732.0000, 20)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (512, N'The Tormentor', 5, 12, 735.0000, 51)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (513, N'The Undisputed Champion', 11, 91, 229.0000, 36)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (514, N'The Wedge', 3, 43, 393.0000, 50)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (515, N'The Witching Hour', 18, 75, 651.0000, 14)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (516, N'The Zweihander', 11, 39, 289.0000, 67)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (517, N'Thing of the Deep', 26, 37, 799.0000, 29)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (518, N'Thunderfury, Blessed Blade of the Windseeker', 28, 46, 540.0000, 3)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (519, N'Tiklandian Visage', 7, 96, 665.0000, 56)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (520, N'Torn Soul', 1, 10, 638.0000, 6)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (521, N'TragOul Coils', 23, 112, 553.0000, 19)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (522, N'Triumvirate', 24, 114, 318.0000, 2)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (523, N'Two-Handed Axes', 9, 83, 187.0000, 54)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (524, N'Two-Handed Flails', 11, 13, 583.0000, 17)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (525, N'Two-Handed Maces', 20, 50, 51.0000, 74)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (526, N'Two-Handed Mighty Weapons', 12, 86, 283.0000, 54)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (527, N'Two-Handed Swords', 10, 99, 776.0000, 77)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (528, N'Tyraels Might (Diablo III)', 27, 38, 607.0000, 8)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (529, N'Tzo Krins Gaze', 10, 28, 628.0000, 52)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (530, N'Uhkapian Serpent', 12, 77, 250.0000, 34)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (531, N'Umbral Oath', 9, 88, 14.0000, 42)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (532, N'Unbound Bolt', 10, 18, 275.0000, 19)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (533, N'Unending War', 5, 66, 89.0000, 51)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (534, N'Unity', 12, 19, 18.0000, 7)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (535, N'Unrelenting Phalanx', 4, 78, 624.0000, 36)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (536, N'Urn of Quickening', 8, 27, 543.0000, 63)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (537, N'Uskang', 26, 20, 51.0000, 28)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (538, N'Utars Roar', 10, 23, 498.0000, 30)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (539, N'Vadims Surge', 10, 85, 182.0000, 63)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (540, N'Valtheks Rebuke', 14, 88, 573.0000, 71)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (541, N'Velvet Camaral', 5, 62, 373.0000, 35)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (542, N'Vengeful Wind', 16, 68, 507.0000, 42)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (543, N'Venomhusk', 5, 35, 350.0000, 25)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (544, N'Vial of Putridness', 19, 85, 628.0000, 34)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (545, N'Vigilance', 4, 108, 407.0000, 77)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (546, N'Vigilante Belt', 22, 32, 336.0000, 52)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (547, N'Vile Ward', 15, 105, 516.0000, 69)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (548, N'Visage of Giyua', 10, 18, 167.0000, 33)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (549, N'VoToyias Spiker', 13, 49, 701.0000, 29)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (550, N'Voodoo Masks', 24, 67, 117.0000, 7)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (551, N'Wall of Bone', 2, 111, 537.0000, 43)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (552, N'Wall of Man', 12, 79, 368.0000, 12)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (553, N'Wand of Woh', 19, 23, 400.0000, 18)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (554, N'Wands', 1, 95, 16.0000, 71)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (555, N'War of the Dead', 10, 10, 631.0000, 43)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (556, N'Warmonger', 19, 107, 773.0000, 67)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (557, N'Warstaff of General Quang', 23, 16, 490.0000, 49)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (558, N'Warzechian Armguards', 24, 93, 491.0000, 53)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (559, N'White Oak Splinter', 10, 108, 36.0000, 24)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (560, N'Wildwood', 6, 61, 537.0000, 20)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (561, N'Windforce (Diablo III)', 19, 27, 742.0000, 29)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (562, N'Winter Flurry', 1, 55, 222.0000, 41)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (563, N'Wirts Original Leg', 14, 51, 367.0000, 3)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (564, N'Wizard Hats', 12, 94, 121.0000, 76)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (565, N'Wizardspike (Diablo III)', 15, 47, 133.0000, 78)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (566, N'Wojahnni Assaulter', 12, 106, 706.0000, 38)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (567, N'Won Khim Lau', 5, 10, 702.0000, 5)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (568, N'Wondrous Deflectors', 27, 105, 137.0000, 35)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (569, N'Wooden Stake', 11, 35, 96.0000, 46)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (570, N'Wormwood', 27, 68, 721.0000, 60)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (571, N'Woven Plate', 3, 28, 709.0000, 32)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (572, N'Wrath of the Bone King', 24, 63, 413.0000, 71)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (573, N'Wreath of Lightning', 14, 86, 489.0000, 52)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (574, N'Wyrdward', 28, 79, 26.0000, 72)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (575, N'Xephirian Amulet', 26, 2, 339.0000, 57)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (576, N'Zeis Stone of Vengeance', 6, 108, 371.0000, 28)
INSERT [dbo].[Items] ([Id], [Name], [ItemTypeId], [StatisticId], [Price], [MinLevel]) VALUES (577, N'Ziggurat Tooth', 16, 47, 788.0000, 56)
SET IDENTITY_INSERT [dbo].[Items] OFF
SET IDENTITY_INSERT [dbo].[ItemTypes] ON 

INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (1, N'Axe')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (2, N'Dagger')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (3, N'Mace')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (4, N'Spear')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (5, N'Sword')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (6, N'Flail')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (7, N'Staves')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (8, N'Bow')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (9, N'Crossbow')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (10, N'Wand')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (11, N'Helm')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (12, N'Spirit Stone')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (13, N'Voodoo Mask')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (14, N'Wizard Hat')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (15, N'Pauldron')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (16, N'Chest Armor')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (17, N'Cloaks')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (18, N'Bracer')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (19, N'Glove')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (20, N'Belt')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (21, N'Pants')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (22, N'Boots')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (23, N'Amulet')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (24, N'Ring')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (25, N'Shield')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (26, N'Mojos')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (27, N'Orbs')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (28, N'Quivers')
SET IDENTITY_INSERT [dbo].[ItemTypes] OFF
SET IDENTITY_INSERT [dbo].[Statistics] ON 

INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (1, 20, 15, 5, 10, 5)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (2, 12, 15, 12, 15, 3)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (4, 14, 13, 16, 12, 8)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (5, 10, 17, 7, 8, 12)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (6, 7, 20, 14, 11, 13)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (7, 9, 10, 18, 18, 15)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (8, 12, 11, 13, 9, 5)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (9, 13, 8, 9, 13, 10)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (10, 17, 12, 10, 5, 6)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (11, 15, 5, 8, 2, 18)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (12, 4, 14, 3, 19, 16)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (13, 11, 7, 6, 17, 9)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (14, 18, 9, 13, 3, 10)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (15, 10, 11, 15, 8, 17)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (16, 9, 5, 3, 13, 17)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (17, 18, 7, 16, 11, 11)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (18, 9, 4, 8, 8, 10)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (19, 7, 19, 4, 1, 5)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (20, 18, 12, 8, 18, 19)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (21, 5, 7, 18, 10, 19)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (22, 14, 1, 14, 15, 11)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (23, 17, 15, 15, 18, 17)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (24, 3, 16, 15, 1, 3)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (25, 9, 12, 12, 5, 6)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (26, 9, 12, 6, 9, 3)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (27, 13, 9, 2, 16, 10)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (28, 10, 12, 15, 6, 4)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (29, 14, 8, 2, 7, 15)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (30, 15, 14, 16, 4, 16)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (31, 16, 7, 13, 6, 6)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (32, 10, 6, 7, 15, 12)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (33, 11, 5, 17, 2, 7)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (34, 2, 18, 14, 8, 1)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (35, 13, 14, 9, 16, 17)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (36, 10, 11, 2, 9, 2)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (37, 5, 2, 13, 15, 12)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (38, 7, 15, 13, 2, 5)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (39, 6, 11, 18, 6, 11)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (40, 1, 6, 13, 10, 7)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (41, 6, 7, 15, 8, 12)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (42, 5, 7, 6, 16, 4)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (43, 2, 15, 16, 10, 14)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (44, 2, 18, 12, 6, 18)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (45, 5, 13, 9, 9, 1)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (46, 19, 2, 15, 2, 13)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (47, 5, 11, 11, 16, 15)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (48, 13, 9, 3, 2, 13)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (49, 14, 10, 3, 6, 16)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (50, 6, 6, 8, 6, 17)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (51, 3, 3, 5, 10, 11)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (52, 17, 10, 17, 8, 6)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (53, 16, 18, 4, 13, 16)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (54, 10, 5, 6, 1, 10)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (55, 16, 6, 8, 8, 14)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (56, 15, 3, 17, 2, 6)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (57, 11, 4, 7, 7, 18)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (58, 1, 6, 7, 16, 2)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (59, 6, 14, 7, 5, 3)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (60, 6, 7, 13, 4, 2)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (61, 7, 17, 5, 8, 8)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (62, 15, 16, 19, 3, 15)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (63, 8, 12, 8, 5, 7)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (64, 15, 4, 10, 18, 2)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (65, 10, 15, 3, 7, 7)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (66, 9, 11, 18, 8, 7)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (67, 1, 2, 12, 14, 7)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (68, 12, 5, 4, 12, 2)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (69, 15, 16, 17, 8, 5)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (70, 2, 3, 3, 4, 14)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (71, 3, 18, 18, 10, 2)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (72, 12, 8, 4, 17, 10)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (73, 9, 14, 5, 8, 2)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (74, 12, 10, 13, 12, 2)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (75, 3, 7, 1, 15, 6)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (76, 8, 5, 5, 7, 11)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (77, 17, 13, 10, 6, 17)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (78, 4, 12, 1, 7, 15)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (79, 11, 13, 14, 8, 10)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (80, 6, 7, 3, 10, 4)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (81, 16, 18, 8, 18, 1)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (82, 3, 16, 16, 10, 2)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (83, 10, 6, 2, 12, 2)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (84, 17, 1, 16, 15, 9)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (85, 9, 16, 8, 11, 10)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (86, 17, 1, 2, 15, 13)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (87, 7, 7, 8, 11, 4)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (88, 7, 5, 18, 10, 7)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (89, 19, 11, 18, 9, 14)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (90, 12, 3, 16, 13, 14)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (91, 15, 9, 9, 18, 7)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (92, 9, 17, 7, 17, 17)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (93, 14, 7, 2, 10, 2)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (94, 14, 4, 4, 3, 12)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (95, 9, 4, 2, 17, 2)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (96, 15, 2, 10, 6, 14)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (97, 9, 7, 17, 6, 4)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (98, 7, 7, 7, 9, 13)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (99, 7, 14, 8, 17, 13)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (100, 14, 13, 16, 6, 11)
GO
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (101, 5, 10, 2, 14, 8)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (102, 2, 10, 13, 15, 11)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (103, 3, 1, 10, 17, 10)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (104, 18, 7, 10, 3, 12)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (105, 10, 14, 14, 5, 15)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (106, 2, 11, 10, 14, 7)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (107, 14, 10, 16, 8, 14)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (108, 9, 15, 9, 3, 16)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (109, 11, 10, 3, 19, 1)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (110, 6, 10, 5, 13, 16)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (111, 10, 4, 7, 7, 6)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (112, 16, 1, 3, 3, 4)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (113, 6, 7, 6, 13, 17)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (114, 5, 14, 3, 3, 16)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (115, 2, 14, 19, 8, 18)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (116, -10, -10, -10, -10, -10)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (117, 5, 5, 5, 5, 5)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (118, 10, -5, -5, 5, 10)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (119, -5, -5, -5, -5, -5)
INSERT [dbo].[Statistics] ([Id], [Strength], [Defence], [Mind], [Speed], [Luck]) VALUES (120, -10, -10, 15, 15, 10)
SET IDENTITY_INSERT [dbo].[Statistics] OFF
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (1, 33)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (1, 45)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (1, 79)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (1, 95)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (1, 150)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (1, 222)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (2, 3)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (2, 37)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (2, 138)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (2, 207)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (3, 215)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (4, 16)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (4, 43)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (4, 90)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (4, 94)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (4, 96)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (4, 242)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (4, 287)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (5, 7)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (5, 15)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (5, 235)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (5, 252)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (5, 261)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (6, 57)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (6, 63)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (6, 110)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (6, 116)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (6, 167)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (6, 233)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (7, 21)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (7, 120)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (7, 177)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (8, 172)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (9, 160)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (10, 110)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (10, 244)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (11, 6)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (11, 99)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (11, 220)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (11, 298)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (12, 16)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (12, 106)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (12, 184)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (12, 254)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (13, 53)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (13, 129)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (13, 204)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (13, 273)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (13, 285)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (14, 10)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (14, 68)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (14, 196)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (15, 62)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (15, 140)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (16, 10)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (16, 66)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (16, 122)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (16, 125)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (16, 145)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (16, 189)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (16, 215)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (16, 245)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (16, 310)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (17, 110)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (17, 182)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (17, 229)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (17, 319)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (18, 1)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (18, 23)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (18, 58)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (18, 68)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (18, 102)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (18, 104)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (18, 119)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (18, 139)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (18, 148)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (18, 160)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (18, 230)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (19, 16)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (19, 209)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (19, 315)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (20, 84)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (20, 250)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (20, 284)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (20, 286)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (20, 302)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (21, 10)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (21, 22)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (21, 66)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (21, 101)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (21, 117)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (21, 147)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (22, 118)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (23, 155)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (23, 163)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (23, 273)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (24, 20)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (24, 36)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (24, 128)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (24, 223)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (25, 230)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (25, 252)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (26, 38)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (26, 49)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (26, 58)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (26, 215)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (26, 218)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (26, 226)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (26, 306)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (27, 28)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (27, 100)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (27, 175)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (27, 186)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (27, 321)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (28, 40)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (28, 191)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (28, 204)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (28, 229)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (28, 232)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (28, 234)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (29, 57)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (29, 216)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (30, 40)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (30, 64)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (30, 159)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (30, 199)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (30, 221)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (30, 237)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (31, 207)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (32, 67)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (32, 190)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (32, 298)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (33, 207)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (33, 290)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (34, 29)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (34, 54)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (34, 195)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (34, 235)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (34, 254)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (34, 273)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (34, 317)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (35, 12)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (35, 41)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (35, 54)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (35, 55)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (35, 187)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (35, 308)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (36, 25)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (36, 142)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (36, 160)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (36, 188)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (36, 255)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (37, 1)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (37, 80)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (37, 118)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (37, 136)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (38, 78)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (38, 98)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (38, 137)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (38, 179)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (38, 281)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (38, 301)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (39, 69)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (39, 169)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (39, 199)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (39, 220)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (39, 261)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (39, 279)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (40, 11)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (40, 100)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (41, 88)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (42, 59)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (42, 138)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (42, 175)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (42, 189)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (42, 224)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (42, 264)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (42, 275)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (43, 97)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (43, 153)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (43, 161)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (43, 174)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (43, 185)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (43, 200)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (43, 216)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (43, 221)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (44, 34)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (44, 49)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (44, 53)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (44, 246)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (45, 80)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (45, 134)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (45, 217)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (45, 250)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (45, 290)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (46, 69)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (46, 111)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (46, 122)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (46, 243)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (46, 323)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (47, 82)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (47, 120)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (47, 176)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (47, 197)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (48, 97)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (48, 209)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (49, 84)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (49, 108)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (49, 140)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (49, 151)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (49, 177)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (49, 206)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (49, 272)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (50, 22)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (50, 181)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (50, 206)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (50, 209)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (50, 241)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (50, 316)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (51, 34)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (51, 113)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (51, 147)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (51, 315)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (52, 41)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (52, 250)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (53, 2)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (53, 59)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (53, 85)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (53, 310)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (54, 152)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (54, 254)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (55, 33)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (55, 35)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (55, 64)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (55, 125)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (55, 135)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (55, 141)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (55, 305)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (56, 67)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (56, 84)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (56, 93)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (56, 131)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (56, 183)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (56, 222)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (56, 240)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (57, 33)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (57, 53)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (57, 93)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (57, 136)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (57, 312)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (58, 50)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (58, 94)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (58, 148)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (58, 191)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (58, 224)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (58, 267)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (58, 291)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (59, 12)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (59, 57)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (59, 60)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (59, 167)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (59, 281)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (60, 168)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (60, 301)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (61, 175)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (61, 191)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (61, 242)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (61, 259)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (62, 63)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (62, 150)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (62, 215)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (62, 300)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (62, 321)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (63, 3)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (63, 20)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (63, 101)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (63, 164)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (63, 282)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (63, 288)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (64, 46)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (64, 262)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (65, 21)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (65, 87)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (65, 161)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (65, 187)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (65, 247)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (65, 292)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (66, 86)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (66, 272)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (67, 35)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (67, 63)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (67, 111)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (67, 131)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (67, 133)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (67, 153)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (67, 163)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (67, 275)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (68, 9)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (68, 91)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (68, 195)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (68, 262)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (70, 41)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (70, 53)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (70, 115)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (70, 141)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (70, 205)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (70, 207)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (70, 299)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (71, 69)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (71, 75)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (71, 105)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (71, 128)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (71, 133)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (71, 253)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (71, 287)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (72, 7)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (72, 295)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (73, 161)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (73, 261)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (73, 279)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (74, 67)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (74, 90)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (74, 102)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (74, 107)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (74, 118)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (74, 183)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (74, 191)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (74, 324)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (75, 109)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (75, 168)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (75, 319)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (76, 9)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (76, 46)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (76, 63)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (76, 82)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (76, 114)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (76, 187)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (76, 215)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (76, 276)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (77, 134)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (78, 57)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (78, 90)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (78, 176)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (78, 196)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (78, 238)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (79, 37)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (79, 97)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (79, 103)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (80, 78)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (80, 121)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (80, 160)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (80, 223)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (81, 6)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (81, 31)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (81, 136)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (81, 190)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (81, 242)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (81, 255)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (81, 265)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (81, 285)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (81, 293)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (82, 16)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (82, 131)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (82, 302)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (83, 13)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (83, 119)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (83, 165)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (84, 10)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (84, 21)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (84, 44)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (84, 141)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (85, 52)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (85, 60)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (85, 158)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (85, 232)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (85, 267)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (85, 274)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (86, 162)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (86, 317)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (87, 58)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (87, 74)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (87, 162)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (87, 271)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (87, 284)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (88, 39)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (88, 127)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (88, 310)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (90, 2)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (90, 57)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (90, 114)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (90, 192)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (91, 55)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (91, 229)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (91, 288)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (92, 40)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (92, 72)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (92, 287)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (93, 58)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (93, 157)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (93, 320)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (94, 38)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (94, 134)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (94, 241)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (94, 242)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (95, 6)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (95, 30)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (95, 106)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (95, 270)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (96, 104)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (96, 198)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (96, 217)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (96, 313)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (97, 6)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (97, 107)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (97, 199)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (97, 210)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (97, 320)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (98, 37)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (98, 294)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (98, 321)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (99, 174)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (99, 241)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (99, 309)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (100, 171)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (101, 146)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (101, 218)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (101, 248)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (101, 275)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (102, 72)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (102, 88)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (102, 183)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (102, 255)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (102, 308)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (102, 316)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (103, 71)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (103, 171)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (103, 176)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (103, 177)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (103, 275)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (104, 61)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (104, 106)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (104, 164)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (104, 298)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (105, 269)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (105, 307)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (106, 93)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (106, 223)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (106, 274)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (106, 279)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (106, 321)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (107, 150)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (107, 196)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (108, 100)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (108, 254)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (109, 16)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (109, 88)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (109, 95)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (109, 155)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (109, 279)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (110, 4)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (110, 143)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (110, 284)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (111, 170)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (111, 171)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (111, 202)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (111, 293)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (112, 6)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (112, 70)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (112, 155)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (112, 168)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (112, 174)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (112, 193)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (112, 239)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (112, 253)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (112, 284)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (112, 313)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (112, 324)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (113, 22)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (113, 56)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (113, 138)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (113, 201)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (113, 270)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (113, 308)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (113, 314)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (114, 44)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (114, 221)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (114, 264)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (115, 72)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (115, 185)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (115, 205)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (115, 218)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (116, 86)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (116, 97)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (116, 209)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (116, 247)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (116, 313)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (117, 88)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (117, 131)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (118, 38)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (118, 48)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (118, 165)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (118, 172)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (118, 190)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (118, 275)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (118, 315)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (119, 33)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (119, 44)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (119, 64)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (119, 91)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (119, 200)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (119, 244)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (119, 272)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (120, 22)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (120, 37)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (120, 181)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (120, 300)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (121, 185)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (121, 197)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (121, 248)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (122, 46)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (122, 68)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (122, 110)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (122, 314)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (123, 56)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (123, 83)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (123, 123)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (123, 194)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (123, 223)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (123, 316)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (124, 21)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (124, 104)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (124, 173)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (124, 263)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (124, 270)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (125, 70)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (125, 72)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (125, 92)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (126, 91)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (126, 104)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (126, 144)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (126, 147)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (126, 172)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (126, 205)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (126, 226)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (127, 77)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (127, 311)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (128, 100)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (128, 273)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (129, 18)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (129, 198)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (129, 200)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (129, 206)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (129, 241)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (130, 68)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (130, 234)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (130, 250)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (130, 260)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (130, 292)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (131, 115)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (131, 129)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (131, 143)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (131, 227)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (131, 263)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (132, 21)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (132, 67)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (132, 122)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (132, 173)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (132, 193)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (132, 266)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (133, 151)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (134, 76)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (134, 152)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (134, 295)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (135, 90)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (135, 165)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (135, 316)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (135, 321)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (136, 13)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (136, 78)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (136, 154)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (137, 36)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (138, 12)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (138, 95)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (138, 234)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (138, 235)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (138, 260)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (138, 281)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (139, 44)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (139, 133)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (140, 43)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (140, 68)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (140, 87)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (140, 183)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (140, 272)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (140, 273)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (141, 22)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (141, 84)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (141, 148)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (141, 213)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (141, 298)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (142, 65)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (142, 257)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (143, 6)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (143, 9)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (143, 11)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (143, 39)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (143, 261)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (144, 9)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (144, 75)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (144, 204)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (145, 121)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (145, 186)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (145, 195)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (145, 197)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (145, 203)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (145, 240)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (145, 246)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (146, 24)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (146, 130)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (146, 181)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (146, 263)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (146, 292)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (146, 313)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (147, 81)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (147, 89)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (147, 100)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (148, 38)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (148, 128)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (148, 156)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (149, 28)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (149, 66)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (149, 75)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (149, 112)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (150, 1)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (150, 57)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (150, 64)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (150, 210)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (150, 221)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (150, 278)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (150, 284)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (151, 53)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (151, 136)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (151, 188)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (151, 279)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (151, 281)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (152, 2)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (152, 62)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (152, 115)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (152, 137)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (152, 159)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (152, 164)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (152, 255)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (153, 38)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (153, 95)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (153, 125)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (153, 153)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (153, 157)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (153, 161)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (153, 212)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (153, 215)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (153, 240)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (153, 261)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (154, 18)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (154, 35)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (154, 144)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (154, 158)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (154, 163)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (154, 178)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (154, 220)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (154, 245)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (155, 106)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (155, 173)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (155, 190)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (155, 208)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (156, 64)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (157, 22)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (157, 40)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (157, 174)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (157, 228)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (157, 242)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (158, 3)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (158, 89)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (158, 102)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (158, 138)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (158, 149)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (158, 161)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (158, 208)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (158, 278)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (159, 37)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (159, 80)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (159, 240)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (159, 254)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (160, 254)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (161, 124)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (161, 214)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (161, 316)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (162, 70)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (162, 71)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (162, 75)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (162, 256)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (163, 1)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (163, 153)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (163, 231)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (163, 266)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (163, 284)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (164, 61)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (164, 297)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (165, 185)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (165, 194)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (165, 202)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (165, 208)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (165, 298)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (166, 101)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (166, 165)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (166, 183)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (167, 109)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (167, 131)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (167, 188)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (167, 243)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (167, 318)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (168, 68)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (168, 84)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (168, 109)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (168, 252)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (169, 29)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (169, 31)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (169, 100)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (169, 177)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (170, 9)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (170, 200)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (171, 19)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (171, 139)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (171, 203)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (172, 114)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (172, 175)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (172, 180)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (172, 318)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (173, 16)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (173, 70)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (173, 123)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (173, 184)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (173, 313)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (174, 138)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (174, 150)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (175, 124)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (175, 286)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (175, 315)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (176, 48)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (176, 60)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (176, 191)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (176, 321)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (177, 41)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (177, 112)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (178, 122)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (178, 139)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (178, 204)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (178, 263)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (179, 47)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (179, 54)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (179, 211)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (179, 237)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (179, 292)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (180, 36)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (180, 172)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (180, 230)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (181, 25)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (181, 103)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (181, 159)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (182, 162)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (182, 175)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (183, 50)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (183, 168)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (183, 188)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (183, 284)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (183, 311)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (184, 2)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (184, 51)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (184, 83)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (184, 96)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (184, 97)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (184, 130)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (184, 197)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (184, 252)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (185, 49)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (185, 114)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (185, 117)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (185, 277)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (185, 312)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (186, 197)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (187, 7)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (187, 91)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (187, 169)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (187, 241)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (188, 95)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (188, 180)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (188, 213)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (188, 214)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (188, 246)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (188, 313)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (189, 59)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (189, 146)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (189, 232)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (189, 309)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (190, 25)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (190, 73)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (190, 174)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (190, 181)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (190, 247)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (190, 283)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (190, 287)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (191, 36)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (191, 300)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (192, 21)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (192, 39)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (192, 113)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (192, 195)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (192, 316)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (193, 62)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (193, 81)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (193, 238)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (193, 284)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (193, 320)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (194, 4)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (194, 186)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (194, 214)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (194, 259)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (195, 99)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (195, 186)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (196, 16)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (196, 187)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (196, 310)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (197, 109)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (197, 172)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (197, 292)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (198, 181)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (198, 183)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (199, 48)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (199, 103)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (199, 133)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (199, 159)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (199, 168)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (199, 171)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (199, 214)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (199, 265)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (199, 298)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (200, 107)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (200, 238)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (200, 261)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (200, 313)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (201, 20)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (201, 33)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (201, 67)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (201, 246)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (201, 258)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (201, 276)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (202, 16)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (202, 160)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (202, 162)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (202, 214)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (202, 292)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (202, 307)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (203, 50)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (203, 54)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (203, 74)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (203, 225)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (203, 229)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (204, 97)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (204, 172)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (205, 10)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (205, 102)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (205, 251)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (206, 2)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (206, 78)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (206, 97)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (206, 115)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (206, 262)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (207, 32)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (207, 98)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (207, 299)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (208, 2)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (208, 20)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (208, 131)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (208, 213)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (209, 57)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (209, 240)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (210, 78)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (210, 94)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (210, 122)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (210, 124)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (210, 147)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (210, 202)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (211, 176)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (212, 57)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (212, 97)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (212, 122)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (212, 133)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (213, 41)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (213, 77)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (213, 94)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (213, 131)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (213, 246)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (213, 322)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (214, 81)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (214, 163)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (215, 14)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (215, 50)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (215, 302)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (217, 202)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (217, 287)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (218, 186)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (218, 265)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (218, 295)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (219, 31)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (219, 40)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (219, 85)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (219, 256)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (220, 131)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (220, 149)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (220, 205)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (220, 233)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (220, 270)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (220, 299)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (221, 61)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (221, 84)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (221, 249)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (221, 294)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (221, 318)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (222, 61)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (222, 290)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (222, 295)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (223, 42)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (223, 46)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (223, 59)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (223, 145)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (223, 273)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (223, 294)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (224, 4)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (224, 56)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (224, 122)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (224, 124)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (224, 228)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (224, 233)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (224, 310)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (225, 12)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (225, 100)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (225, 150)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (225, 152)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (225, 231)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (225, 305)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (226, 2)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (226, 5)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (226, 81)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (226, 138)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (226, 263)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (227, 49)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (227, 111)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (227, 196)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (227, 216)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (227, 291)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (228, 55)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (228, 82)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (229, 296)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (229, 311)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (230, 144)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (230, 316)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (231, 85)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (231, 96)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (231, 146)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (231, 291)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (232, 70)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (232, 122)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (232, 164)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (232, 249)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (233, 29)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (233, 51)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (233, 57)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (233, 265)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (234, 111)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (234, 122)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (234, 145)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (235, 64)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (235, 78)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (235, 132)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (235, 213)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (235, 278)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (236, 128)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (236, 185)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (236, 211)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (237, 49)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (237, 51)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (237, 192)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (237, 230)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (237, 281)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (238, 97)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (238, 288)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (238, 321)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (239, 36)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (239, 78)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (239, 140)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (240, 132)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (240, 175)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (240, 187)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (240, 195)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (240, 213)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (240, 242)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (241, 15)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (241, 212)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (242, 18)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (242, 86)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (242, 116)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (242, 200)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (242, 227)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (242, 228)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (242, 322)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (243, 8)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (243, 77)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (243, 209)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (243, 229)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (243, 251)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (244, 117)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (244, 176)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (244, 183)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (244, 315)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (245, 52)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (245, 78)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (245, 155)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (245, 168)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (245, 172)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (245, 216)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (245, 248)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (245, 258)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (245, 284)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (245, 319)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (246, 50)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (247, 41)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (247, 148)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (247, 166)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (248, 4)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (248, 234)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (248, 294)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (249, 22)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (249, 175)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (249, 187)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (249, 196)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (249, 268)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (249, 281)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (249, 314)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (250, 129)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (250, 195)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (251, 9)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (251, 14)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (251, 71)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (251, 137)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (251, 140)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (251, 172)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (251, 185)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (251, 214)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (251, 272)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (251, 308)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (252, 187)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (252, 224)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (252, 246)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (253, 59)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (253, 74)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (253, 94)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (253, 182)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (253, 186)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (253, 247)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (253, 260)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (255, 91)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (255, 242)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (255, 275)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (255, 277)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (256, 42)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (256, 106)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (256, 124)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (256, 227)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (256, 298)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (257, 215)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (257, 245)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (258, 32)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (258, 126)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (258, 153)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (258, 175)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (258, 225)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (258, 252)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (258, 287)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (259, 144)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (259, 288)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (260, 95)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (260, 304)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (261, 2)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (261, 4)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (261, 65)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (261, 195)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (262, 223)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (262, 231)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (263, 10)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (263, 253)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (263, 313)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (264, 8)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (265, 40)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (265, 150)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (265, 153)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (265, 286)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (265, 289)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (266, 230)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (267, 117)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (267, 120)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (267, 263)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (267, 316)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (267, 318)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (268, 2)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (268, 77)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (268, 240)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (268, 259)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (268, 298)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (269, 5)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (269, 61)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (269, 192)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (269, 200)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (270, 84)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (270, 143)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (270, 230)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (270, 300)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (270, 317)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (272, 14)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (272, 118)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (272, 122)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (272, 152)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (273, 28)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (273, 73)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (273, 170)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (273, 252)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (274, 1)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (274, 43)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (274, 112)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (274, 211)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (274, 228)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (274, 239)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (274, 286)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (275, 10)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (275, 52)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (275, 55)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (275, 155)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (275, 187)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (275, 254)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (276, 65)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (276, 178)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (276, 218)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (276, 279)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (277, 189)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (277, 261)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (277, 283)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (277, 285)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (278, 42)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (278, 190)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (278, 196)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (278, 268)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (279, 114)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (279, 125)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (279, 140)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (279, 145)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (280, 8)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (280, 14)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (280, 78)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (280, 194)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (280, 221)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (280, 237)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (280, 321)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (281, 161)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (281, 209)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (281, 220)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (281, 257)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (281, 304)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (282, 64)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (282, 295)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (283, 13)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (283, 240)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (283, 318)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (284, 68)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (284, 166)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (284, 275)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (285, 130)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (285, 206)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (287, 223)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (287, 244)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (287, 298)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (288, 52)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (288, 130)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (288, 257)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (289, 103)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (289, 140)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (289, 223)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (289, 317)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (290, 69)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (290, 101)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (290, 102)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (290, 197)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (291, 29)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (291, 47)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (291, 94)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (291, 306)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (291, 321)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (292, 31)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (292, 151)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (292, 154)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (292, 183)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (292, 192)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (292, 256)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (292, 262)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (293, 67)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (293, 163)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (293, 179)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (293, 208)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (293, 234)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (293, 269)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (293, 292)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (294, 292)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (295, 8)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (295, 82)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (295, 155)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (295, 172)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (295, 233)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (296, 13)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (296, 65)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (296, 90)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (297, 8)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (297, 30)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (297, 241)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (297, 309)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (299, 80)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (299, 93)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (299, 147)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (299, 163)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (299, 191)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (299, 212)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (300, 150)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (300, 181)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (300, 204)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (301, 17)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (301, 64)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (301, 169)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (301, 228)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (302, 90)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (302, 108)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (302, 276)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (303, 19)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (303, 56)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (303, 97)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (303, 114)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (303, 173)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (304, 75)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (304, 175)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (304, 202)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (305, 53)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (305, 178)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (305, 215)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (305, 271)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (306, 63)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (306, 166)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (306, 218)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (306, 219)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (306, 258)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (307, 48)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (307, 58)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (307, 320)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (308, 131)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (308, 206)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (308, 270)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (308, 308)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (309, 25)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (309, 35)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (309, 77)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (309, 200)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (309, 237)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (310, 34)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (310, 53)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (310, 143)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (311, 38)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (311, 107)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (311, 242)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (311, 274)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (311, 299)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (311, 313)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (312, 2)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (312, 39)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (312, 260)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (313, 129)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (313, 297)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (314, 8)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (314, 26)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (314, 81)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (314, 91)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (314, 117)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (314, 197)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (315, 10)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (316, 70)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (316, 260)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (316, 318)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (317, 222)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (317, 223)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (317, 234)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (317, 317)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (318, 228)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (318, 230)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (319, 103)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (319, 120)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (320, 110)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (320, 129)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (320, 197)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (320, 306)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (321, 71)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (321, 113)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (321, 218)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (321, 246)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (322, 18)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (322, 27)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (322, 187)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (322, 256)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (323, 200)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (323, 261)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (324, 84)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (324, 91)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (324, 113)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (324, 133)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (324, 172)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (324, 189)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (324, 262)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (324, 266)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (324, 270)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (325, 138)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (325, 180)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (325, 235)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (326, 22)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (326, 80)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (326, 112)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (326, 167)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (326, 184)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (326, 323)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (327, 174)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (327, 207)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (327, 292)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (328, 85)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (328, 111)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (328, 261)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (329, 22)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (329, 69)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (329, 243)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (331, 16)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (331, 195)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (331, 253)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (332, 46)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (332, 210)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (333, 14)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (333, 263)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (334, 81)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (334, 287)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (334, 312)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (335, 7)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (335, 73)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (335, 106)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (335, 182)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (335, 197)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (335, 290)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (336, 3)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (336, 25)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (336, 72)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (336, 253)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (337, 150)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (337, 295)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (337, 298)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (338, 31)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (338, 81)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (338, 109)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (338, 110)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (338, 154)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (338, 208)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (338, 218)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (338, 270)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (339, 102)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (339, 188)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (340, 17)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (340, 264)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (340, 313)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (341, 110)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (341, 118)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (341, 250)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (341, 290)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (342, 69)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (343, 113)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (343, 193)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (343, 309)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (343, 311)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (344, 15)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (344, 42)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (344, 64)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (344, 169)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (344, 245)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (345, 44)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (345, 60)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (345, 89)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (345, 301)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (346, 15)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (346, 72)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (346, 281)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (347, 30)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (347, 68)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (347, 172)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (347, 208)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (348, 82)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (348, 124)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (348, 127)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (348, 130)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (348, 162)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (349, 61)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (349, 92)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (349, 98)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (349, 242)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (350, 84)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (350, 125)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (351, 76)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (351, 161)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (351, 175)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (351, 316)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (352, 140)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (352, 154)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (352, 225)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (352, 283)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (352, 308)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (353, 39)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (353, 72)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (353, 243)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (353, 257)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (354, 58)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (354, 122)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (354, 161)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (354, 314)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (355, 197)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (355, 250)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (355, 255)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (355, 292)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (356, 8)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (356, 226)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (356, 243)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (357, 71)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (357, 87)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (357, 232)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (358, 58)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (358, 157)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (358, 220)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (358, 282)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (359, 19)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (359, 202)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (359, 222)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (359, 246)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (359, 261)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (359, 310)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (360, 18)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (360, 53)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (360, 64)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (360, 89)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (360, 194)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (360, 256)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (360, 279)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (360, 317)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (361, 16)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (361, 103)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (361, 146)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (361, 208)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (362, 186)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (362, 205)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (362, 281)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (362, 312)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (363, 121)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (363, 133)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (363, 159)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (363, 167)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (363, 191)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (364, 26)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (364, 33)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (364, 125)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (364, 128)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (364, 247)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (365, 104)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (365, 208)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (365, 284)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (365, 294)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (366, 148)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (366, 252)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (366, 301)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (366, 305)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (366, 316)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (367, 61)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (367, 97)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (367, 133)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (367, 214)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (367, 217)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (367, 263)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (368, 72)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (368, 198)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (368, 304)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (369, 52)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (369, 95)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (369, 133)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (369, 190)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (369, 288)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (369, 299)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (370, 86)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (370, 174)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (370, 196)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (370, 289)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (371, 91)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (371, 96)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (371, 200)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (371, 303)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (371, 322)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (372, 5)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (372, 140)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (372, 250)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (372, 260)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (374, 110)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (374, 227)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (374, 249)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (375, 63)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (375, 125)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (375, 232)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (375, 267)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (376, 14)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (376, 15)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (376, 26)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (376, 70)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (376, 190)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (376, 201)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (376, 323)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (377, 180)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (377, 235)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (377, 288)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (377, 300)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (377, 322)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (378, 5)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (378, 11)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (378, 67)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (378, 100)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (378, 186)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (378, 194)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (378, 240)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (378, 272)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (379, 80)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (379, 81)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (379, 217)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (379, 226)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (380, 21)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (380, 53)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (380, 98)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (380, 231)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (381, 111)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (382, 35)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (382, 39)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (382, 162)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (382, 163)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (382, 203)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (382, 293)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (383, 40)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (383, 236)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (383, 238)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (384, 129)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (384, 240)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (384, 256)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (384, 257)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (384, 296)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (385, 15)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (385, 43)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (385, 302)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (386, 64)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (386, 175)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (386, 197)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (386, 262)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (387, 56)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (387, 244)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (387, 267)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (388, 56)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (388, 87)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (388, 138)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (388, 179)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (389, 89)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (389, 160)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (389, 254)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (390, 87)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (390, 130)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (390, 146)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (391, 68)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (391, 139)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (391, 262)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (392, 173)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (392, 275)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (392, 277)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (393, 89)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (393, 99)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (393, 150)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (393, 151)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (393, 200)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (393, 321)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (393, 324)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (394, 30)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (394, 45)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (394, 125)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (394, 130)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (394, 174)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (394, 201)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (394, 296)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (395, 2)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (395, 89)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (395, 129)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (395, 210)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (395, 319)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (395, 322)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (396, 1)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (396, 39)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (396, 108)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (396, 142)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (396, 171)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (397, 36)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (397, 181)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (397, 183)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (397, 299)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (398, 156)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (398, 204)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (398, 234)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (399, 50)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (399, 140)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (399, 184)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (399, 249)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (400, 5)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (400, 87)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (400, 223)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (400, 241)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (400, 272)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (400, 285)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (401, 42)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (401, 111)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (402, 48)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (402, 220)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (402, 324)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (403, 48)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (403, 85)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (403, 193)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (403, 212)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (403, 236)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (403, 295)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (404, 7)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (404, 82)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (404, 160)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (404, 192)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (404, 205)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (404, 208)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (405, 168)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (405, 211)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (405, 226)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (406, 191)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (406, 293)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (407, 23)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (407, 55)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (407, 69)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (407, 133)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (407, 155)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (407, 170)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (407, 191)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (407, 241)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (407, 293)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (407, 294)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (407, 308)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (408, 58)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (408, 62)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (408, 307)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (408, 312)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (409, 12)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (409, 30)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (409, 135)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (409, 252)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (409, 258)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (410, 20)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (410, 230)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (411, 45)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (411, 76)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (411, 143)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (411, 253)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (411, 276)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (411, 293)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (412, 44)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (412, 193)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (412, 200)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (412, 243)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (412, 269)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (413, 192)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (413, 302)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (414, 320)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (415, 51)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (415, 165)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (415, 284)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (415, 302)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (416, 40)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (416, 55)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (416, 108)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (416, 324)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (417, 43)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (417, 89)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (417, 153)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (417, 209)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (417, 235)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (417, 251)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (417, 269)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (417, 284)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (418, 11)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (418, 51)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (418, 57)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (418, 117)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (418, 120)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (418, 193)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (418, 218)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (419, 81)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (419, 98)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (419, 198)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (419, 324)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (420, 102)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (420, 264)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (421, 96)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (421, 182)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (421, 218)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (421, 255)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (422, 41)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (422, 69)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (422, 84)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (422, 205)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (422, 239)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (423, 96)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (423, 117)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (423, 146)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (423, 248)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (423, 271)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (423, 311)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (423, 318)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (424, 41)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (424, 93)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (424, 97)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (424, 147)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (424, 196)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (424, 301)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (425, 49)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (425, 92)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (425, 124)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (425, 191)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (425, 304)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (426, 2)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (426, 159)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (426, 172)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (426, 243)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (426, 248)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (427, 22)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (427, 37)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (427, 106)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (427, 130)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (427, 148)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (428, 163)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (429, 3)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (429, 133)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (429, 148)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (430, 139)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (430, 229)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (430, 258)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (431, 179)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (431, 190)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (431, 246)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (432, 97)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (432, 119)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (432, 251)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (432, 303)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (433, 122)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (434, 37)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (434, 249)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (434, 296)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (435, 75)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (435, 198)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (435, 269)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (435, 282)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (435, 317)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (436, 23)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (436, 262)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (436, 267)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (436, 275)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (437, 44)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (437, 63)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (437, 201)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (437, 228)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (437, 248)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (437, 311)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (438, 126)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (438, 222)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (438, 234)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (438, 245)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (438, 292)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (439, 103)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (439, 119)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (440, 64)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (440, 227)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (440, 237)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (441, 118)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (441, 179)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (441, 239)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (441, 307)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (442, 165)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (442, 207)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (442, 208)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (442, 239)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (442, 297)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (443, 40)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (444, 105)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (444, 151)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (444, 296)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (444, 315)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (445, 23)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (445, 50)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (445, 108)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (445, 254)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (445, 278)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (445, 313)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (446, 14)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (446, 22)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (446, 23)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (446, 54)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (446, 74)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (446, 97)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (446, 177)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (446, 282)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (446, 288)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (446, 312)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (447, 141)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (448, 72)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (448, 73)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (448, 98)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (448, 99)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (449, 97)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (449, 157)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (449, 165)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (449, 180)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (449, 213)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (450, 6)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (450, 70)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (450, 91)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (450, 143)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (450, 177)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (451, 56)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (451, 254)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (452, 27)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (452, 74)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (452, 146)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (452, 304)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (453, 74)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (453, 91)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (453, 125)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (453, 204)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (454, 56)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (454, 80)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (454, 86)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (455, 1)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (455, 46)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (455, 138)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (455, 174)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (455, 309)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (455, 315)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (456, 43)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (456, 66)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (456, 171)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (456, 188)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (457, 64)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (457, 148)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (457, 172)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (457, 263)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (457, 287)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (457, 318)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (457, 321)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (458, 131)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (458, 216)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (458, 289)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (458, 293)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (458, 324)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (459, 33)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (459, 198)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (459, 303)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (460, 41)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (460, 99)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (460, 110)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (460, 113)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (460, 173)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (460, 186)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (460, 206)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (460, 269)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (461, 59)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (461, 62)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (461, 294)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (462, 29)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (462, 213)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (462, 299)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (463, 19)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (463, 54)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (463, 159)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (463, 302)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (464, 51)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (464, 79)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (464, 139)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (464, 141)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (464, 165)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (464, 201)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (464, 283)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (465, 115)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (465, 288)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (466, 3)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (466, 28)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (466, 110)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (466, 143)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (466, 145)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (466, 276)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (467, 74)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (467, 106)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (467, 130)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (467, 168)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (467, 271)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (468, 64)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (468, 77)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (468, 78)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (468, 180)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (468, 208)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (468, 291)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (469, 41)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (469, 119)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (469, 148)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (469, 249)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (469, 289)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (470, 103)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (470, 134)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (470, 196)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (470, 199)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (470, 253)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (470, 314)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (471, 149)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (471, 181)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (472, 4)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (472, 50)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (472, 51)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (472, 166)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (472, 271)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (473, 54)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (473, 187)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (473, 222)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (473, 233)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (473, 251)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (473, 310)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (474, 38)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (474, 93)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (474, 102)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (474, 301)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (475, 73)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (475, 186)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (475, 256)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (475, 279)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (475, 302)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (476, 2)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (476, 263)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (476, 302)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (476, 323)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (477, 99)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (477, 135)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (477, 152)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (477, 183)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (477, 201)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (477, 271)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (478, 253)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (480, 22)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (480, 77)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (480, 80)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (480, 92)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (480, 234)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (481, 7)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (481, 16)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (481, 135)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (481, 196)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (481, 208)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (481, 227)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (482, 5)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (482, 43)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (483, 52)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (483, 134)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (483, 182)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (484, 188)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (484, 204)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (484, 228)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (484, 265)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (484, 272)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (485, 17)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (485, 60)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (486, 121)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (486, 163)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (486, 250)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (486, 286)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (487, 85)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (487, 113)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (487, 197)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (487, 210)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (488, 145)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (488, 266)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (488, 284)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (489, 26)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (489, 162)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (489, 224)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (489, 303)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (490, 70)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (490, 171)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (490, 291)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (491, 20)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (491, 76)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (491, 85)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (491, 126)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (491, 312)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (491, 323)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (492, 47)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (492, 194)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (492, 241)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (492, 261)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (492, 271)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (492, 295)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (493, 93)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (493, 178)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (493, 185)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (493, 234)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (493, 281)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (493, 322)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (494, 10)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (494, 24)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (494, 112)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (494, 115)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (494, 141)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (495, 42)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (495, 124)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (495, 222)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (495, 255)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (496, 78)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (496, 84)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (496, 93)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (496, 132)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (497, 69)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (497, 104)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (497, 187)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (498, 115)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (498, 175)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (498, 280)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (498, 320)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (499, 76)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (499, 109)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (499, 150)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (499, 320)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (500, 38)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (500, 73)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (500, 124)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (500, 162)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (500, 190)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (500, 215)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (500, 295)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (501, 70)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (501, 92)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (501, 116)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (502, 25)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (502, 103)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (502, 109)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (502, 261)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (502, 275)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (502, 318)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (503, 54)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (503, 172)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (503, 176)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (503, 226)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (503, 242)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (503, 256)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (503, 268)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (503, 271)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (504, 135)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (504, 256)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (504, 282)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (505, 83)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (505, 306)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (506, 49)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (506, 205)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (506, 257)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (506, 280)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (507, 169)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (507, 190)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (507, 205)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (508, 58)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (508, 202)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (508, 238)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (509, 20)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (509, 57)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (509, 63)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (509, 101)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (509, 238)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (509, 311)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (509, 324)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (510, 27)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (511, 59)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (511, 101)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (511, 191)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (511, 236)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (511, 282)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (512, 169)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (512, 184)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (512, 199)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (512, 295)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (513, 44)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (513, 126)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (513, 167)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (513, 184)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (513, 248)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (514, 84)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (514, 174)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (514, 209)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (514, 267)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (515, 38)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (515, 50)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (515, 96)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (515, 169)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (515, 320)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (516, 11)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (516, 23)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (516, 61)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (516, 193)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (516, 250)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (517, 21)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (517, 42)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (517, 49)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (517, 67)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (517, 212)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (517, 215)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (518, 81)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (518, 116)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (518, 149)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (518, 173)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (518, 238)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (518, 318)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (519, 1)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (519, 241)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (519, 248)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (520, 54)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (520, 233)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (521, 14)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (521, 70)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (521, 125)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (521, 283)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (522, 133)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (522, 190)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (522, 300)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (523, 233)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (523, 240)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (523, 262)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (523, 302)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (524, 232)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (524, 236)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (524, 241)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (524, 295)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (525, 57)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (525, 117)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (526, 4)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (526, 56)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (526, 90)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (526, 110)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (526, 196)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (527, 140)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (527, 262)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (527, 273)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (528, 33)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (528, 205)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (529, 58)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (529, 66)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (529, 144)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (529, 181)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (529, 187)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (529, 298)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (530, 36)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (530, 83)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (530, 95)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (530, 104)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (530, 250)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (530, 284)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (530, 323)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (531, 9)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (531, 57)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (531, 78)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (531, 161)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (531, 198)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (531, 315)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (532, 70)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (532, 112)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (532, 156)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (532, 196)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (533, 19)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (533, 25)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (533, 195)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (533, 226)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (534, 48)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (534, 224)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (535, 203)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (535, 237)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (536, 11)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (536, 176)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (536, 178)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (536, 277)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (537, 64)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (537, 68)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (537, 100)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (537, 136)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (537, 302)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (538, 61)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (538, 80)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (538, 111)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (538, 124)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (538, 228)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (538, 288)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (538, 297)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (538, 318)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (539, 77)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (539, 237)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (539, 261)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (539, 320)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (540, 67)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (540, 70)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (540, 220)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (540, 243)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (540, 265)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (540, 287)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (541, 160)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (542, 105)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (542, 126)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (542, 153)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (542, 183)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (542, 296)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (543, 29)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (543, 142)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (543, 234)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (543, 268)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (544, 126)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (544, 137)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (544, 273)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (545, 9)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (545, 137)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (545, 174)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (545, 199)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (546, 70)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (546, 91)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (546, 101)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (546, 170)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (547, 68)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (547, 69)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (547, 235)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (547, 251)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (547, 306)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (547, 317)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (548, 7)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (548, 65)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (548, 81)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (548, 139)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (548, 281)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (549, 149)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (549, 193)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (549, 213)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (549, 226)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (549, 283)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (550, 50)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (550, 52)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (550, 91)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (550, 192)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (550, 232)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (550, 235)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (550, 308)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (551, 240)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (551, 253)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (551, 273)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (551, 307)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (552, 84)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (553, 39)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (553, 61)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (553, 195)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (553, 217)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (553, 260)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (553, 308)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (554, 11)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (554, 30)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (554, 84)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (554, 90)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (554, 205)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (554, 207)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (554, 293)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (555, 146)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (555, 177)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (555, 215)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (555, 223)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (555, 299)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (555, 300)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (555, 310)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (556, 21)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (556, 29)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (556, 167)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (556, 180)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (556, 288)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (557, 82)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (557, 255)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (557, 265)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (558, 8)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (558, 136)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (558, 156)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (558, 166)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (558, 266)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (558, 304)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (559, 63)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (559, 136)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (559, 177)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (559, 266)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (560, 252)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (561, 13)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (561, 72)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (561, 107)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (561, 244)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (561, 266)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (561, 282)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (561, 313)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (562, 49)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (562, 178)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (562, 286)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (562, 320)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (563, 101)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (563, 176)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (563, 277)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (563, 291)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (564, 33)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (564, 50)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (564, 180)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (564, 288)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (565, 197)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (566, 12)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (566, 139)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (566, 158)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (566, 186)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (566, 247)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (567, 53)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (568, 147)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (568, 180)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (568, 197)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (568, 202)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (568, 251)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (568, 310)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (568, 319)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (569, 35)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (569, 66)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (569, 84)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (569, 98)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (569, 127)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (569, 131)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (569, 186)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (569, 268)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (569, 294)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (570, 10)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (570, 41)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (570, 64)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (570, 175)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (570, 184)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (571, 30)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (571, 58)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (571, 83)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (571, 105)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (572, 8)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (572, 166)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (572, 167)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (572, 208)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (572, 263)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (572, 264)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (572, 288)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (572, 300)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (573, 10)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (573, 31)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (573, 57)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (573, 215)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (573, 234)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (573, 267)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (574, 97)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (574, 158)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (574, 185)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (574, 217)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (575, 122)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (575, 290)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (576, 7)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (576, 32)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (576, 78)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (576, 133)
GO
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (576, 135)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (576, 136)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (576, 137)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (576, 197)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (576, 256)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (577, 69)
INSERT [dbo].[UserGameItems] ([ItemId], [UserGameId]) VALUES (577, 265)
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (1, N'VGeorgiev', N'Vladimir', N'Georgiev', N'vlado@softuni.bg', CAST(0x0000A29600000000 AS DateTime), 0, N'74.212.145.183')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (2, N'nakov', N'Svetlin', N'Nakov', N'nakov@softuni.bg', CAST(0x0000A29800000000 AS DateTime), 0, N'14.51.35.30')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (3, N'vladislav.karamfilov', N'Vladislav', N'Karamfilov', N'vladislav@softuni.bg', CAST(0x0000A2AA00000000 AS DateTime), 0, N'84.191.139.65')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (4, N'Petya', N'Petya', N'Grozdarska', N'petya@softuni.bg', CAST(0x0000A2AF00000000 AS DateTime), 0, N'134.108.213.164')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (5, N'Alex', N'Alexandra', N'Svilarova', N'alex@softuni.bg', CAST(0x0000A4AC00000000 AS DateTime), 0, N'116.33.3.1')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (6, N'Pesho', N'Peter', N'Goshev', N'pesho@abv.bg', CAST(0x0000A43400000000 AS DateTime), 0, N'211.246.110.53')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (7, N'Minka', N'Minka', N'Poryazova', N'minka@gmail.com', CAST(0x0000A4B700000000 AS DateTime), 1, N'121.230.231.161')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (8, N'Siyka', N'Syika', N'Stoyanova', N'sukis@mail.bg', CAST(0x0000A1F600000000 AS DateTime), 0, N'188.77.78.178')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (9, N'Stamat', N'Stamat', N'Strahilov', N'stamo@gmail.com', CAST(0x0000A2A600000000 AS DateTime), 0, N'180.166.72.243')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (10, N'irritatingdeter', N'MARY', N'SMITH', N'stone@meekness.com', CAST(0x0000A4D700000000 AS DateTime), 0, N'193.120.9.208')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (11, N'nangindragon', N'PATRICIA', N'JOHNSON', N'ca-tech@dps.centrin.net.id', CAST(0x0000A53100000000 AS DateTime), 0, N'198.201.172.219')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (12, N'monoxidecos', N'LINDA', N'WILLIAMS', N'asst_dos@astonrasuna.com', CAST(0x00009FA800000000 AS DateTime), 0, N'230.100.69.15')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (13, N'intpox', N'BARBARA', N'BROWN', N'achatv@cbn.net.id', CAST(0x0000A35F00000000 AS DateTime), 0, N'223.207.201.4')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (14, N'sweethorseman', N'ELIZABETH', N'JONES', N'bali@tuguhotels.com', CAST(0x0000A43500000000 AS DateTime), 0, N'174.165.203.176')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (15, N'baroquegainful', N'MARIA', N'MILLER', N'bliss@thebale.com', CAST(0x0000A21600000000 AS DateTime), 0, N'211.216.90.27')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (16, N'chewyway', N'JENNIFER', N'DAVIS', N'trinanda_lestyowati@telkomsel.co.id', CAST(0x00009FEF00000000 AS DateTime), 0, N'9.39.60.233')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (17, N'hinneybiggest', N'SUSAN', N'GARCIA', N'amartabali@dps.centrin.net.id', CAST(0x0000A38C00000000 AS DateTime), 0, N'24.147.195.22')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (18, N'admincuttle', N'MARGARET', N'RODRIGUEZ', N'baliminimalist@yahoo.com', CAST(0x0000A23B00000000 AS DateTime), 0, N'110.112.182.73')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (19, N'cagedegyptian', N'DOROTHY', N'MARTINEZ', N'adhidharma@denpasar.wasantara.net.id', CAST(0x0000A33400000000 AS DateTime), 0, N'228.44.241.182')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (20, N'filknotation', N'LISA', N'WILSON', N'centralreservation@ramayanahotel.com', CAST(0x0000A30A00000000 AS DateTime), 0, N'168.68.45.62')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (21, N'corruptpizz', N'NANCY', N'YOUNG', N'apribadi@balimandira.com', CAST(0x00009EBF00000000 AS DateTime), 1, N'121.34.206.203')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (22, N'buildingdeltoid', N'KAREN', N'ANDERSON', N'cdagenhart@ifc.org', CAST(0x0000A05D00000000 AS DateTime), 0, N'174.22.35.245')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (23, N'whiningdelay', N'BETTY', N'TAYLOR', N'dana_supriyanto@interconti.com', CAST(0x0000A21600000000 AS DateTime), 0, N'249.109.98.206')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (24, N'studentdroopy', N'HELEN', N'HERNANDEZ', N'dos@novotelbali.com', CAST(0x0000A13F00000000 AS DateTime), 0, N'75.221.109.65')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (25, N'electfarty', N'SANDRA', N'MOORE', N'daniel@hotelpadma.com', CAST(0x0000A3B300000000 AS DateTime), 0, N'211.102.105.71')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (26, N'bashsassafras', N'DONNA', N'MARTIN', N'daniel@balibless.com', CAST(0x0000A57600000000 AS DateTime), 0, N'128.252.225.27')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (27, N'virtuecoxcomb', N'CAROL', N'JACKSON', N'djoko_p@jayakartahotelsresorts.com', CAST(0x00009FB100000000 AS DateTime), 0, N'126.68.240.204')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (28, N'unfriendlyfurther', N'RUTH', N'THOMPSON', N'expdepot@indosat.net.id', CAST(0x00009ED500000000 AS DateTime), 0, N'6.72.34.16')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (29, N'bindbawdy', N'SHARON', N'WHITE', N'feby.adamsyah@idn.xerox.com', CAST(0x0000A54900000000 AS DateTime), 0, N'192.157.20.222')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (30, N'warmbloodproclaim', N'MICHELLE', N'LOPEZ', N'christian_rizal@interconti.com', CAST(0x0000A1D700000000 AS DateTime), 0, N'183.153.209.90')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (31, N'skirltremendous', N'LAURA', N'LEE', N'singgih93@mailcity.com', CAST(0x0000A0CD00000000 AS DateTime), 1, N'4.241.133.22')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (32, N'evolvingimportant', N'SARAH', N'GONZALEZ', N'idonk_gebhoy@yahoo.com', CAST(0x00009DC500000000 AS DateTime), 0, N'223.175.227.173')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (33, N'sinceregrand', N'KIMBERLY', N'HARRIS', N'info@houseofbali.com', CAST(0x0000A30300000000 AS DateTime), 1, N'168.89.155.169')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (34, N'swingbark', N'DEBORAH', N'CLARK', N'kyohana@toureast.net', CAST(0x00009D6E00000000 AS DateTime), 0, N'149.7.102.160')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (35, N'countrydecay', N'JESSICA', N'LEWIS', N'sales@nusaduahotel.com', CAST(0x0000A1D700000000 AS DateTime), 0, N'77.171.140.222')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (36, N'denyofficial', N'SHIRLEY', N'ROBINSON', N'jayakarta@mataram.wasantara.net.id', CAST(0x0000A1DF00000000 AS DateTime), 0, N'97.251.110.7')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (37, N'inguinalself', N'CYNTHIA', N'WALKER', N'mapindo@indo.net.id', CAST(0x00009F0A017B0740 AS DateTime), 0, N'255.111.250.207')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (38, N'leakingpity', N'ANGELA', N'PEREZ', N'anekabeach@dps.centrin.net.id', CAST(0x00009E7A00000000 AS DateTime), 0, N'113.238.74.11')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (39, N'brooklyndecent', N'MELISSA', N'HALL', N'sm@ramayanahotel.com', CAST(0x0000A3A500000000 AS DateTime), 0, N'160.49.15.18')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (40, N'slushyinflate', N'BRENDA', N'YOUNG', N'yogya@jayakartahotelsresorts.com', CAST(0x00009F9800000000 AS DateTime), 0, N'156.197.106.224')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (41, N'hamtemple', N'AMY', N'ALLEN', N'garudawisatajaya@indo.net.id', CAST(0x0000A39600000000 AS DateTime), 0, N'93.236.115.232')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (42, N'posteriorflowery', N'ANNA', N'SANCHEZ', N'ketut@kbatur.com', CAST(0x0000A4B300000000 AS DateTime), 1, N'105.26.72.120')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (43, N'bullockssip', N'REBECCA', N'WRIGHT', N'bondps@bonansatours.com', CAST(0x0000A00A00000000 AS DateTime), 0, N'209.112.96.8')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (44, N'ofliving', N'VIRGINIA', N'KING', N'witamgr@dps.centrin.net.id', CAST(0x0000A0C200000000 AS DateTime), 1, N'39.114.238.223')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (45, N'rateweed', N'VIRGINIA', N'GREEN', N'dtedja@indosat.net.id', CAST(0x0000A56400000000 AS DateTime), 0, N'50.121.24.180')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (46, N'advisersspry', N'MARTHA', N'BAKER', N'info@stpbali.ac.id', CAST(0x0000A17300000000 AS DateTime), 1, N'100.97.183.157')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (47, N'fixedbucking', N'AMANDA', N'ADAMS', N'baliprestigeho@dps.centrin.net.id', CAST(0x0000A16500000000 AS DateTime), 0, N'138.206.25.177')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (48, N'karateperihelion', N'CHRISTINE', N'NELSON', N'pamilu@mas-travel.com', CAST(0x0000A0A700000000 AS DateTime), 0, N'153.41.84.164')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (49, N'unchinmole', N'MARIE', N'BAILEY', N'amandabl@indosat.net.id', CAST(0x0000A05C00000000 AS DateTime), 0, N'209.229.25.96')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (50, N'obliquepoof', N'JANET', N'HILL', N'marketing@csdwholiday.com', CAST(0x00009E5E00000000 AS DateTime), 1, N'44.128.204.194')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (51, N'halleycurved', N'CATHERINE', N'BELL', N'luha89@yahoo.com', CAST(0x0000A44400000000 AS DateTime), 0, N'43.31.8.134')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (52, N'loosenoise', N'FRANCES', N'RAMIREZ', N'indahsuluh2002@yahoo.com.sg', CAST(0x0000A45700000000 AS DateTime), 0, N'215.129.178.110')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (53, N'ionoriole', N'ANN', N'CAMPBELL', N'imz1991@yahoo.com', CAST(0x00009DCF00000000 AS DateTime), 0, N'82.95.233.223')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (54, N'gluttonousraspberry', N'JOYCE', N'MITCHELL', N'gus_war81@yahoo.com', CAST(0x0000A03100000000 AS DateTime), 0, N'205.7.240.1')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (55, N'darwinquotient', N'DIANE', N'MURPHY', N'kf034@indosat.net.id', CAST(0x0000A12C00000000 AS DateTime), 0, N'145.94.245.251')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (56, N'yikeshydrostatic', N'ALICE', N'RIVERA', N'800produkwil@posindonesia.co.id', CAST(0x0000A57500000000 AS DateTime), 1, N'148.248.198.121')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (57, N'wagtailspicy', N'JULIE', N'MURPHY', N'kontak.synergi@yahoo.com', CAST(0x0000A34300000000 AS DateTime), 0, N'97.238.94.44')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (58, N'neutralgazump', N'HEATHER', N'ROBERTS', N'oekaoeka@yahoo.com', CAST(0x0000A22100000000 AS DateTime), 0, N'142.119.249.171')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (59, N'shodepee', N'TERESA', N'ALLEN', N'fitrianti@hotmail.com', CAST(0x0000A13000000000 AS DateTime), 0, N'253.85.166.88')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (60, N'diagramsadagio', N'DORIS', N'SANCHEZ', N'h4ntoro@yahoo.com', CAST(0x00009D2000000000 AS DateTime), 0, N'177.180.236.61')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (61, N'baleremuda', N'EVELYN', N'CARTER', N'novi_enbe@yahoo.com', CAST(0x0000A3F200000000 AS DateTime), 0, N'36.145.229.182')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (62, N'crowncrackers', N'GLORIA', N'PHILLIPS', N'dila_dewata@yahoo.co.id', CAST(0x0000A41900000000 AS DateTime), 0, N'99.218.95.154')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (63, N'potterssnarky', N'CHERYL', N'EVANS', N'tiena_asfary@yahoo.co.id', CAST(0x00009F6100000000 AS DateTime), 1, N'129.74.12.234')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (64, N'hurdlesurmise', N'MILDRED', N'TURNER', N'da_lawoffice@yahoo.com', CAST(0x0000A10F00000000 AS DateTime), 0, N'81.91.116.195')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (65, N'premiumseal', N'KATHERINE', N'TORRES', N'rini@ncsecurities.biz', CAST(0x0000A00000000000 AS DateTime), 0, N'226.176.107.50')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (66, N'printerstencils', N'JOAN', N'PARKER', N'sudarnoto_hakim@yahoo.com', CAST(0x0000A2D200000000 AS DateTime), 0, N'66.198.191.174')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (67, N'citiesgrill', N'ASHLEY', N'COLLINS', N'wastioke@yahoo.com', CAST(0x0000A31800000000 AS DateTime), 0, N'69.48.171.4')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (68, N'presidentsbasal', N'JUDITH', N'EDWARDS', N'lia_kiara97@yahoo.com', CAST(0x00009E1D00000000 AS DateTime), 0, N'243.30.11.69')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (69, N'skippingside', N'ROSE', N'MORRIS', N'b_astuti@telkomsel.co.id', CAST(0x0000A18300000000 AS DateTime), 0, N'88.28.151.138')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (70, N'terrifymarzipan', N'JANICE', N'RIVERA', N'grfurniture@yahoo.com', CAST(0x00009D1900000000 AS DateTime), 1, N'136.208.113.14')
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [RegistrationDate], [IsDeleted], [IpAddress]) VALUES (71, N'rotoriginally', N'KELLY', N'ROGERS', N'gosyen2000@hotmail.com', CAST(0x00009E2B00000000 AS DateTime), 1, N'146.141.16.116')
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[UsersGames] ON 

INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (1, 137, 31, 1, 71, CAST(0x0000A1C100000000 AS DateTime), 6122.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (2, 95, 12, 4, 30, CAST(0x0000A15F00000000 AS DateTime), 5485.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (3, 102, 34, 4, 76, CAST(0x00009DAD00000000 AS DateTime), 7033.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (4, 7, 57, 5, 26, CAST(0x0000A3FB00000000 AS DateTime), 7513.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (5, 20, 40, 1, 23, CAST(0x00009F7F00000000 AS DateTime), 8353.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (6, 25, 23, 3, 89, CAST(0x00009E3B00000000 AS DateTime), 6984.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (7, 68, 11, 8, 89, CAST(0x00009E2700000000 AS DateTime), 7623.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (8, 44, 50, 4, 32, CAST(0x00009F8000000000 AS DateTime), 6074.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (9, 232, 66, 12, 82, CAST(0x0000A19D00000000 AS DateTime), 6303.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (10, 56, 1, 11, 67, CAST(0x0000A28000000000 AS DateTime), 5826.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (11, 122, 55, 3, 20, CAST(0x0000A15000000000 AS DateTime), 7831.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (12, 230, 71, 8, 78, CAST(0x0000A44900000000 AS DateTime), 7288.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (13, 98, 66, 11, 26, CAST(0x0000A4E500000000 AS DateTime), 7732.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (14, 189, 11, 12, 48, CAST(0x0000A0DF00000000 AS DateTime), 6505.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (15, 24, 4, 1, 55, CAST(0x0000A19D00000000 AS DateTime), 7582.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (16, 122, 54, 2, 57, CAST(0x0000A15000000000 AS DateTime), 5515.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (17, 221, 34, 4, 49, CAST(0x0000A28400000000 AS DateTime), 8416.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (18, 169, 16, 9, 77, CAST(0x0000A45400000000 AS DateTime), 7430.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (19, 104, 20, 6, 63, CAST(0x0000A22600000000 AS DateTime), 8445.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (20, 100, 50, 8, 12, CAST(0x0000A1CF00000000 AS DateTime), 7839.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (21, 115, 46, 6, 52, CAST(0x00009EB500000000 AS DateTime), 6402.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (22, 110, 36, 12, 52, CAST(0x0000A24E00000000 AS DateTime), 4518.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (23, 125, 6, 11, 53, CAST(0x00009F9E00000000 AS DateTime), 7326.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (24, 116, 16, 4, 55, CAST(0x0000A10800000000 AS DateTime), 9144.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (25, 211, 41, 8, 73, CAST(0x0000A4C500000000 AS DateTime), 7417.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (26, 212, 61, 3, 38, CAST(0x0000A37D00000000 AS DateTime), 8022.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (27, 33, 19, 3, 57, CAST(0x0000A2B000000000 AS DateTime), 8726.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (28, 175, 67, 4, 70, CAST(0x00009DA600000000 AS DateTime), 8008.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (29, 125, 22, 9, 35, CAST(0x00009F9E00000000 AS DateTime), 7411.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (30, 203, 29, 7, 33, CAST(0x0000A4BF00000000 AS DateTime), 7266.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (31, 133, 2, 1, 10, CAST(0x0000A24B00000000 AS DateTime), 7506.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (32, 59, 58, 11, 98, CAST(0x0000A3CC00000000 AS DateTime), 9369.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (33, 138, 18, 7, 83, CAST(0x00009FEA00000000 AS DateTime), 6730.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (34, 30, 29, 10, 19, CAST(0x0000A19100000000 AS DateTime), 8575.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (35, 235, 20, 5, 62, CAST(0x00009DED00000000 AS DateTime), 7734.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (36, 71, 69, 9, 60, CAST(0x0000A4B100000000 AS DateTime), 6423.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (37, 220, 32, 11, 43, CAST(0x00009F9600000000 AS DateTime), 6970.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (38, 153, 1, 6, 20, CAST(0x00009D8100000000 AS DateTime), 6699.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (39, 205, 63, 8, 69, CAST(0x0000A57200000000 AS DateTime), 7573.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (40, 238, 65, 4, 47, CAST(0x0000A23800000000 AS DateTime), 6412.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (41, 144, 41, 2, 42, CAST(0x0000A27D00000000 AS DateTime), 6031.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (42, 181, 54, 5, 50, CAST(0x00009E9B00000000 AS DateTime), 7490.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (43, 196, 67, 1, 74, CAST(0x0000A34300000000 AS DateTime), 8249.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (44, 21, 66, 1, 35, CAST(0x0000A54000000000 AS DateTime), 7719.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (45, 90, 2, 2, 81, CAST(0x00009F9700000000 AS DateTime), 8862.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (46, 153, 42, 7, 45, CAST(0x00009D8100000000 AS DateTime), 7762.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (47, 12, 70, 1, 22, CAST(0x0000A34300000000 AS DateTime), 8781.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (48, 154, 10, 9, 63, CAST(0x0000A56F00000000 AS DateTime), 7950.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (49, 186, 54, 10, 14, CAST(0x00009EF900000000 AS DateTime), 7421.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (50, 205, 37, 1, 9, CAST(0x0000A57200000000 AS DateTime), 5176.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (51, 237, 30, 3, 44, CAST(0x00009D3300000000 AS DateTime), 7680.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (52, 153, 64, 7, 30, CAST(0x00009D8100000000 AS DateTime), 8675.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (53, 223, 28, 11, 38, CAST(0x0000A28A00000000 AS DateTime), 6221.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (54, 224, 16, 10, 54, CAST(0x0000A08400000000 AS DateTime), 6152.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (55, 113, 33, 7, 15, CAST(0x00009DE800000000 AS DateTime), 7605.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (56, 155, 71, 3, 94, CAST(0x00009E4600000000 AS DateTime), 5370.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (57, 50, 35, 7, 81, CAST(0x0000A47000000000 AS DateTime), 6169.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (58, 79, 50, 11, 58, CAST(0x00009E3200000000 AS DateTime), 5536.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (59, 127, 45, 1, 50, CAST(0x0000A07000000000 AS DateTime), 6260.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (60, 186, 40, 10, 22, CAST(0x00009EF900000000 AS DateTime), 8379.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (61, 83, 71, 3, 21, CAST(0x00009E1C00000000 AS DateTime), 5615.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (62, 54, 56, 1, 21, CAST(0x00009D0B00000000 AS DateTime), 7497.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (63, 26, 5, 5, 97, CAST(0x00009F6000000000 AS DateTime), 7199.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (64, 217, 17, 3, 41, CAST(0x00009FEE00000000 AS DateTime), 2019.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (65, 161, 47, 5, 73, CAST(0x0000A34A00000000 AS DateTime), 8360.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (66, 211, 69, 6, 97, CAST(0x0000A4C500000000 AS DateTime), 7726.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (67, 218, 62, 9, 60, CAST(0x00009FBF00000000 AS DateTime), 5961.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (68, 101, 26, 1, 42, CAST(0x00009F3D00000000 AS DateTime), 5975.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (69, 129, 17, 3, 94, CAST(0x00009E6D00000000 AS DateTime), 5513.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (70, 25, 40, 6, 18, CAST(0x00009E3B00000000 AS DateTime), 4233.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (71, 68, 10, 3, 14, CAST(0x00009E2700000000 AS DateTime), 7240.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (72, 31, 21, 12, 59, CAST(0x00009D9400000000 AS DateTime), 5802.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (73, 77, 63, 8, 5, CAST(0x00009D1900000000 AS DateTime), 7692.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (74, 213, 8, 10, 11, CAST(0x0000A4D000000000 AS DateTime), 7094.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (75, 203, 61, 1, 83, CAST(0x0000A4BF00000000 AS DateTime), 8177.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (76, 171, 32, 4, 43, CAST(0x00009D8300000000 AS DateTime), 8260.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (77, 113, 20, 1, 65, CAST(0x00009DE800000000 AS DateTime), 7670.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (78, 35, 45, 2, 9, CAST(0x0000A2A300000000 AS DateTime), 5458.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (79, 40, 60, 1, 22, CAST(0x0000A08200000000 AS DateTime), 8822.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (80, 239, 8, 7, 45, CAST(0x0000A48500000000 AS DateTime), 6337.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (81, 234, 63, 9, 2, CAST(0x00009DB400000000 AS DateTime), 5578.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (82, 32, 48, 6, 61, CAST(0x0000A48200000000 AS DateTime), 7048.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (83, 118, 8, 7, 89, CAST(0x00009F4600000000 AS DateTime), 7668.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (84, 35, 59, 3, 70, CAST(0x0000A2A300000000 AS DateTime), 5608.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (85, 122, 29, 1, 45, CAST(0x0000A15000000000 AS DateTime), 6959.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (86, 28, 25, 8, 8, CAST(0x0000A32600000000 AS DateTime), 8461.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (87, 210, 47, 4, 26, CAST(0x00009E7600000000 AS DateTime), 7468.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (88, 95, 67, 12, 16, CAST(0x0000A15F00000000 AS DateTime), 8486.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (89, 64, 63, 8, 53, CAST(0x0000A48200000000 AS DateTime), 6573.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (90, 119, 46, 9, 45, CAST(0x00009EFC00000000 AS DateTime), 6449.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (91, 51, 34, 3, 52, CAST(0x0000A36500000000 AS DateTime), 5639.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (92, 105, 57, 2, 14, CAST(0x0000A4B100000000 AS DateTime), 9147.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (93, 19, 33, 2, 42, CAST(0x0000A4B800000000 AS DateTime), 6651.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (94, 232, 54, 4, 46, CAST(0x0000A19D00000000 AS DateTime), 7646.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (95, 81, 12, 6, 13, CAST(0x0000A2DD00000000 AS DateTime), 7787.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (96, 179, 38, 12, 61, CAST(0x0000A29A00000000 AS DateTime), 6043.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (97, 71, 69, 12, 30, CAST(0x0000A4B100000000 AS DateTime), 2512.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (98, 49, 14, 10, 66, CAST(0x0000A14B00000000 AS DateTime), 6772.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (99, 204, 11, 5, 74, CAST(0x0000A49800000000 AS DateTime), 6976.0000)
GO
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (100, 192, 65, 6, 32, CAST(0x0000A07200000000 AS DateTime), 6714.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (101, 164, 32, 1, 94, CAST(0x0000A37700000000 AS DateTime), 6869.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (102, 90, 68, 7, 87, CAST(0x00009F9700000000 AS DateTime), 6475.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (103, 112, 66, 4, 68, CAST(0x0000A4B800000000 AS DateTime), 6257.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (104, 137, 65, 9, 82, CAST(0x0000A1C100000000 AS DateTime), 7513.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (105, 72, 71, 12, 22, CAST(0x0000A13400000000 AS DateTime), 8020.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (106, 50, 6, 7, 29, CAST(0x0000A47000000000 AS DateTime), 6766.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (107, 180, 2, 5, 92, CAST(0x00009D3600000000 AS DateTime), 7348.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (108, 226, 42, 8, 93, CAST(0x0000A39D00000000 AS DateTime), 7958.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (109, 139, 58, 10, 7, CAST(0x00009E6A00000000 AS DateTime), 7313.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (110, 87, 9, 4, 61, CAST(0x00009F9700000000 AS DateTime), 6266.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (111, 20, 6, 11, 71, CAST(0x00009F7F00000000 AS DateTime), 7682.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (112, 68, 40, 5, 46, CAST(0x00009E2700000000 AS DateTime), 7818.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (113, 90, 52, 8, 84, CAST(0x00009F9700000000 AS DateTime), 7828.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (114, 98, 35, 12, 60, CAST(0x0000A4E500000000 AS DateTime), 7288.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (115, 212, 52, 6, 83, CAST(0x0000A37D00000000 AS DateTime), 7314.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (116, 100, 27, 5, 30, CAST(0x0000A1CF00000000 AS DateTime), 9159.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (117, 8, 63, 10, 89, CAST(0x0000A32400000000 AS DateTime), 7220.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (118, 32, 59, 1, 56, CAST(0x0000A18300000000 AS DateTime), 8328.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (119, 170, 19, 2, 32, CAST(0x0000A3DB00000000 AS DateTime), 8063.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (120, 67, 5, 5, 30, CAST(0x0000A54B00000000 AS DateTime), 8301.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (121, 214, 63, 4, 42, CAST(0x0000A15D00000000 AS DateTime), 8012.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (122, 101, 12, 3, 51, CAST(0x00009F3D00000000 AS DateTime), 4736.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (123, 161, 10, 10, 98, CAST(0x0000A34A00000000 AS DateTime), 9405.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (124, 235, 3, 3, 37, CAST(0x00009DED00000000 AS DateTime), 5833.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (125, 231, 31, 5, 8, CAST(0x0000A18300000000 AS DateTime), 6782.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (126, 83, 3, 1, 98, CAST(0x00009E1C00000000 AS DateTime), 7301.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (127, 139, 15, 12, 40, CAST(0x00009E6A00000000 AS DateTime), 9331.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (128, 122, 40, 2, 92, CAST(0x0000A15000000000 AS DateTime), 8975.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (129, 119, 14, 3, 27, CAST(0x00009EFC00000000 AS DateTime), 7693.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (130, 207, 64, 2, 77, CAST(0x0000A48900000000 AS DateTime), 6973.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (131, 218, 67, 2, 97, CAST(0x00009FBF00000000 AS DateTime), 5653.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (132, 107, 24, 8, 37, CAST(0x0000A3CC00000000 AS DateTime), 9269.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (133, 235, 35, 12, 24, CAST(0x00009DED00000000 AS DateTime), 5274.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (134, 100, 11, 2, 12, CAST(0x0000A1CF00000000 AS DateTime), 8659.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (135, 1, 53, 2, 86, CAST(0x0000A34300000000 AS DateTime), 7013.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (136, 220, 27, 10, 15, CAST(0x00009F9600000000 AS DateTime), 7372.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (137, 31, 66, 3, 13, CAST(0x00009D9400000000 AS DateTime), 7114.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (138, 126, 6, 9, 38, CAST(0x0000A04300000000 AS DateTime), 7104.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (139, 167, 44, 5, 17, CAST(0x0000A4D200000000 AS DateTime), 6216.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (140, 197, 41, 6, 91, CAST(0x0000A30B00000000 AS DateTime), 5208.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (141, 12, 58, 6, 66, CAST(0x0000A34300000000 AS DateTime), 8240.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (142, 98, 69, 8, 83, CAST(0x0000A4E500000000 AS DateTime), 8643.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (143, 205, 39, 11, 40, CAST(0x0000A57200000000 AS DateTime), 7992.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (144, 206, 36, 6, 21, CAST(0x0000A18E00000000 AS DateTime), 8014.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (145, 9, 20, 4, 41, CAST(0x0000A34300000000 AS DateTime), 7709.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (146, 212, 37, 1, 17, CAST(0x0000A37D00000000 AS DateTime), 6184.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (147, 59, 6, 12, 65, CAST(0x0000A3CC00000000 AS DateTime), 6428.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (148, 126, 17, 2, 93, CAST(0x0000A04300000000 AS DateTime), 5068.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (149, 119, 65, 10, 38, CAST(0x00009EFC00000000 AS DateTime), 7207.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (150, 77, 64, 6, 32, CAST(0x00009D1900000000 AS DateTime), 6806.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (151, 187, 64, 10, 82, CAST(0x0000A31B00000000 AS DateTime), 7480.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (152, 49, 23, 10, 13, CAST(0x0000A14B00000000 AS DateTime), 8585.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (153, 54, 71, 5, 68, CAST(0x00009D0B00000000 AS DateTime), 8036.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (154, 164, 65, 10, 49, CAST(0x0000A37700000000 AS DateTime), 8581.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (155, 79, 36, 11, 58, CAST(0x00009E3200000000 AS DateTime), 7972.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (156, 221, 66, 5, 6, CAST(0x0000A28400000000 AS DateTime), 8815.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (157, 214, 68, 11, 3, CAST(0x0000A15D00000000 AS DateTime), 8587.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (158, 2, 50, 9, 9, CAST(0x0000A3A300000000 AS DateTime), 8421.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (159, 201, 62, 1, 61, CAST(0x0000A46100000000 AS DateTime), 6765.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (160, 148, 24, 12, 87, CAST(0x0000A2CE00000000 AS DateTime), 6246.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (161, 17, 65, 8, 23, CAST(0x00009F5A00000000 AS DateTime), 6921.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (162, 202, 30, 10, 77, CAST(0x0000A47C00000000 AS DateTime), 7663.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (163, 11, 20, 6, 31, CAST(0x0000A32400000000 AS DateTime), 6293.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (164, 190, 39, 5, 55, CAST(0x0000A27D00000000 AS DateTime), 8607.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (165, 196, 52, 5, 73, CAST(0x0000A1D500000000 AS DateTime), 6775.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (166, 209, 2, 11, 29, CAST(0x00009EB000000000 AS DateTime), 7079.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (167, 4, 11, 10, 19, CAST(0x0000A3FB00000000 AS DateTime), 7108.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (168, 192, 40, 9, 13, CAST(0x0000A07200000000 AS DateTime), 7927.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (169, 69, 38, 4, 54, CAST(0x00009DB300000000 AS DateTime), 6520.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (170, 119, 36, 5, 86, CAST(0x00009EFC00000000 AS DateTime), 8089.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (171, 69, 2, 12, 10, CAST(0x00009DB300000000 AS DateTime), 6461.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (172, 35, 31, 11, 64, CAST(0x0000A2A300000000 AS DateTime), 3357.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (173, 208, 53, 10, 79, CAST(0x0000A1D500000000 AS DateTime), 6646.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (174, 137, 44, 10, 45, CAST(0x0000A1C100000000 AS DateTime), 6205.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (175, 120, 70, 10, 29, CAST(0x0000A16200000000 AS DateTime), 4076.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (176, 139, 16, 12, 46, CAST(0x00009E6A00000000 AS DateTime), 6668.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (177, 212, 22, 3, 42, CAST(0x0000A37D00000000 AS DateTime), 6465.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (178, 154, 30, 4, 16, CAST(0x0000A56F00000000 AS DateTime), 7493.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (179, 168, 44, 3, 27, CAST(0x0000A44200000000 AS DateTime), 8026.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (180, 33, 46, 1, 64, CAST(0x0000A2B000000000 AS DateTime), 7131.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (181, 178, 37, 7, 49, CAST(0x00009DC600000000 AS DateTime), 6942.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (182, 123, 21, 1, 84, CAST(0x00009D9A00000000 AS DateTime), 7750.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (183, 139, 15, 7, 34, CAST(0x00009E6A00000000 AS DateTime), 4570.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (184, 190, 57, 3, 11, CAST(0x0000A27D00000000 AS DateTime), 6866.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (185, 68, 17, 6, 55, CAST(0x00009E2700000000 AS DateTime), 7231.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (186, 19, 19, 11, 76, CAST(0x0000A08300000000 AS DateTime), 5408.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (187, 59, 66, 6, 56, CAST(0x0000A3CC00000000 AS DateTime), 4017.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (188, 16, 70, 1, 81, CAST(0x0000A56100000000 AS DateTime), 7181.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (189, 98, 53, 7, 19, CAST(0x0000A4E500000000 AS DateTime), 8695.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (190, 63, 45, 7, 89, CAST(0x0000A08300000000 AS DateTime), 5384.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (191, 203, 42, 2, 65, CAST(0x0000A4BF00000000 AS DateTime), 4048.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (192, 14, 50, 4, 99, CAST(0x0000A0F900000000 AS DateTime), 7527.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (193, 18, 71, 7, 62, CAST(0x0000A46F00000000 AS DateTime), 7622.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (194, 111, 26, 3, 70, CAST(0x00009FE500000000 AS DateTime), 7373.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (195, 79, 21, 10, 14, CAST(0x00009E3200000000 AS DateTime), 6279.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (196, 48, 34, 3, 42, CAST(0x0000A1F800000000 AS DateTime), 5515.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (197, 232, 28, 6, 84, CAST(0x0000A19D00000000 AS DateTime), 2934.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (198, 148, 44, 1, 97, CAST(0x0000A2CE00000000 AS DateTime), 6762.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (199, 223, 3, 4, 89, CAST(0x0000A28A00000000 AS DateTime), 7206.0000)
GO
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (200, 101, 48, 11, 10, CAST(0x00009F3D00000000 AS DateTime), 4377.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (201, 189, 25, 2, 52, CAST(0x0000A0DF00000000 AS DateTime), 7758.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (202, 59, 27, 10, 88, CAST(0x0000A3CC00000000 AS DateTime), 7220.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (203, 108, 6, 12, 9, CAST(0x0000A1B800000000 AS DateTime), 8402.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (204, 127, 16, 10, 42, CAST(0x0000A07000000000 AS DateTime), 7838.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (205, 203, 33, 7, 73, CAST(0x0000A4BF00000000 AS DateTime), 6426.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (206, 8, 64, 4, 52, CAST(0x0000A32400000000 AS DateTime), 7871.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (207, 213, 23, 9, 68, CAST(0x0000A4D000000000 AS DateTime), 7206.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (208, 228, 44, 7, 54, CAST(0x00009FDB00000000 AS DateTime), 4775.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (209, 35, 22, 12, 15, CAST(0x0000A2A300000000 AS DateTime), 7097.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (210, 214, 61, 11, 19, CAST(0x0000A15D00000000 AS DateTime), 7548.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (211, 226, 25, 2, 6, CAST(0x0000A39D00000000 AS DateTime), 9021.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (212, 159, 5, 6, 1, CAST(0x0000A06D00000000 AS DateTime), 7462.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (213, 51, 51, 2, 92, CAST(0x0000A36500000000 AS DateTime), 7266.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (214, 181, 60, 9, 11, CAST(0x00009E9B00000000 AS DateTime), 7189.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (215, 98, 35, 11, 23, CAST(0x0000A4E500000000 AS DateTime), 4673.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (216, 171, 49, 5, 68, CAST(0x00009D8300000000 AS DateTime), 8195.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (217, 67, 30, 3, 44, CAST(0x0000A54B00000000 AS DateTime), 8389.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (218, 12, 6, 7, 93, CAST(0x0000A34300000000 AS DateTime), 6844.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (219, 238, 38, 3, 55, CAST(0x0000A23800000000 AS DateTime), 9209.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (220, 65, 21, 9, 55, CAST(0x0000A3B400000000 AS DateTime), 7043.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (221, 124, 29, 4, 28, CAST(0x00009FE200000000 AS DateTime), 7014.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (222, 181, 63, 9, 5, CAST(0x00009E9B00000000 AS DateTime), 6131.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (223, 125, 42, 5, 43, CAST(0x00009F9E00000000 AS DateTime), 4637.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (224, 90, 9, 5, 17, CAST(0x00009F9700000000 AS DateTime), 8417.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (225, 112, 41, 3, 77, CAST(0x0000A4B800000000 AS DateTime), 9541.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (226, 1, 8, 1, 82, CAST(0x0000A34300000000 AS DateTime), 6959.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (227, 33, 21, 11, 94, CAST(0x0000A2B000000000 AS DateTime), 8100.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (228, 232, 71, 8, 67, CAST(0x0000A19D00000000 AS DateTime), 5927.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (229, 54, 64, 12, 90, CAST(0x00009D0B00000000 AS DateTime), 7733.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (230, 21, 43, 2, 33, CAST(0x0000A54000000000 AS DateTime), 6335.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (231, 214, 22, 9, 61, CAST(0x0000A15D00000000 AS DateTime), 8120.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (232, 108, 40, 1, 73, CAST(0x0000A1B800000000 AS DateTime), 6690.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (233, 154, 13, 8, 13, CAST(0x0000A56F00000000 AS DateTime), 6414.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (234, 125, 70, 5, 99, CAST(0x00009F9E00000000 AS DateTime), 4825.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (235, 221, 5, 2, 30, CAST(0x0000A28400000000 AS DateTime), 7659.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (236, 141, 5, 1, 1, CAST(0x0000A3D300000000 AS DateTime), 7680.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (237, 121, 37, 6, 10, CAST(0x0000A0DE00000000 AS DateTime), 6364.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (238, 221, 21, 4, 39, CAST(0x0000A28400000000 AS DateTime), 7099.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (239, 93, 68, 7, 79, CAST(0x0000A0DE00000000 AS DateTime), 8551.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (240, 15, 71, 9, 34, CAST(0x0000A52D00000000 AS DateTime), 6034.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (241, 58, 18, 9, 5, CAST(0x0000A0DE00000000 AS DateTime), 5238.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (242, 50, 69, 12, 52, CAST(0x0000A47000000000 AS DateTime), 5571.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (243, 95, 32, 9, 70, CAST(0x0000A15F00000000 AS DateTime), 5743.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (244, 168, 43, 1, 46, CAST(0x0000A44200000000 AS DateTime), 7104.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (245, 200, 15, 1, 70, CAST(0x00009F9600000000 AS DateTime), 7548.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (246, 169, 15, 12, 57, CAST(0x0000A45400000000 AS DateTime), 6976.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (247, 192, 14, 7, 24, CAST(0x0000A07200000000 AS DateTime), 7170.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (248, 151, 44, 3, 26, CAST(0x0000A25400000000 AS DateTime), 7202.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (249, 182, 54, 7, 8, CAST(0x0000A02700000000 AS DateTime), 7373.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (250, 79, 52, 9, 32, CAST(0x00009E3200000000 AS DateTime), 7163.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (251, 10, 56, 5, 81, CAST(0x0000A3FB00000000 AS DateTime), 8285.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (252, 122, 15, 4, 12, CAST(0x0000A15000000000 AS DateTime), 5706.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (253, 151, 69, 3, 22, CAST(0x0000A25400000000 AS DateTime), 7155.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (254, 124, 54, 6, 76, CAST(0x00009FE200000000 AS DateTime), 5918.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (255, 162, 27, 9, 13, CAST(0x0000A29200000000 AS DateTime), 5237.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (256, 177, 4, 11, 25, CAST(0x00009EDE00000000 AS DateTime), 5731.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (257, 23, 61, 12, 15, CAST(0x00009FEC00000000 AS DateTime), 7866.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (258, 7, 25, 6, 29, CAST(0x0000A3FB00000000 AS DateTime), 7477.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (259, 157, 45, 5, 48, CAST(0x0000A1EC00000000 AS DateTime), 8822.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (260, 194, 30, 4, 81, CAST(0x00009E8E00000000 AS DateTime), 7181.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (261, 23, 6, 7, 95, CAST(0x00009FEC00000000 AS DateTime), 5531.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (262, 207, 19, 7, 89, CAST(0x0000A48900000000 AS DateTime), 4710.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (263, 129, 6, 2, 36, CAST(0x00009E6D00000000 AS DateTime), 7118.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (264, 240, 66, 4, 98, CAST(0x0000A0CB00000000 AS DateTime), 7640.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (265, 75, 46, 7, 3, CAST(0x0000A49B00000000 AS DateTime), 5927.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (266, 197, 11, 1, 53, CAST(0x0000A30B00000000 AS DateTime), 7513.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (267, 148, 67, 9, 17, CAST(0x0000A2CE00000000 AS DateTime), 6916.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (268, 141, 30, 12, 49, CAST(0x0000A3D300000000 AS DateTime), 8714.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (269, 45, 37, 9, 59, CAST(0x0000A35700000000 AS DateTime), 7763.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (270, 55, 45, 9, 92, CAST(0x00009D3800000000 AS DateTime), 7672.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (271, 46, 10, 12, 40, CAST(0x0000A05C00000000 AS DateTime), 6133.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (272, 60, 45, 10, 85, CAST(0x0000A52A00000000 AS DateTime), 8280.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (273, 229, 67, 9, 74, CAST(0x0000A37D00000000 AS DateTime), 6275.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (274, 181, 50, 11, 86, CAST(0x00009E9B00000000 AS DateTime), 8519.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (275, 132, 47, 4, 72, CAST(0x00009E1400000000 AS DateTime), 6158.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (276, 181, 55, 4, 10, CAST(0x00009E9B00000000 AS DateTime), 7868.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (277, 151, 34, 1, 95, CAST(0x0000A25400000000 AS DateTime), 7800.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (278, 182, 18, 5, 94, CAST(0x0000A02700000000 AS DateTime), 7984.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (279, 40, 53, 11, 39, CAST(0x0000A08200000000 AS DateTime), 7305.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (280, 144, 6, 10, 50, CAST(0x0000A27D00000000 AS DateTime), 9490.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (281, 118, 61, 2, 41, CAST(0x00009F4600000000 AS DateTime), 6481.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (282, 81, 66, 4, 16, CAST(0x0000A2DD00000000 AS DateTime), 5740.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (283, 21, 4, 11, 26, CAST(0x0000A54000000000 AS DateTime), 7594.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (284, 181, 50, 3, 33, CAST(0x00009E9B00000000 AS DateTime), 6295.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (285, 2, 49, 10, 54, CAST(0x0000A3A300000000 AS DateTime), 8699.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (286, 238, 20, 11, 95, CAST(0x0000A23800000000 AS DateTime), 8428.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (287, 145, 29, 12, 73, CAST(0x0000A46200000000 AS DateTime), 6890.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (288, 129, 39, 8, 7, CAST(0x00009E6D00000000 AS DateTime), 5835.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (289, 151, 52, 5, 40, CAST(0x0000A25400000000 AS DateTime), 8152.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (290, 53, 19, 4, 13, CAST(0x0000A0DE00000000 AS DateTime), 7520.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (291, 147, 45, 1, 99, CAST(0x0000A0DE00000000 AS DateTime), 7499.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (292, 23, 2, 2, 75, CAST(0x00009FEC00000000 AS DateTime), 5010.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (293, 157, 71, 5, 4, CAST(0x0000A1EC00000000 AS DateTime), 6424.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (294, 188, 24, 5, 14, CAST(0x0000A0DE00000000 AS DateTime), 6758.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (295, 164, 8, 6, 38, CAST(0x0000A37700000000 AS DateTime), 4837.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (296, 212, 12, 9, 86, CAST(0x0000A37D00000000 AS DateTime), 7560.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (297, 105, 54, 7, 38, CAST(0x0000A0DE00000000 AS DateTime), 8720.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (298, 198, 10, 4, 29, CAST(0x0000A3C100000000 AS DateTime), 5465.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (299, 163, 3, 9, 28, CAST(0x00009EE100000000 AS DateTime), 6478.0000)
GO
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (300, 166, 17, 7, 39, CAST(0x00009F2900000000 AS DateTime), 6461.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (301, 128, 24, 6, 8, CAST(0x0000A2D000000000 AS DateTime), 7811.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (302, 237, 1, 2, 22, CAST(0x00009D3300000000 AS DateTime), 7396.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (303, 159, 12, 7, 68, CAST(0x0000A06D00000000 AS DateTime), 8706.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (304, 225, 71, 8, 25, CAST(0x0000A06100000000 AS DateTime), 7772.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (305, 24, 18, 4, 71, CAST(0x0000A0DE00000000 AS DateTime), 9257.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (306, 114, 60, 7, 62, CAST(0x0000A37000000000 AS DateTime), 7947.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (307, 26, 18, 9, 90, CAST(0x00009F6000000000 AS DateTime), 8807.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (308, 116, 9, 9, 10, CAST(0x0000A10800000000 AS DateTime), 6179.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (309, 143, 15, 12, 41, CAST(0x0000A1B500000000 AS DateTime), 8558.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (310, 37, 39, 1, 2, CAST(0x00009E1F00000000 AS DateTime), 5403.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (311, 220, 43, 3, 40, CAST(0x00009F9600000000 AS DateTime), 8098.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (312, 170, 11, 10, 6, CAST(0x0000A3DB00000000 AS DateTime), 7614.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (313, 233, 22, 1, 64, CAST(0x0000A2F200000000 AS DateTime), 6480.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (314, 138, 70, 4, 35, CAST(0x00009FEA00000000 AS DateTime), 8130.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (315, 56, 53, 4, 71, CAST(0x0000A28000000000 AS DateTime), 6754.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (316, 127, 9, 6, 71, CAST(0x0000A07000000000 AS DateTime), 5547.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (317, 98, 7, 9, 1, CAST(0x0000A4E500000000 AS DateTime), 5473.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (318, 150, 28, 2, 44, CAST(0x0000A31C00000000 AS DateTime), 4300.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (319, 117, 3, 12, 35, CAST(0x0000A22000000000 AS DateTime), 8552.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (320, 120, 42, 9, 42, CAST(0x0000A16200000000 AS DateTime), 6398.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (321, 202, 62, 3, 59, CAST(0x0000A47C00000000 AS DateTime), 5240.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (322, 151, 38, 12, 60, CAST(0x0000A25400000000 AS DateTime), 8202.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (323, 10, 28, 12, 43, CAST(0x0000A3FB00000000 AS DateTime), 8119.0000)
INSERT [dbo].[UsersGames] ([Id], [GameId], [UserId], [CharacterId], [Level], [JoinedOn], [Cash]) VALUES (324, 122, 9, 1, 16, CAST(0x0000A15000000000 AS DateTime), 5832.0000)
SET IDENTITY_INSERT [dbo].[UsersGames] OFF
ALTER TABLE [dbo].[Games] ADD  CONSTRAINT [DF_Games_IsFinished]  DEFAULT ((0)) FOR [IsFinished]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[UsersGames] ADD  CONSTRAINT [DF_UsersGames_Cash]  DEFAULT ((1000)) FOR [Cash]
GO
ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_Statistics] FOREIGN KEY([StatisticId])
REFERENCES [dbo].[Statistics] ([Id])
GO
ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_Statistics]
GO
ALTER TABLE [dbo].[Games]  WITH CHECK ADD  CONSTRAINT [FK_Games_GameTypes] FOREIGN KEY([GameTypeId])
REFERENCES [dbo].[GameTypes] ([Id])
GO
ALTER TABLE [dbo].[Games] CHECK CONSTRAINT [FK_Games_GameTypes]
GO
ALTER TABLE [dbo].[GameTypeForbiddenItems]  WITH CHECK ADD  CONSTRAINT [FK_GameTypeForbiddenItems_GameTypes] FOREIGN KEY([GameTypeId])
REFERENCES [dbo].[GameTypes] ([Id])
GO
ALTER TABLE [dbo].[GameTypeForbiddenItems] CHECK CONSTRAINT [FK_GameTypeForbiddenItems_GameTypes]
GO
ALTER TABLE [dbo].[GameTypeForbiddenItems]  WITH CHECK ADD  CONSTRAINT [FK_GameTypeForbiddenItems_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[GameTypeForbiddenItems] CHECK CONSTRAINT [FK_GameTypeForbiddenItems_Items]
GO
ALTER TABLE [dbo].[GameTypes]  WITH CHECK ADD  CONSTRAINT [FK_GameTypes_Statistics] FOREIGN KEY([BonusStatsId])
REFERENCES [dbo].[Statistics] ([Id])
GO
ALTER TABLE [dbo].[GameTypes] CHECK CONSTRAINT [FK_GameTypes_Statistics]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_ItemTypes] FOREIGN KEY([ItemTypeId])
REFERENCES [dbo].[ItemTypes] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_ItemTypes]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Statistics] FOREIGN KEY([StatisticId])
REFERENCES [dbo].[Statistics] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Statistics]
GO
ALTER TABLE [dbo].[UserGameItems]  WITH CHECK ADD  CONSTRAINT [FK_UserGameItems_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[UserGameItems] CHECK CONSTRAINT [FK_UserGameItems_Items]
GO
ALTER TABLE [dbo].[UserGameItems]  WITH CHECK ADD  CONSTRAINT [FK_UserGameItems_UsersGames] FOREIGN KEY([UserGameId])
REFERENCES [dbo].[UsersGames] ([Id])
GO
ALTER TABLE [dbo].[UserGameItems] CHECK CONSTRAINT [FK_UserGameItems_UsersGames]
GO
ALTER TABLE [dbo].[UsersGames]  WITH CHECK ADD  CONSTRAINT [FK_UsersGames_Characters] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
GO
ALTER TABLE [dbo].[UsersGames] CHECK CONSTRAINT [FK_UsersGames_Characters]
GO
ALTER TABLE [dbo].[UsersGames]  WITH CHECK ADD  CONSTRAINT [FK_UsersGames_Games] FOREIGN KEY([GameId])
REFERENCES [dbo].[Games] ([Id])
GO
ALTER TABLE [dbo].[UsersGames] CHECK CONSTRAINT [FK_UsersGames_Games]
GO
ALTER TABLE [dbo].[UsersGames]  WITH CHECK ADD  CONSTRAINT [FK_UsersGames_Users1] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UsersGames] CHECK CONSTRAINT [FK_UsersGames_Users1]
GO
ALTER TABLE [dbo].[UsersGames]  WITH CHECK ADD  CONSTRAINT [CK_UsersGames] CHECK  (([Cash]>=(0)))
GO
ALTER TABLE [dbo].[UsersGames] CHECK CONSTRAINT [CK_UsersGames]
GO
USE [master]
GO
ALTER DATABASE [Diablo] SET  READ_WRITE 
GO


-- Create the database [Geography] if it does not exist
IF NOT EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = 'Geography')
  CREATE DATABASE Geography
GO

USE Geography
GO


-- Drop all existing Geography tables, so that we can create them
IF OBJECT_ID('Monasteries') IS NOT NULL
  DROP TABLE Monasteries
IF OBJECT_ID('CountriesRivers') IS NOT NULL
  DROP TABLE CountriesRivers
IF OBJECT_ID('MountainsCountries') IS NOT NULL
  DROP TABLE MountainsCountries
IF OBJECT_ID('Peaks') IS NOT NULL
  DROP TABLE Peaks
IF OBJECT_ID('Mountains') IS NOT NULL
  DROP TABLE Mountains
IF OBJECT_ID('Rivers') IS NOT NULL
  DROP TABLE Rivers
IF OBJECT_ID('Countries') IS NOT NULL
  DROP TABLE Countries
IF OBJECT_ID('Continents') IS NOT NULL
  DROP TABLE Continents
IF OBJECT_ID('Currencies') IS NOT NULL
  DROP TABLE Currencies


-- Create tables
CREATE TABLE Continents(
	ContinentCode char(2) NOT NULL,
	ContinentName nvarchar(50) NOT NULL,
  CONSTRAINT PK_Continents PRIMARY KEY CLUSTERED (ContinentCode)
)
GO

CREATE TABLE Countries(
	CountryCode char(2) NOT NULL,
	IsoCode char(3) NOT NULL,
	CountryName varchar(45) NOT NULL,
	CurrencyCode char(3),
	ContinentCode char(2) NOT NULL,
	Population int NOT NULL,
	AreaInSqKm int NOT NULL,
	Capital varchar(30) NOT NULL,
  CONSTRAINT PK_Countries PRIMARY KEY CLUSTERED (CountryCode)
 )
GO

CREATE TABLE Currencies(
	CurrencyCode char(3) NOT NULL,
	Description nvarchar(200) NOT NULL,
  CONSTRAINT PK_Currencies PRIMARY KEY CLUSTERED (CurrencyCode)
)
GO

CREATE TABLE Mountains(
	Id int IDENTITY NOT NULL,
	MountainRange nvarchar(50) NOT NULL,
  CONSTRAINT PK_Mountains PRIMARY KEY CLUSTERED (Id)
)
GO

CREATE TABLE MountainsCountries(
	MountainId int NOT NULL,
	CountryCode char(2) NOT NULL,
  CONSTRAINT PK_MountainsContinents PRIMARY KEY CLUSTERED (MountainId, CountryCode)
)
GO

CREATE TABLE Peaks(
	Id int IDENTITY NOT NULL,
	PeakName nvarchar(50) NOT NULL,
	Elevation int NOT NULL,
	MountainId int NOT NULL,
  CONSTRAINT PK_Peaks PRIMARY KEY CLUSTERED (Id)
)
GO

CREATE TABLE Rivers(
	Id int IDENTITY NOT NULL,
	RiverName nvarchar(50) NOT NULL,
	Length int NOT NULL,
	DrainageArea int NOT NULL,
	AverageDischarge int NOT NULL,
	Outflow nvarchar(50) NOT NULL,
  CONSTRAINT PK_Rivers PRIMARY KEY CLUSTERED (Id)
)
GO

CREATE TABLE CountriesRivers(
	RiverId int NOT NULL,
	CountryCode char(2) NOT NULL,
  CONSTRAINT PK_CountriesRivers PRIMARY KEY CLUSTERED (CountryCode, RiverId)
)
GO


-- Insert table data
INSERT Continents (ContinentCode, ContinentName) VALUES
(N'AF', N'Africa'),
(N'AN', N'Antarctica'),
(N'AS', N'Asia'),
(N'EU', N'Europe'),
(N'NA', N'North America'),
(N'OC', N'Oceania'),
(N'SA', N'South America')

INSERT Countries (CountryCode, IsoCode, CountryName, CurrencyCode, ContinentCode, Population, AreaInSqKm, Capital) VALUES
(N'AD', N'AND', N'Andorra', N'EUR', N'EU', 84000, 468, N'Andorra la Vella'),
(N'AE', N'ARE', N'United Arab Emirates', N'AED', N'AS', 4975593, 82880, N'Abu Dhabi'),
(N'AF', N'AFG', N'Afghanistan', N'AFN', N'AS', 29121286, 647500, N'Kabul'),
(N'AG', N'ATG', N'Antigua and Barbuda', N'XCD', N'NA', 86754, 443, N'St. John''s'),
(N'AI', N'AIA', N'Anguilla', N'XCD', N'NA', 13254, 102, N'The Valley'),
(N'AL', N'ALB', N'Albania', N'ALL', N'EU', 2986952, 28748, N'Tirana'),
(N'AM', N'ARM', N'Armenia', N'AMD', N'AS', 2968000, 29800, N'Yerevan'),
(N'AO', N'AGO', N'Angola', N'AOA', N'AF', 13068161, 1246700, N'Luanda'),
(N'AQ', N'ATA', N'Antarctica', NULL, N'AN', 0, 14000000, N''),
(N'AR', N'ARG', N'Argentina', N'ARS', N'SA', 41343201, 2766890, N'Buenos Aires'),
(N'AS', N'ASM', N'American Samoa', N'USD', N'OC', 57881, 199, N'Pago Pago'),
(N'AT', N'AUT', N'Austria', N'EUR', N'EU', 8205000, 83858, N'Vienna'),
(N'AU', N'AUS', N'Australia', N'AUD', N'OC', 21515754, 7686850, N'Canberra'),
(N'AW', N'ABW', N'Aruba', N'AWG', N'NA', 71566, 193, N'Oranjestad'),
(N'AX', N'ALA', N'�land', N'EUR', N'EU', 26711, 1580, N'Mariehamn'),
(N'AZ', N'AZE', N'Azerbaijan', N'AZN', N'AS', 8303512, 86600, N'Baku'),
(N'BA', N'BIH', N'Bosnia and Herzegovina', N'BAM', N'EU', 4590000, 51129, N'Sarajevo'),
(N'BB', N'BRB', N'Barbados', N'BBD', N'NA', 285653, 431, N'Bridgetown'),
(N'BD', N'BGD', N'Bangladesh', N'BDT', N'AS', 156118464, 144000, N'Dhaka'),
(N'BE', N'BEL', N'Belgium', N'EUR', N'EU', 10403000, 30510, N'Brussels'),
(N'BF', N'BFA', N'Burkina Faso', N'XOF', N'AF', 16241811, 274200, N'Ouagadougou'),
(N'BG', N'BGR', N'Bulgaria', N'BGN', N'EU', 7148785, 110910, N'Sofia'),
(N'BH', N'BHR', N'Bahrain', N'BHD', N'AS', 738004, 665, N'Manama'),
(N'BI', N'BDI', N'Burundi', N'BIF', N'AF', 9863117, 27830, N'Bujumbura'),
(N'BJ', N'BEN', N'Benin', N'XOF', N'AF', 9056010, 112620, N'Porto-Novo'),
(N'BL', N'BLM', N'Saint Barth�lemy', N'EUR', N'NA', 8450, 21, N'Gustavia'),
(N'BM', N'BMU', N'Bermuda', N'BMD', N'NA', 65365, 53, N'Hamilton'),
(N'BN', N'BRN', N'Brunei', N'BND', N'AS', 395027, 5770, N'Bandar Seri Begawan'),
(N'BO', N'BOL', N'Bolivia', N'BOB', N'SA', 9947418, 1098580, N'Sucre'),
(N'BQ', N'BES', N'Bonaire', N'USD', N'NA', 18012, 328, N''),
(N'BR', N'BRA', N'Brazil', N'BRL', N'SA', 201103330, 8511965, N'Bras�lia'),
(N'BS', N'BHS', N'Bahamas', N'BSD', N'NA', 301790, 13940, N'Nassau'),
(N'BT', N'BTN', N'Bhutan', N'BTN', N'AS', 699847, 47000, N'Thimphu'),
(N'BV', N'BVT', N'Bouvet Island', N'NOK', N'AN', 0, 49, N''),
(N'BW', N'BWA', N'Botswana', N'BWP', N'AF', 2029307, 600370, N'Gaborone'),
(N'BY', N'BLR', N'Belarus', N'BYR', N'EU', 9685000, 207600, N'Minsk'),
(N'BZ', N'BLZ', N'Belize', N'BZD', N'NA', 314522, 22966, N'Belmopan'),
(N'CA', N'CAN', N'Canada', N'CAD', N'NA', 33679000, 9984670, N'Ottawa'),
(N'CC', N'CCK', N'Cocos Islands', N'AUD', N'AS', 628, 14, N'West Island'),
(N'CD', N'COD', N'Democratic Republic of the Congo', N'CDF', N'AF', 70916439, 2345410, N'Kinshasa'),
(N'CF', N'CAF', N'Central African Republic', N'XAF', N'AF', 4844927, 622984, N'Bangui'),
(N'CG', N'COG', N'Republic of the Congo', N'XAF', N'AF', 3039126, 342000, N'Brazzaville'),
(N'CH', N'CHE', N'Switzerland', N'CHF', N'EU', 7581000, 41290, N'Berne'),
(N'CI', N'CIV', N'Ivory Coast', N'XOF', N'AF', 21058798, 322460, N'Yamoussoukro'),
(N'CK', N'COK', N'Cook Islands', N'NZD', N'OC', 21388, 240, N'Avarua'),
(N'CL', N'CHL', N'Chile', N'CLP', N'SA', 16746491, 756950, N'Santiago'),
(N'CM', N'CMR', N'Cameroon', N'XAF', N'AF', 19294149, 475440, N'Yaound�'),
(N'CN', N'CHN', N'China', N'CNY', N'AS', 1330044000, 9596960, N'Beijing'),
(N'CO', N'COL', N'Colombia', N'COP', N'SA', 47790000, 1138910, N'Bogot�'),
(N'CR', N'CRI', N'Costa Rica', N'CRC', N'NA', 4516220, 51100, N'San Jos�'),
(N'CU', N'CUB', N'Cuba', N'CUP', N'NA', 11423000, 110860, N'Havana'),
(N'CV', N'CPV', N'Cape Verde', N'CVE', N'AF', 508659, 4033, N'Praia'),
(N'CW', N'CUW', N'Curacao', N'ANG', N'NA', 141766, 444, N'Willemstad'),
(N'CX', N'CXR', N'Christmas Island', N'AUD', N'AS', 1500, 135, N'The Settlement'),
(N'CY', N'CYP', N'Cyprus', N'EUR', N'EU', 1102677, 9250, N'Nicosia'),
(N'CZ', N'CZE', N'Czech Republic', N'CZK', N'EU', 10476000, 78866, N'Prague'),
(N'DE', N'DEU', N'Germany', N'EUR', N'EU', 81802257, 357021, N'Berlin'),
(N'DJ', N'DJI', N'Djibouti', N'DJF', N'AF', 740528, 23000, N'Djibouti'),
(N'DK', N'DNK', N'Denmark', N'DKK', N'EU', 5484000, 43094, N'Copenhagen'),
(N'DM', N'DMA', N'Dominica', N'XCD', N'NA', 72813, 754, N'Roseau'),
(N'DO', N'DOM', N'Dominican Republic', N'DOP', N'NA', 9823821, 48730, N'Santo Domingo'),
(N'DZ', N'DZA', N'Algeria', N'DZD', N'AF', 34586184, 2381740, N'Algiers'),
(N'EC', N'ECU', N'Ecuador', N'USD', N'SA', 14790608, 283560, N'Quito'),
(N'EE', N'EST', N'Estonia', N'EUR', N'EU', 1291170, 45226, N'Tallinn'),
(N'EG', N'EGY', N'Egypt', N'EGP', N'AF', 80471869, 1001450, N'Cairo'),
(N'EH', N'ESH', N'Western Sahara', N'MAD', N'AF', 273008, 266000, N'El Aai�n'),
(N'ER', N'ERI', N'Eritrea', N'ERN', N'AF', 5792984, 121320, N'Asmara'),
(N'ES', N'ESP', N'Spain', N'EUR', N'EU', 46505963, 504782, N'Madrid'),
(N'ET', N'ETH', N'Ethiopia', N'ETB', N'AF', 88013491, 1127127, N'Addis Ababa'),
(N'FI', N'FIN', N'Finland', N'EUR', N'EU', 5244000, 337030, N'Helsinki'),
(N'FJ', N'FJI', N'Fiji', N'FJD', N'OC', 875983, 18270, N'Suva'),
(N'FK', N'FLK', N'Falkland Islands', N'FKP', N'SA', 2638, 12173, N'Stanley'),
(N'FM', N'FSM', N'Micronesia', N'USD', N'OC', 107708, 702, N'Palikir'),
(N'FO', N'FRO', N'Faroe Islands', N'DKK', N'EU', 48228, 1399, N'T�rshavn'),
(N'FR', N'FRA', N'France', N'EUR', N'EU', 64768389, 547030, N'Paris'),
(N'GA', N'GAB', N'Gabon', N'XAF', N'AF', 1545255, 267667, N'Libreville'),
(N'GB', N'GBR', N'United Kingdom', N'GBP', N'EU', 62348447, 244820, N'London'),
(N'GD', N'GRD', N'Grenada', N'XCD', N'NA', 107818, 344, N'St. George''s'),
(N'GE', N'GEO', N'Georgia', N'GEL', N'AS', 4630000, 69700, N'Tbilisi'),
(N'GF', N'GUF', N'French Guiana', N'EUR', N'SA', 195506, 91000, N'Cayenne'),
(N'GG', N'GGY', N'Guernsey', N'GBP', N'EU', 65228, 78, N'St Peter Port'),
(N'GH', N'GHA', N'Ghana', N'GHS', N'AF', 24339838, 239460, N'Accra'),
(N'GI', N'GIB', N'Gibraltar', N'GIP', N'EU', 27884, 6.5, N'Gibraltar'),
(N'GL', N'GRL', N'Greenland', N'DKK', N'NA', 56375, 2166086, N'Nuuk'),
(N'GM', N'GMB', N'Gambia', N'GMD', N'AF', 1593256, 11300, N'Banjul'),
(N'GN', N'GIN', N'Guinea', N'GNF', N'AF', 10324025, 245857, N'Conakry'),
(N'GP', N'GLP', N'Guadeloupe', N'EUR', N'NA', 443000, 1780, N'Basse-Terre'),
(N'GQ', N'GNQ', N'Equatorial Guinea', N'XAF', N'AF', 1014999, 28051, N'Malabo'),
(N'GR', N'GRC', N'Greece', N'EUR', N'EU', 11000000, 131940, N'Athens'),
(N'GS', N'SGS', N'South Georgia and the South Sandwich Islands', N'GBP', N'AN', 30, 3903, N'Grytviken'),
(N'GT', N'GTM', N'Guatemala', N'GTQ', N'NA', 13550440, 108890, N'Guatemala City'),
(N'GU', N'GUM', N'Guam', N'USD', N'OC', 159358, 549, N'Hag�t�a'),
(N'GW', N'GNB', N'Guinea-Bissau', N'XOF', N'AF', 1565126, 36120, N'Bissau'),
(N'GY', N'GUY', N'Guyana', N'GYD', N'SA', 748486, 214970, N'Georgetown'),
(N'HK', N'HKG', N'Hong Kong', N'HKD', N'AS', 6898686, 1092, N'Hong Kong'),
(N'HM', N'HMD', N'Heard Island and McDonald Islands', N'AUD', N'AN', 0, 412, N''),
(N'HN', N'HND', N'Honduras', N'HNL', N'NA', 7989415, 112090, N'Tegucigalpa'),
(N'HR', N'HRV', N'Croatia', N'HRK', N'EU', 4491000, 56542, N'Zagreb'),
(N'HT', N'HTI', N'Haiti', N'HTG', N'NA', 9648924, 27750, N'Port-au-Prince'),
(N'HU', N'HUN', N'Hungary', N'HUF', N'EU', 9982000, 93030, N'Budapest'),
(N'ID', N'IDN', N'Indonesia', N'IDR', N'AS', 242968342, 1919440, N'Jakarta'),
(N'IE', N'IRL', N'Ireland', N'EUR', N'EU', 4622917, 70280, N'Dublin'),
(N'IL', N'ISR', N'Israel', N'ILS', N'AS', 7353985, 20770, N''),
(N'IM', N'IMN', N'Isle of Man', N'GBP', N'EU', 75049, 572, N'Douglas'),
(N'IN', N'IND', N'India', N'INR', N'AS', 1173108018, 3287590, N'New Delhi'),
(N'IO', N'IOT', N'British Indian Ocean Territory', N'USD', N'AS', 4000, 60, N''),
(N'IQ', N'IRQ', N'Iraq', N'IQD', N'AS', 29671605, 437072, N'Baghdad'),
(N'IR', N'IRN', N'Iran', N'IRR', N'AS', 76923300, 1648000, N'Tehran'),
(N'IS', N'ISL', N'Iceland', N'ISK', N'EU', 308910, 103000, N'Reykjavik'),
(N'IT', N'ITA', N'Italy', N'EUR', N'EU', 60340328, 301230, N'Rome'),
(N'JE', N'JEY', N'Jersey', N'GBP', N'EU', 90812, 116, N'Saint Helier'),
(N'JM', N'JAM', N'Jamaica', N'JMD', N'NA', 2847232, 10991, N'Kingston'),
(N'JO', N'JOR', N'Jordan', N'JOD', N'AS', 6407085, 92300, N'Amman'),
(N'JP', N'JPN', N'Japan', N'JPY', N'AS', 127288000, 377835, N'Tokyo'),
(N'KE', N'KEN', N'Kenya', N'KES', N'AF', 40046566, 582650, N'Nairobi'),
(N'KG', N'KGZ', N'Kyrgyzstan', N'KGS', N'AS', 5508626, 198500, N'Bishkek'),
(N'KH', N'KHM', N'Cambodia', N'KHR', N'AS', 14453680, 181040, N'Phnom Penh'),
(N'KI', N'KIR', N'Kiribati', N'AUD', N'OC', 92533, 811, N'Tarawa'),
(N'KM', N'COM', N'Comoros', N'KMF', N'AF', 773407, 2170, N'Moroni'),
(N'KN', N'KNA', N'Saint Kitts and Nevis', N'XCD', N'NA', 51134, 261, N'Basseterre'),
(N'KP', N'PRK', N'North Korea', N'KPW', N'AS', 22912177, 120540, N'Pyongyang'),
(N'KR', N'KOR', N'South Korea', N'KRW', N'AS', 48422644, 98480, N'Seoul'),
(N'KW', N'KWT', N'Kuwait', N'KWD', N'AS', 2789132, 17820, N'Kuwait City'),
(N'KY', N'CYM', N'Cayman Islands', N'KYD', N'NA', 44270, 262, N'George Town'),
(N'KZ', N'KAZ', N'Kazakhstan', N'KZT', N'AS', 15340000, 2717300, N'Astana'),
(N'LA', N'LAO', N'Laos', N'LAK', N'AS', 6368162, 236800, N'Vientiane'),
(N'LB', N'LBN', N'Lebanon', N'LBP', N'AS', 4125247, 10400, N'Beirut'),
(N'LC', N'LCA', N'Saint Lucia', N'XCD', N'NA', 160922, 616, N'Castries'),
(N'LI', N'LIE', N'Liechtenstein', N'CHF', N'EU', 35000, 160, N'Vaduz'),
(N'LK', N'LKA', N'Sri Lanka', N'LKR', N'AS', 21513990, 65610, N'Colombo'),
(N'LR', N'LBR', N'Liberia', N'LRD', N'AF', 3685076, 111370, N'Monrovia'),
(N'LS', N'LSO', N'Lesotho', N'LSL', N'AF', 1919552, 30355, N'Maseru'),
(N'LT', N'LTU', N'Lithuania', N'EUR', N'EU', 2944459, 65200, N'Vilnius'),
(N'LU', N'LUX', N'Luxembourg', N'EUR', N'EU', 497538, 2586, N'Luxembourg'),
(N'LV', N'LVA', N'Latvia', N'EUR', N'EU', 2217969, 64589, N'Riga'),
(N'LY', N'LBY', N'Libya', N'LYD', N'AF', 6461454, 1759540, N'Tripoli'),
(N'MA', N'MAR', N'Morocco', N'MAD', N'AF', 31627428, 446550, N'Rabat'),
(N'MC', N'MCO', N'Monaco', N'EUR', N'EU', 32965, 1.95, N'Monaco'),
(N'MD', N'MDA', N'Moldova', N'MDL', N'EU', 4324000, 33843, N'Chisinau'),
(N'ME', N'MNE', N'Montenegro', N'EUR', N'EU', 666730, 14026, N'Podgorica'),
(N'MF', N'MAF', N'Saint Martin', N'EUR', N'NA', 35925, 53, N'Marigot'),
(N'MG', N'MDG', N'Madagascar', N'MGA', N'AF', 21281844, 587040, N'Antananarivo'),
(N'MH', N'MHL', N'Marshall Islands', N'USD', N'OC', 65859, 181.3, N'Majuro'),
(N'MK', N'MKD', N'Macedonia', N'MKD', N'EU', 2062294, 25333, N'Skopje'),
(N'ML', N'MLI', N'Mali', N'XOF', N'AF', 13796354, 1240000, N'Bamako'),
(N'MM', N'MMR', N'Myanmar', N'MMK', N'AS', 53414374, 678500, N'Nay Pyi Taw'),
(N'MN', N'MNG', N'Mongolia', N'MNT', N'AS', 3086918, 1565000, N'Ulan Bator'),
(N'MO', N'MAC', N'Macao', N'MOP', N'AS', 449198, 254, N'Macao'),
(N'MP', N'MNP', N'Northern Mariana Islands', N'USD', N'OC', 53883, 477, N'Saipan'),
(N'MQ', N'MTQ', N'Martinique', N'EUR', N'NA', 432900, 1100, N'Fort-de-France'),
(N'MR', N'MRT', N'Mauritania', N'MRO', N'AF', 3205060, 1030700, N'Nouakchott'),
(N'MS', N'MSR', N'Montserrat', N'XCD', N'NA', 9341, 102, N'Plymouth'),
(N'MT', N'MLT', N'Malta', N'EUR', N'EU', 403000, 316, N'Valletta'),
(N'MU', N'MUS', N'Mauritius', N'MUR', N'AF', 1294104, 2040, N'Port Louis'),
(N'MV', N'MDV', N'Maldives', N'MVR', N'AS', 395650, 300, N'Mal�'),
(N'MW', N'MWI', N'Malawi', N'MWK', N'AF', 15447500, 118480, N'Lilongwe'),
(N'MX', N'MEX', N'Mexico', N'MXN', N'NA', 112468855, 1972550, N'Mexico City'),
(N'MY', N'MYS', N'Malaysia', N'MYR', N'AS', 28274729, 329750, N'Kuala Lumpur'),
(N'MZ', N'MOZ', N'Mozambique', N'MZN', N'AF', 22061451, 801590, N'Maputo'),
(N'NA', N'NAM', N'Namibia', N'NAD', N'AF', 2128471, 825418, N'Windhoek'),
(N'NC', N'NCL', N'New Caledonia', N'XPF', N'OC', 216494, 19060, N'Noumea'),
(N'NE', N'NER', N'Niger', N'XOF', N'AF', 15878271, 1267000, N'Niamey'),
(N'NF', N'NFK', N'Norfolk Island', N'AUD', N'OC', 1828, 34.6, N'Kingston'),
(N'NG', N'NGA', N'Nigeria', N'NGN', N'AF', 154000000, 923768, N'Abuja'),
(N'NI', N'NIC', N'Nicaragua', N'NIO', N'NA', 5995928, 129494, N'Managua'),
(N'NL', N'NLD', N'Netherlands', N'EUR', N'EU', 16645000, 41526, N'Amsterdam'),
(N'NO', N'NOR', N'Norway', N'NOK', N'EU', 5009150, 324220, N'Oslo'),
(N'NP', N'NPL', N'Nepal', N'NPR', N'AS', 28951852, 140800, N'Kathmandu'),
(N'NR', N'NRU', N'Nauru', N'AUD', N'OC', 10065, 21, N''),
(N'NU', N'NIU', N'Niue', N'NZD', N'OC', 2166, 260, N'Alofi'),
(N'NZ', N'NZL', N'New Zealand', N'NZD', N'OC', 4252277, 268680, N'Wellington'),
(N'OM', N'OMN', N'Oman', N'OMR', N'AS', 2967717, 212460, N'Muscat'),
(N'PA', N'PAN', N'Panama', N'PAB', N'NA', 3410676, 78200, N'Panama City'),
(N'PE', N'PER', N'Peru', N'PEN', N'SA', 29907003, 1285220, N'Lima'),
(N'PF', N'PYF', N'French Polynesia', N'XPF', N'OC', 270485, 4167, N'Papeete'),
(N'PG', N'PNG', N'Papua New Guinea', N'PGK', N'OC', 6064515, 462840, N'Port Moresby'),
(N'PH', N'PHL', N'Philippines', N'PHP', N'AS', 99900177, 300000, N'Manila'),
(N'PK', N'PAK', N'Pakistan', N'PKR', N'AS', 184404791, 803940, N'Islamabad'),
(N'PL', N'POL', N'Poland', N'PLN', N'EU', 38500000, 312685, N'Warsaw'),
(N'PM', N'SPM', N'Saint Pierre and Miquelon', N'EUR', N'NA', 7012, 242, N'Saint-Pierre'),
(N'PN', N'PCN', N'Pitcairn Islands', N'NZD', N'OC', 46, 47, N'Adamstown'),
(N'PR', N'PRI', N'Puerto Rico', N'USD', N'NA', 3916632, 9104, N'San Juan'),
(N'PS', N'PSE', N'Palestine', N'ILS', N'AS', 3800000, 5970, N''),
(N'PT', N'PRT', N'Portugal', N'EUR', N'EU', 10676000, 92391, N'Lisbon'),
(N'PW', N'PLW', N'Palau', N'USD', N'OC', 19907, 458, N'Melekeok - Palau State Capital'),
(N'PY', N'PRY', N'Paraguay', N'PYG', N'SA', 6375830, 406750, N'Asunci�n'),
(N'QA', N'QAT', N'Qatar', N'QAR', N'AS', 840926, 11437, N'Doha'),
(N'RE', N'REU', N'R�union', N'EUR', N'AF', 776948, 2517, N'Saint-Denis'),
(N'RO', N'ROU', N'Romania', N'RON', N'EU', 21959278, 237500, N'Bucharest'),
(N'RS', N'SRB', N'Serbia', N'RSD', N'EU', 7344847, 88361, N'Belgrade'),
(N'RU', N'RUS', N'Russia', N'RUB', N'EU', 140702000, 17100000, N'Moscow'),
(N'RW', N'RWA', N'Rwanda', N'RWF', N'AF', 11055976, 26338, N'Kigali'),
(N'SA', N'SAU', N'Saudi Arabia', N'SAR', N'AS', 25731776, 1960582, N'Riyadh'),
(N'SB', N'SLB', N'Solomon Islands', N'SBD', N'OC', 559198, 28450, N'Honiara'),
(N'SC', N'SYC', N'Seychelles', N'SCR', N'AF', 88340, 455, N'Victoria'),
(N'SD', N'SDN', N'Sudan', N'SDG', N'AF', 35000000, 1861484, N'Khartoum'),
(N'SE', N'SWE', N'Sweden', N'SEK', N'EU', 9555893, 449964, N'Stockholm'),
(N'SG', N'SGP', N'Singapore', N'SGD', N'AS', 4701069, 692.7, N'Singapore'),
(N'SH', N'SHN', N'Saint Helena', N'SHP', N'AF', 7460, 410, N'Jamestown'),
(N'SI', N'SVN', N'Slovenia', N'EUR', N'EU', 2007000, 20273, N'Ljubljana'),
(N'SJ', N'SJM', N'Svalbard and Jan Mayen', N'NOK', N'EU', 2550, 62049, N'Longyearbyen'),
(N'SK', N'SVK', N'Slovakia', N'EUR', N'EU', 5455000, 48845, N'Bratislava'),
(N'SL', N'SLE', N'Sierra Leone', N'SLL', N'AF', 5245695, 71740, N'Freetown'),
(N'SM', N'SMR', N'San Marino', N'EUR', N'EU', 31477, 61.2, N'San Marino'),
(N'SN', N'SEN', N'Senegal', N'XOF', N'AF', 12323252, 196190, N'Dakar'),
(N'SO', N'SOM', N'Somalia', N'SOS', N'AF', 10112453, 637657, N'Mogadishu'),
(N'SR', N'SUR', N'Suriname', N'SRD', N'SA', 492829, 163270, N'Paramaribo'),
(N'SS', N'SSD', N'South Sudan', N'SSP', N'AF', 8260490, 644329, N'Juba'),
(N'ST', N'STP', N'S�o Tom� and Pr�ncipe', N'STD', N'AF', 175808, 1001, N'S�o Tom�'),
(N'SV', N'SLV', N'El Salvador', N'USD', N'NA', 6052064, 21040, N'San Salvador'),
(N'SX', N'SXM', N'Sint Maarten', N'ANG', N'NA', 37429, 21, N'Philipsburg'),
(N'SY', N'SYR', N'Syria', N'SYP', N'AS', 22198110, 185180, N'Damascus'),
(N'SZ', N'SWZ', N'Swaziland', N'SZL', N'AF', 1354051, 17363, N'Mbabane'),
(N'TC', N'TCA', N'Turks and Caicos Islands', N'USD', N'NA', 20556, 430, N'Cockburn Town'),
(N'TD', N'TCD', N'Chad', N'XAF', N'AF', 10543464, 1284000, N'N''Djamena'),
(N'TF', N'ATF', N'French Southern Territories', N'EUR', N'AN', 140, 7829, N'Port-aux-Fran�ais'),
(N'TG', N'TGO', N'Togo', N'XOF', N'AF', 6587239, 56785, N'Lom�'),
(N'TH', N'THA', N'Thailand', N'THB', N'AS', 67089500, 514000, N'Bangkok'),
(N'TJ', N'TJK', N'Tajikistan', N'TJS', N'AS', 7487489, 143100, N'Dushanbe'),
(N'TK', N'TKL', N'Tokelau', N'NZD', N'OC', 1466, 10, N''),
(N'TL', N'TLS', N'East Timor', N'USD', N'OC', 1154625, 15007, N'Dili'),
(N'TM', N'TKM', N'Turkmenistan', N'TMT', N'AS', 4940916, 488100, N'Ashgabat'),
(N'TN', N'TUN', N'Tunisia', N'TND', N'AF', 10589025, 163610, N'Tunis'),
(N'TO', N'TON', N'Tonga', N'TOP', N'OC', 122580, 748, N'Nuku''alofa'),
(N'TR', N'TUR', N'Turkey', N'TRY', N'AS', 77804122, 780580, N'Ankara'),
(N'TT', N'TTO', N'Trinidad and Tobago', N'TTD', N'NA', 1228691, 5128, N'Port of Spain'),
(N'TV', N'TUV', N'Tuvalu', N'AUD', N'OC', 10472, 26, N'Funafuti'),
(N'TW', N'TWN', N'Taiwan', N'TWD', N'AS', 22894384, 35980, N'Taipei'),
(N'TZ', N'TZA', N'Tanzania', N'TZS', N'AF', 41892895, 945087, N'Dodoma'),
(N'UA', N'UKR', N'Ukraine', N'UAH', N'EU', 45415596, 603700, N'Kyiv'),
(N'UG', N'UGA', N'Uganda', N'UGX', N'AF', 33398682, 236040, N'Kampala'),
(N'UM', N'UMI', N'U.S. Minor Outlying Islands', N'USD', N'OC', 0, 0, N''),
(N'US', N'USA', N'United States', N'USD', N'NA', 310232863, 9629091, N'Washington'),
(N'UY', N'URY', N'Uruguay', N'UYU', N'SA', 3477000, 176220, N'Montevideo'),
(N'UZ', N'UZB', N'Uzbekistan', N'UZS', N'AS', 27865738, 447400, N'Tashkent'),
(N'VA', N'VAT', N'Vatican City', N'EUR', N'EU', 921, 0.44, N'Vatican'),
(N'VC', N'VCT', N'Saint Vincent and the Grenadines', N'XCD', N'NA', 104217, 389, N'Kingstown'),
(N'VE', N'VEN', N'Venezuela', N'VEF', N'SA', 27223228, 912050, N'Caracas'),
(N'VG', N'VGB', N'British Virgin Islands', N'USD', N'NA', 21730, 153, N'Road Town'),
(N'VI', N'VIR', N'U.S. Virgin Islands', N'USD', N'NA', 108708, 352, N'Charlotte Amalie'),
(N'VN', N'VNM', N'Vietnam', N'VND', N'AS', 89571130, 329560, N'Hanoi'),
(N'VU', N'VUT', N'Vanuatu', N'VUV', N'OC', 221552, 12200, N'Port Vila'),
(N'WF', N'WLF', N'Wallis and Futuna', N'XPF', N'OC', 16025, 274, N'Mata-Utu'),
(N'WS', N'WSM', N'Samoa', N'WST', N'OC', 192001, 2944, N'Apia'),
(N'XK', N'XKX', N'Kosovo', N'EUR', N'EU', 1800000, 10908, N'Pristina'),
(N'YE', N'YEM', N'Yemen', N'YER', N'AS', 23495361, 527970, N'Sanaa'),
(N'YT', N'MYT', N'Mayotte', N'EUR', N'AF', 159042, 374, N'Mamoutzou'),
(N'ZA', N'ZAF', N'South Africa', N'ZAR', N'AF', 49000000, 1219912, N'Pretoria'),
(N'ZM', N'ZMB', N'Zambia', N'ZMW', N'AF', 13460305, 752614, N'Lusaka'),
(N'ZW', N'ZWE', N'Zimbabwe', N'ZWD', N'AF', 11651858, 390580, N'Harare')

INSERT Currencies (CurrencyCode, Description) VALUES
(N'AED', N'United Arab Emirates Dirham'),
(N'AFN', N'Afghanistan Afghani'),
(N'ALL', N'Albania Lek'),
(N'AMD', N'Armenia Dram'),
(N'ANG', N'Netherlands Antilles Guilder'),
(N'AOA', N'Angola Kwanza'),
(N'ARS', N'Argentina Peso'),
(N'AUD', N'Australia Dollar'),
(N'AWG', N'Aruba Guilder'),
(N'AZN', N'Azerbaijan New Manat'),
(N'BAM', N'Bosnia and Herzegovina Convertible Marka'),
(N'BBD', N'Barbados Dollar'),
(N'BDT', N'Bangladesh Taka'),
(N'BGN', N'Bulgaria Lev'),
(N'BHD', N'Bahrain Dinar'),
(N'BIF', N'Burundi Franc'),
(N'BMD', N'Bermuda Dollar'),
(N'BND', N'Brunei Darussalam Dollar'),
(N'BOB', N'Bolivia Boliviano'),
(N'BRL', N'Brazil Real'),
(N'BSD', N'Bahamas Dollar'),
(N'BTN', N'Bhutan Ngultrum'),
(N'BWP', N'Botswana Pula'),
(N'BYR', N'Belarus Ruble'),
(N'BZD', N'Belize Dollar'),
(N'CAD', N'Canada Dollar'),
(N'CDF', N'Congo/Kinshasa Franc'),
(N'CHF', N'Switzerland Franc'),
(N'CLP', N'Chile Peso'),
(N'CNY', N'China Yuan Renminbi'),
(N'COP', N'Colombia Peso'),
(N'CRC', N'Costa Rica Colon'),
(N'CUC', N'Cuba Convertible Peso'),
(N'CUP', N'Cuba Peso'),
(N'CVE', N'Cape Verde Escudo'),
(N'CZK', N'Czech Republic Koruna'),
(N'DJF', N'Djibouti Franc'),
(N'DKK', N'Denmark Krone'),
(N'DOP', N'Dominican Republic Peso'),
(N'DZD', N'Algeria Dinar'),
(N'EGP', N'Egypt Pound'),
(N'ERN', N'Eritrea Nakfa'),
(N'ETB', N'Ethiopia Birr'),
(N'EUR', N'Euro Member Countries'),
(N'FJD', N'Fiji Dollar'),
(N'FKP', N'Falkland Islands (Malvinas) Pound'),
(N'GBP', N'United Kingdom Pound'),
(N'GEL', N'Georgia Lari'),
(N'GGP', N'Guernsey Pound'),
(N'GHS', N'Ghana Cedi'),
(N'GIP', N'Gibraltar Pound'),
(N'GMD', N'Gambia Dalasi'),
(N'GNF', N'Guinea Franc'),
(N'GTQ', N'Guatemala Quetzal'),
(N'GYD', N'Guyana Dollar'),
(N'HKD', N'Hong Kong Dollar'),
(N'HNL', N'Honduras Lempira'),
(N'HRK', N'Croatia Kuna'),
(N'HTG', N'Haiti Gourde'),
(N'HUF', N'Hungary Forint'),
(N'IDR', N'Indonesia Rupiah'),
(N'ILS', N'Israel Shekel'),
(N'IMP', N'Isle of Man Pound'),
(N'INR', N'India Rupee'),
(N'IQD', N'Iraq Dinar'),
(N'IRR', N'Iran Rial'),
(N'ISK', N'Iceland Krona'),
(N'JEP', N'Jersey Pound'),
(N'JMD', N'Jamaica Dollar'),
(N'JOD', N'Jordan Dinar'),
(N'JPY', N'Japan Yen'),
(N'KES', N'Kenya Shilling'),
(N'KGS', N'Kyrgyzstan Som'),
(N'KHR', N'Cambodia Riel'),
(N'KMF', N'Comoros Franc'),
(N'KPW', N'Korea (North) Won'),
(N'KRW', N'Korea (South) Won'),
(N'KWD', N'Kuwait Dinar'),
(N'KYD', N'Cayman Islands Dollar'),
(N'KZT', N'Kazakhstan Tenge'),
(N'LAK', N'Laos Kip'),
(N'LBP', N'Lebanon Pound'),
(N'LKR', N'Sri Lanka Rupee'),
(N'LRD', N'Liberia Dollar'),
(N'LSL', N'Lesotho Loti'),
(N'LYD', N'Libya Dinar'),
(N'MAD', N'Morocco Dirham'),
(N'MDL', N'Moldova Leu'),
(N'MGA', N'Madagascar Ariary'),
(N'MKD', N'Macedonia Denar'),
(N'MMK', N'Myanmar (Burma) Kyat'),
(N'MNT', N'Mongolia Tughrik'),
(N'MOP', N'Macau Pataca'),
(N'MRO', N'Mauritania Ouguiya'),
(N'MUR', N'Mauritius Rupee'),
(N'MVR', N'Maldives (Maldive Islands) Rufiyaa'),
(N'MWK', N'Malawi Kwacha'),
(N'MXN', N'Mexico Peso'),
(N'MYR', N'Malaysia Ringgit'),
(N'MZN', N'Mozambique Metical'),
(N'NAD', N'Namibia Dollar'),
(N'NGN', N'Nigeria Naira'),
(N'NIO', N'Nicaragua Cordoba'),
(N'NOK', N'Norway Krone'),
(N'NPR', N'Nepal Rupee'),
(N'NZD', N'New Zealand Dollar'),
(N'OMR', N'Oman Rial'),
(N'PAB', N'Panama Balboa'),
(N'PEN', N'Peru Nuevo Sol'),
(N'PGK', N'Papua New Guinea Kina'),
(N'PHP', N'Philippines Peso'),
(N'PKR', N'Pakistan Rupee'),
(N'PLN', N'Poland Zloty'),
(N'PYG', N'Paraguay Guarani'),
(N'QAR', N'Qatar Riyal'),
(N'RON', N'Romania New Leu'),
(N'RSD', N'Serbia Dinar'),
(N'RUB', N'Russia Ruble'),
(N'RWF', N'Rwanda Franc'),
(N'SAR', N'Saudi Arabia Riyal'),
(N'SBD', N'Solomon Islands Dollar'),
(N'SCR', N'Seychelles Rupee'),
(N'SDG', N'Sudan Pound'),
(N'SEK', N'Sweden Krona'),
(N'SGD', N'Singapore Dollar'),
(N'SHP', N'Saint Helena Pound'),
(N'SLL', N'Sierra Leone Leone'),
(N'SOS', N'Somalia Shilling'),
(N'SPL', N'Seborga Luigino'),
(N'SRD', N'Suriname Dollar'),
(N'SSP', N'South Sudanese Pound'),
(N'STD', N'S�o Tom� and Pr�ncipe Dobra'),
(N'SVC', N'El Salvador Colon'),
(N'SYP', N'Syria Pound'),
(N'SZL', N'Swaziland Lilangeni'),
(N'THB', N'Thailand Baht'),
(N'TJS', N'Tajikistan Somoni'),
(N'TMT', N'Turkmenistan Manat'),
(N'TND', N'Tunisia Dinar'),
(N'TOP', N'Tonga Pa''anga'),
(N'TRY', N'Turkey Lira'),
(N'TTD', N'Trinidad and Tobago Dollar'),
(N'TVD', N'Tuvalu Dollar'),
(N'TWD', N'Taiwan New Dollar'),
(N'TZS', N'Tanzania Shilling'),
(N'UAH', N'Ukraine Hryvnia'),
(N'UGX', N'Uganda Shilling'),
(N'USD', N'United States Dollar'),
(N'UYU', N'Uruguay Peso'),
(N'UZS', N'Uzbekistan Som'),
(N'VEF', N'Venezuela Bolivar'),
(N'VND', N'Viet Nam Dong'),
(N'VUV', N'Vanuatu Vatu'),
(N'WST', N'Samoa Tala'),
(N'XAF', N'Communaut� Financi�re Africaine (BEAC) CFA Franc BEAC'),
(N'XCD', N'East Caribbean Dollar'),
(N'XDR', N'International Monetary Fund (IMF) Special Drawing Rights'),
(N'XOF', N'Communaut� Financi�re Africaine (BCEAO) Franc'),
(N'XPF', N'Comptoirs Fran�ais du Pacifique (CFP) Franc'),
(N'YER', N'Yemen Rial'),
(N'ZAR', N'South Africa Rand'),
(N'ZMW', N'Zambia Kwacha'),
(N'ZWD', N'Zimbabwe Dollar')

SET IDENTITY_INSERT Mountains ON
INSERT Mountains (Id, MountainRange) VALUES
(1, N'Alaska Range'),
(2, N'Alborz'),
(3, N'Andes'),
(4, N'Balkan Mountains'),
(5, N'Caucasus'),
(6, N'Cordillera Neovolcanica'),
(7, N'Ellsworth Mountains'),
(8, N'Executive Committee Range'),
(9, N'Himalayas'),
(10, N'Jayawijaya Mountains'),
(11, N'Karakoram'),
(12, N'Kenyan Highlands'),
(13, N'Kilimanjaro'),
(14, N'Kilimanjaro Region'),
(15, N'Maoke Mountains'),
(16, N'Pirin'),
(17, N'Rila'),
(18, N'Saint Elias Mountains'),
(19, N'Sentinel Range'),
(20, N'Southern Highlands'),
(21, N'The�Sudirman Range'),
(22, N'Trans-Mexican Volcanic Belt'),
(23, N'Rhodope Mountains'),
(24, N'Vitosha'),
(25, N'Strandza'),
(26, N'Monte Rosa')
SET IDENTITY_INSERT Mountains OFF

INSERT MountainsCountries (MountainId, CountryCode) VALUES
(1, N'US'),
(2, N'IR'),
(3, N'AR'),
(3, N'CL'),
(4, N'BG'),
(5, N'GE'),
(5, N'RU'),
(6, N'MX'),
(9, N'CN'),
(9, N'IN'),
(9, N'NP'),
(10, N'ID'),
(11, N'CN'),
(11, N'PK'),
(12, N'KE'),
(13, N'TZ'),
(14, N'TZ'),
(15, N'ID'),
(16, N'BG'),
(17, N'BG'),
(18, N'CA'),
(20, N'PG'),
(21, N'ID'),
(22, N'MX'),
(23, N'BG'),
(24, N'BG'),
(25, N'BG'),
(26, N'IT'),
(26, N'CH')

SET IDENTITY_INSERT Peaks ON
INSERT Peaks (Id, PeakName, Elevation, MountainId) VALUES
(62, N'Aconcagua', 6962, 3),
(63, N'Botev', 2376, 4),
(64, N'Carstensz Pyramid', 4884, 21),
(65, N'Damavand', 5610, 2),
(66, N'Dykh-Tau', 5205, 5),
(67, N'Elbrus', 5642, 5),
(68, N'Everest', 8848, 9),
(69, N'Julianatop', 4760, 10),
(70, N'K2', 8611, 11),
(71, N'Kangchenjunga', 8586, 9),
(72, N'Kilimanjaro', 5895, 13),
(73, N'Malyovitsa', 2729, 17),
(74, N'Mawenzi', 5149, 14),
(75, N'Monte Pissis', 6793, 3),
(76, N'Mount Giluwe', 4368, 20),
(77, N'Mount Kenya', 5199, 12),
(78, N'Mount Logan', 5959, 18),
(79, N'Mount McKinley', 6194, 1),
(80, N'Mount Shinn', 4661, 19),
(81, N'Mount Sidley', 4285, 8),
(82, N'Mount Tyree', 4852, 19),
(83, N'Musala', 2925, 17),
(84, N'Ojos del Salado', 6893, 3),
(85, N'Pico de Orizaba', 5636, 22),
(86, N'Puncak Trikora', 4750, 15),
(87, N'Shkhara', 5193, 5),
(88, N'Vihren', 2914, 16),
(89, N'Vinson Massif', 4897, 7),
(90, N'Golyam Perelik', 2191, 23),
(91, N'Shirokolashki Snezhnik', 2188, 23),
(92, N'Golyam Persenk', 2091, 23),
(93, N'Batashki Snezhnik', 2082, 23),
(94, N'Cerro Bonete', 6759, 3),
(95, N'Gal�n', 5912, 3),
(96, N'Mercedario', 6720, 3),
(97, N'Pissis', 6795, 3),
(98, N'Lhotse', 8516, 9),
(99, N'Makalu', 8462, 9),
(100, N'Cho Oyu', 8201, 9),
(101, N'Kutelo', 2908, 16),
(102, N'Banski Suhodol', 2884, 16),
(103, N'Golyam Polezhan', 2851, 16),
(104, N'Kamenitsa', 2822, 16),
(105, N'Malak Polezhan', 2822, 16),
(106, N'Malka Musala', 2902, 17),
(107, N'Orlovets', 2685, 17),
(108, N'Vezhen', 2198, 4),
(109, N'Kom', 2016, 4)
SET IDENTITY_INSERT Peaks OFF

SET IDENTITY_INSERT Rivers ON 
INSERT Rivers (Id, RiverName, Length, DrainageArea, AverageDischarge, Outflow) VALUES
(1, N'Nile', 6650, 3254555, 5100, N'Mediterranean'),
(2, N'Amazon', 6400, 7050000, 219000, N'Atlantic Ocean'),
(3, N'Yangtze', 6300, 1800000, 31900, N'East China Sea'),
(4, N'Mississippi', 6275, 2980000, 16200, N'Gulf of Mexico'),
(5, N'Yenisei', 5539, 2580000, 19600, N'Kara Sea'),
(6, N'Yellow River', 5464, 745000, 2110, N'Bohai Sea'),
(7, N'Ob', 5410, 2990000, 12800, N'Gulf of Ob'),
(8, N'Paran�', 4880, 2582672, 18000, N'R�o de la Plata'),
(9, N'Congo', 4700, 3680000, 41800, N'Atlantic Ocean'),
(10, N'Amur', 4444, 1855000, 11400, N'Sea of Okhotsk'),
(11, N'Lena', 4400, 2490000, 17100, N'Laptev Sea'),
(12, N'Mekong', 4350, 810000, 16000, N'South China Sea'),
(13, N'Mackenzie', 4241, 1790000, 10300, N'Beaufort Sea'),
(14, N'Niger', 4200, 2090000, 9570, N'Gulf of Guinea'),
(15, N'Murray', 3672, 1061000, 7670, N'Southern Ocean'),
(16, N'Tocantins', 3650, 950000, 13598, N'Atlantic Ocean, Amazon'),
(17, N'Volga', 3645, 1380000, 8080, N'Caspian Sea'),
(18, N'Shatt al-Arab', 3596, 884000, 8560, N'Persian Gulf'),
(19, N'Madeira', 3380, 1485200, 31200, N'Amazon'),
(20, N'Pur�s', 3211, 63166, 8400, N'Amazon'),
(21, N'Yukon', 3185, 850000, 6210, N'Bering Sea'),
(22, N'Indus', 3180, 960000, 7160, N'Arabian Sea'),
(23, N'S�o Francisco', 3180, 610000, 3300, N'Atlantic Ocean'),
(24, N'Syr Darya', 3078, 219000, 7030, N'Aral Sea'),
(25, N'Salween', 3060, 324000, 3153, N'Andaman Sea'),
(26, N'Saint Lawrence', 3058, 1030000, 10100, N'Gulf of Saint Lawrence'),
(27, N'Rio Grande', 3057, 570000, 820, N'Gulf of Mexico'),
(28, N'Lower Tunguska', 2989, 473000, 3600, N'Yenisei'),
(29, N'Brahmaputra', 2948, 1730000, 19200, N'Ganges'),
(30, N'Danube', 2888, 817000, 7130, N'Black Sea')
SET IDENTITY_INSERT Rivers OFF

INSERT CountriesRivers (RiverId, CountryCode) VALUES
(9, N'AO'),
(8, N'AR'),
(30, N'AT'),
(15, N'AU'),
(29, N'BD'),
(14, N'BF'),
(30, N'BG'),
(1, N'BI'),
(9, N'BI'),
(14, N'BJ'),
(2, N'BO'),
(8, N'BO'),
(19, N'BO'),
(2, N'BR'),
(8, N'BR'),
(16, N'BR'),
(19, N'BR'),
(20, N'BR'),
(23, N'BR'),
(29, N'BT'),
(4, N'CA'),
(13, N'CA'),
(21, N'CA'),
(26, N'CA'),
(1, N'CD'),
(9, N'CD'),
(9, N'CF'),
(9, N'CG'),
(9, N'CM'),
(14, N'CM'),
(3, N'CN'),
(6, N'CN'),
(7, N'CN'),
(10, N'CN'),
(12, N'CN'),
(22, N'CN'),
(25, N'CN'),
(29, N'CN'),
(2, N'CO'),
(30, N'DE'),
(14, N'DZ'),
(2, N'EC'),
(1, N'EG'),
(1, N'ER'),
(1, N'ET'),
(14, N'GN'),
(2, N'GY'),
(30, N'HR'),
(30, N'HU'),
(22, N'IN'),
(29, N'IN'),
(18, N'IQ'),
(1, N'KE'),
(24, N'KG'),
(12, N'KH'),
(7, N'KZ'),
(24, N'KZ'),
(12, N'LA'),
(14, N'ML'),
(12, N'MM'),
(25, N'MM'),
(5, N'MN'),
(7, N'MN'),
(10, N'MN'),
(27, N'MX'),
(14, N'NE'),
(14, N'NG'),
(29, N'NP'),
(2, N'PE'),
(19, N'PE'),
(20, N'PE'),
(22, N'PK'),
(8, N'PY'),
(30, N'RO'),
(30, N'RS'),
(5, N'RU'),
(7, N'RU'),
(10, N'RU'),
(11, N'RU'),
(17, N'RU'),
(28, N'RU'),
(1, N'RW'),
(9, N'RW'),
(1, N'SD'),
(30, N'SK'),
(1, N'SS'),
(18, N'SY'),
(14, N'TD'),
(12, N'TH'),
(25, N'TH'),
(24, N'TJ'),
(18, N'TR'),
(1, N'TZ'),
(9, N'TZ'),
(1, N'UG'),
(4, N'US'),
(21, N'US'),
(26, N'US'),
(27, N'US'),
(8, N'UY'),
(24, N'UZ'),
(2, N'VE'),
(12, N'VN'),
(9, N'ZM')

GO

-- Add integrity constraints
ALTER TABLE Countries WITH CHECK ADD CONSTRAINT FK_Countries_Continents
FOREIGN KEY(ContinentCode) REFERENCES Continents (ContinentCode)
GO

ALTER TABLE Countries WITH CHECK ADD CONSTRAINT FK_Countries_Currencies
FOREIGN KEY(CurrencyCode) REFERENCES Currencies (CurrencyCode)
GO

ALTER TABLE CountriesRivers WITH CHECK ADD CONSTRAINT FK_CountriesRivers_Countries
FOREIGN KEY(CountryCode) REFERENCES Countries (CountryCode)
GO

ALTER TABLE CountriesRivers WITH CHECK ADD CONSTRAINT FK_CountriesRivers_Rivers
FOREIGN KEY(RiverId) REFERENCES Rivers (Id)
GO

ALTER TABLE MountainsCountries WITH CHECK ADD CONSTRAINT FK_MountainsCountries_Countries
FOREIGN KEY(CountryCode) REFERENCES Countries (CountryCode)
GO

ALTER TABLE MountainsCountries WITH CHECK ADD CONSTRAINT FK_MountainsCountries_Mountains
FOREIGN KEY(MountainId) REFERENCES Mountains (Id)
GO

ALTER TABLE Peaks WITH CHECK ADD CONSTRAINT FK_Peaks_Mountains
FOREIGN KEY(MountainId) REFERENCES Mountains (Id)
GO
