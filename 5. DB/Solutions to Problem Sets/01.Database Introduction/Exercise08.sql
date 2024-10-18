/*
	8. Create Table Users

Using SQL query create table Users with columns:
	• Id – unique number for every user. There will be no more than (2^63)-1 users (auto incremented).
	• Username – unique identifier of the user. It will be no more than 30 characters (non Unicode) (required).
	• Password – password will be no longer than 26 characters (non Unicode) (required).
	• ProfilePicture – image with size up to 900 KB. 
	• LastLoginTime
	• IsDeleted – shows if the user deleted his/her profile. Possible states are true or false.
Make the Id a primary key.
Populate the table with exactly 5 records.
Submit your CREATE and INSERT statements as Run queries & check DB.
*/
-- USE master;
-- CREATE DATABASE Users;
-- USE Users;
CREATE TABLE Users (
	Id				BIGINT			PRIMARY KEY	IDENTITY(1,1),
	Username		VARCHAR(30)		NOT NULL	UNIQUE,
	Password		VARCHAR(26)		NOT NULL,
	ProfilePicture	VARBINARY(MAX),
	LastLoginTime	DATETIME,
	IsDeleted		BIT,
	CONSTRAINT chk_pic_size CHECK(DATALENGTH(ProfilePicture) <= 900000)
);
INSERT INTO Users 
	(Username,	Password)
VALUES
	('User1',	'Password'),
	('User2',	'Password2'),
	('User4',	'12345'),
	('UserUserUser',	'duhfson3oueir394nik'),
	('UserUserUserUserUserUser123456',	'abcdefghijklmnopqrstuvwxyz')
;