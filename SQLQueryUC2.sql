--Abcc
--SQL stand for structured Query Language 
--it is used to communicate with the database
--it is used to CURD operations (create,update,retrieve,delete)
--SQL commands are instructions used to perform a specific tasks.they are
--DDL-Data Definition Language
     --Create
	 --ALTER
	 --DROP
	 --TRUNCATE
--DML-Data Manipulation Language
      --INSERT
	  --UPDATE
	  --DELETE
--DCL-Data Control Language
      --Revoke
	  --Grant
--DQL-Data Query Language
     --SELECT
--TCL-Transaction Control Language
     --Commit
	 --Rollback
	 --Savepoint

	 --UC1:- Create Database
		CREATE DATABASE AddressBookService
		USE AddressBookService;

	 --UC2:-database table with first and last name,address,city,state,zip,phonenumber and email as its attributes.
		CREATE TABLE AddressBookDB(PersonID INT PRIMARY KEY IDENTITY(1,1),
		FirstName VARCHAR(30) NOT NULL,
		LastName VARCHAR(30),
		Address VARCHAR(100) NOT NULL,
		City VARCHAR(20) NOT NULL,
		State VARCHAR(20) NOT NULL,
		Zip INT NOT NULL,
		PhoneNumber BIGINT NOT NULL,
		EmailID VARCHAR(50) NOT NULL)
