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

		--UC4 Ability to edit existing contact person using their name
		UPDATE AddressBookDB SET City='Delhi' where FirstName='Rucha';

		--UC5 Ability to delete a person using a persons name
		DELETE AddressBookDB WHERE FirstName='Nikita';

		--UC6 Ability to retrieve Person Belonging to a city or state from the AddressBook
		SELECT * From AddressBookDB WHERE City='Amravti';

		--UC7 Ability to understand the size of address book by city and State
		SELECT COUNT(*) From AddressBookDB WHERE City='Amravti';

		--UC8 Ability to retrieve entries sorted 
		SELECT * From AddressBookDB ORDER BY City ASC;
		SELECT * From AddressBookDB Where City='Amravti' ORDER BY FirstName ASC;
		SELECT * From AddressBookDB ORDER BY FirstName;

		--UC9 Ability to identify each Address Book with name and type.
		-- Here the type could Family, Friends,Profession, etc Alter Address Book to add name and type
		ALTER TABLE AddressBookDB ADD AddressBookType VARCHAR(50);
		ALTER TABLE AddressBookDB ADD AddressBookName VARCHAR(50);
		UPDATE AddressBookDB SET AddressBookType='Friends' ,AddressBookName='AB' 
		WHERE PersonID='2'
		UPDATE AddressBookDB SET AddressBookType='Family' ,AddressBookName='Ac' 
		WHERE PersonID='3'
		UPDATE AddressBookDB SET AddressBookType='Friends' ,AddressBookName='KL' 
		WHERE PersonID='4'
		UPDATE AddressBookDB SET AddressBookType='Office' ,AddressBookName='MN' 
		WHERE PersonID='5'
		UPDATE AddressBookDB SET AddressBookType='Emergancy' ,AddressBookName='NB' 
		WHERE PersonID='1'
		UPDATE AddressBookDB SET AddressBookType='Friends' ,AddressBookName='Siu' 
		WHERE PersonID='6';

		
		--UC10 Ability to get number of contact persons i.e. count by type
		--//Ruchita is variable where will store the adressbooktype count
		SELECT AddressBookType,COUNT(AddressBookType) AS Ruchita From AddressBookDB GROUP BY AddressBookType;

