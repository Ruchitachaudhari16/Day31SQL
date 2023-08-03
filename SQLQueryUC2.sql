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

		--UC3 Insert new contacts to addressBook
		SELECT * FROM AddressBookDB;

		INSERT INTO AddressBookDB(FirstName,LastName,Address,City,State,Zip,PhoneNumber,EmailID)VALUES 
		('Ruchita','Chaudhari','RadhaNagar','Amravti','Maharastra',444105,9158834080,'cruchi@gmail.com'),
		('Rucha','Ingale','Alkachowk','Pune','Maharastra',444105,9158834080,'rucha@gmail.com'),
		('Nikita', 'Chaudhari','Bypass','Kharadi','Maharastra',444105,9150034080,'cnikii@gmail.com'),
		('Swati','Lodha','washim','karanja','Maharastra',442105,9158809999,'swati987@gmail.com'),
		('shama','ingale','rahatni','Amravti','Maharastra',400105,9356763410,'shamaingale@gmail.com'),
		('Rasikaa','Deshmukh','Pune','Kharadi','Maharastra',411105,9888888880,'rasika@gmail.com'),
		('tanavi','banait','Mumbai','Airoli','Maharastra',444100,9345678900,'tanavibanait@gmail.com');