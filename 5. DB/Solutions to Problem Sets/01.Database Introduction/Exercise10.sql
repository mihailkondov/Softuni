/*
	10. Add Check Constraint

Using SQL queriesmodify table Users. 
Add check constraint to ensure that the values in the Password field are at least 5 symbols long. 
*/
USE Users;

ALTER TABLE Users
ADD CONSTRAINT check_pw_5symbols CHECK(LEN(Password) >= 5);

-- The following entry should not be accepted due to the new rule:
INSERT INTO Users 
	(Username,		Password)
VALUES 
	('Useeername',	'123')
;
