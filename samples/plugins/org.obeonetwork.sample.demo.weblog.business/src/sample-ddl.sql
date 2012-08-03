-- Start of user code DB Name
-- TODO specify the name of database used
USE sample;
-- End of user code

-- Tables for Entity User 

DROP TABLE IF EXISTS USER;
CREATE TABLE USER
(
	ID CHAR(32) NOT NULL,
	EMAIL VARCHAR(255) NOT NULL,
	FIRST_NAME VARCHAR(255) NOT NULL,
	LAST_NAME VARCHAR(255) NOT NULL,
	LOGIN VARCHAR(255) NOT NULL,
	PASSWORD VARCHAR(255) NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity BlogEntry 

DROP TABLE IF EXISTS BLOG_ENTRY;
CREATE TABLE BLOG_ENTRY
(
	ID CHAR(32) NOT NULL,
	TITLE VARCHAR(255) NOT NULL,
	CREATION_DATE DATETIME NOT NULL,
	CONTENT VARCHAR(255) NOT NULL,
	-- |*|<-->1
	FK_USER_AUTHOR_USER_ID CHAR(32) UNIQUE NOT NULL,

	PRIMARY KEY (ID)
);

