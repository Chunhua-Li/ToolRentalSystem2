-- 
-- ORACLE application database and associated users creation script for CST2355/assignment2
--
-- Created by:  Yanan Wu & Tianying Le & Chunhua Li
--
-- should be run while connected as 'sys as sysdba'
--

-- Create STORAGE
CREATE TABLESPACE assignment2
  DATAFILE 'assignment2.dat' SIZE 40M 
  ONLINE; 
  
-- Create Users
CREATE USER group7assignment2 IDENTIFIED BY password ACCOUNT UNLOCK
	DEFAULT TABLESPACE assignment2
	QUOTA 20M ON assignment2;
	
CREATE USER WuUser IDENTIFIED BY WuPassword ACCOUNT UNLOCK
	DEFAULT TABLESPACE assignment2
	QUOTA 5M ON assignment2;

CREATE USER LeUser IDENTIFIED BY LePassword ACCOUNT UNLOCK
	DEFAULT TABLESPACE assignment2
	QUOTA 5M ON assignment2;

CREATE USER LiUser IDENTIFIED BY LiPassword ACCOUNT UNLOCK
	DEFAULT TABLESPACE cst2355
	QUOTA 5M ON assignment2;
	
-- Create ROLES
CREATE ROLE applicationAdmin;
CREATE ROLE applicationUser;

-- Grant PRIVILEGES
GRANT CONNECT, RESOURCE, CREATE VIEW, CREATE TRIGGER, CREATE PROCEDURE TO applicationAdmin;
GRANT CONNECT, RESOURCE TO applicationUser;

GRANT applicationAdmin TO group7assignment2;
GRANT applicationUser TO WuUser;
GRANT applicationUser TO LeUser;
GRANT applicationUser TO LiUser;


CONNECT group7assignment2/password;



-- End of File
