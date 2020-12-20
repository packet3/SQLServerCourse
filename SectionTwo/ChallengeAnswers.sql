/*
	Section Two -  End Challenge

	For this challenge I would like you to try and complete the following tasks.

	1. Create a new Table Called ProductTypes with two columns, 1 column needs to be called ProductTypeID with an int data type and identity clause,
		also this column need to be created as a primary key. the second column needs to be called ProductType and this needs to be VARCHAR(60) NOT NULL

	2. Create a new Column in the products table called ProductTypeID set as an int data type.

	3. Create a foreign key constraint from the new column called ProductTypeID in the products table to the ProductTypeID in the ProductTypes table

	4. Create a NONCLUSTERED index on the column ProductType in the new productTypes Table
*/

--Part 1
ALTER TABLE Products
	ADD ProductTypeID INT

--Part 2
CREATE TABLE ProductTypes
(
	ProductTypeID INT IDENTITY,
	ProductType VARCHAR(60) NOT NULL
	CONSTRAINT PK_ProductTypes_ProductTypeID PRIMARY KEY(ProductTypeID)
)

--Part 3
ALTER TABLE Products
	ADD CONSTRAINT FK_Products_ProductTypeID_ProductTypes_ProductTypeID FOREIGN KEY (ProductTypeID) REFERENCES ProductTypes(ProductTypeID)


--part 4
CREATE NONCLUSTERED INDEX NCIX_ProductTypes_ProductType ON ProductTypes (ProductType)

