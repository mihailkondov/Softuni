/* 
	11. Set Default Value of a Field

Using SQL queries modify table Users. 
Make the default value of LastLoginTime field to be the current time.
*/

USE Users;	

ALTER TABLE Users
ADD CONSTRAINT default_last_login_time 
DEFAULT CURRENT_TIMESTAMP FOR LastLoginTime;