/*
	Populate the ProductTypes table
*/

--First lets view the products Type column from the Products table
SELECT ProductType FROM PRODUCTS


--INsert the produdct type into the producttypes table
INSERT INTO ProductTypes
SELECT DISTINCT ProductType FROM PRODUCTS

--lets check the results
SELECT * FROM ProductTypes

--lets get the product type id and associated product iD
GO
BEGIN TRANSACTION
GO
WITH CTE1 AS
(
SELECT ProductID, P.ProductType, pt.ProductTypeID
FROM Products AS P
CROSS APPLY (SELECT ProductType, ProductTypeID FROM ProductTypes
				WHERE P.ProductType = ProductType) pt
)
--NOW update the product type id column in the products table with the matched ids from  cte1
UPDATE Products 
SET ProductTypeID = A.ProductTypeID
FROM Products AS P
	CROSS APPLY
	(SELECT TOP 1 ProductTypeID FROM CTE1 WHERE CTE1.ProductID = P.ProductID) AS A

--Rollback transaction - to simulate we didn't really want to make the change
ROLLBACK TRANSACTION
--confirm the results
SELECT * FROM PRODUCTS
SELECT * FROM ProductTypes

--commit the trasaction to write the changes to the table.
COMMIT TRANSACTION

--now lets remove the productype column from the products table
ALTER TABLE Products
	DROP COLUMN ProductType

--confirm the results
SELECT * FROM PRODUCTS



	



