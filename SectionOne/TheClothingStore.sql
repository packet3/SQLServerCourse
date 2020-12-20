--Create the The Database
CREATE DATABASE TheClothingStore
GO
--Use the Database
USE TheClothingStore

--Create Customers Table
CREATE TABLE Customers
(
	CustomerID INT IDENTITY NOT NULL,
	CustomerFirstName VARCHAR(60) NOT NULL,
	CustomerLastName VARCHAR(60) NOT NULL,
	CONSTRAINT PK_Customers_CustomerID PRIMARY KEY (CustomerID)
)
GO

INSERT INTO Customers(CustomerFirstName,CustomerLastName)
VALUES('Max', 'Nicholls'),
		('Jack', 'Smith'),
		('Jane', 'Woodcock'),
		('Henry', 'Onslow')
GO
--Create Products Table
CREATE TABLE Products
(
	ProductID INT IDENTITY NOT NULL,
	ProductType VARCHAR(60) NOT NULL,
	ProductName VARCHAR(90) NOT NULL,
	ProductDescription VARCHAR(255) NOT NULL,
	ProductPrice SMALLMONEY NOT NULL,
	CONSTRAINT PK_Products_ProductID PRIMARY KEY (ProductID)
)
GO


INSERT INTO Products(ProductType,ProductName,ProductDescription,ProductPrice)
VALUES('Jumper', 'Fruity Jumper','A stylishly oversized jumper in autumnal colours. Our Fruity Jumper is made from the softest merino yarn and knitted in a neat, textured garter stitch. Designed for a really relaxed fit,'
,65.00),
('Trousers', 'Lamledra','Beautifully soft cord trousers. Weve given our Lamledra Trousers a flattering slim fit through the leg with a hint of stretch for an extra comfy fit. With classic jeans styling', 62.95),
('Shirt', 'Sailor Shirt', 'Made from organic cotton jersey, our Sailor Shirt is super soft, breathable and feels great against the skin.', 29.95),
('Jacket', 'Fjord Check Jacket', 'Warm, stylish and great for layering, this check overshirt is an instant classic that''s built to last.', 69.00),
('Jeans', 'Chesham Girlfriend Jeans', 'Made with premium quality denim, our girlfriend jeans are a style you''ll love.', 49.50),
('Jeans', 'Sway Slim Jeans', 'A new and improved fit and fabric, our Sway Slim Jeans now contain 20% recycled cotton', 49.50)

GO
--Create Orders Table
CREATE TABLE Orders
(
	OrderID INT IDENTITY NOT NULL,
	CustomerID INT NOT NULL,
	OrderTotal SMALLMONEY NOT NULL
	CONSTRAINT PK_Orders_OrderID PRIMARY KEY (OrderID)
)
GO
INSERT INTO Orders(CustomerID,OrderTotal) 
VALUES(1, 65.00),
	  (1,  120.00),
	  (3, 200.00),
	  (2, 23.00)
GO
--Create OrderLineItems Table
CREATE TABLE OrderLineItems
(
	OrderLineItemsID INT IDENTITY NOT NULL,
	OrderID INT NOT NULL,
	ProductID INT NOT NULL,
	CONSTRAINT PK_OrderLineItemsID_ID PRIMARY KEY (OrderLineItemsID)
)

GO
INSERT INTO OrderLineItems(OrderID,ProductID)
VALUES(1, 1),
		(1, 2),
		(3, 1),
		(2, 3)

