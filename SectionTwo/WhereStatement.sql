/*

Using the WHERE statement in conjunction with the UPDATE and DELETE statements.

*/



--Using the WHERE statement to return customer with the ID of 4

SELECT CustomerFirstName, CustomerLastName FROM Customers
WHERE CustomerID = 4

--Lets UPDATE Customer ID 3 last name from WoodCock to Edwards
--First lets see the row before the change
SELECT CustomerId, CustomerFirstName, CustomerLastName, IsActive FROM Customers
WHERE CustomerID = 3

--update lastname
UPDATE Customers
SET CustomerLastName = 'Edwards'
WHERE CustomerID = 3

--lets confirm the result
SELECT CustomerId, CustomerFirstName, CustomerLastName, IsActive FROM Customers
WHERE CustomerID = 3

--Lets remove an outdated product that we no longer stock, We shall remove ProductID 2 from the Products table

DELETE FROM Products
WHERE ProductID = 2

--Lets confirm the results
SELECT ProductID, ProductType, ProductName, ProductDescription, ProductPrice FROM Products
WHERE ProductID = 2



--Lets see what happpens when we UPDATE or DELETE without a WHERE statement
BEGIN TRANSACTION

UPDATE Customers
SET CustomerLastName = 'Jackson'

--Check the results
SELECT CustomerId, CustomerFirstName, CustomerLastName, IsActive FROM Customers

--Lets rollback the transaction
ROLLBACK TRANSACTION


--Lets Do the same for the DELETE
BEGIN TRANSACTION

DELETE FROM Customers

--Check the results
SELECT CustomerId, CustomerFirstName, CustomerLastName, IsActive FROM Customers

--Lets rollback the transaction
ROLLBACK TRANSACTION





