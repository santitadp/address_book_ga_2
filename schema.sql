DROP TABLE IF EXIST addressbook;
DROP TABLE IF EXIST phone_number;
DROP TABLE IF EXIST email;

CREATE TABLE addressbook(
	id INTEGER PRIMARY KEY,
	first_name VARCHAR (255),
	last_name VARCHAR(255),
	phone_number_id INTEGER,
	email_idVARCHAR,
);

CREATE TABLE phone_number(
	id INTEGER PRIMARY KEY
	category VARCHAR(255),
	phone_number INTEGER
);

CREATE TABLE email(
	id INTEGER PRIMARY KEY
	category VARCHAR(255),
	email VARCHAR(255)
);