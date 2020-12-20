/*
	End Of Section Challenege - Programablity

	in this challenege I would like you:
	
	1. to create a stored procedure called InsertNewProduct that inserts a new product, you will need to for the 
	product type id column use an id from the products type table. **for extra credit create one that returns the product id as an OUTPUT parameter

	2. create a view that selects all product names and the product types, Name the view as GetProductsAndProductTypes
*/

--1 Create Stored procedure

DROP PROCEDURE IF EXISTS InsertNewProduct
GO
CREATE PROCEDURE InsertNewProduct
(
@Productname VARCHAR(90),
@ProductDescription VARCHAR(60),
@ProductPrice SMALLMONEY,
@ProductTypeID INT,
@NewProductID INT OUTPUT
)
AS
BEGIN
	INSERT INTO Products(ProductName, ProductDescription, ProductPrice, ProductTypeID)
	VALUES(@Productname, @ProductDescription, @ProductPrice, @ProductTypeID)

	SET @NewProductID = SCOPE_IDENTITY()

	SELECT ProductName, ProductDescription, ProductPrice, ProductTypeID FROM Products
	WHERE ProductID = SCOPE_IDENTITY()

END;

DECLARE @ProductID AS INT
EXECUTE InsertNewProduct @ProductName = 'Blue Shirt', @ProductDescription = 'A light blue cotton shirt', @ProductPrice = 50.00,
		@ProductTypeID = 4,  @NewProductID = @ProductID OUTPUT
SELECT @ProductID

SELECT * FROM Products
--2 Create View
GO
CREATE OR ALTER VIEW GetProductsAndProductTypes
AS
	SELECT ProductName,  PT.ProductType FROM  Products AS P
	INNER JOIN ProductTypes AS PT
	ON P.ProductTypeID = PT.ProductTypeID

--Call the view
SELECT * FROM GetProductsAndProductTypes