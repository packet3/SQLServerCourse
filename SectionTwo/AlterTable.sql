/*
	Using the Alter Table statement
*/

--Alter Customers First Name column increase VARCHAR(60) to VARCHAR(90)
ALTER TABLE Customers
	ALTER COLUMN CustomerFirstName VARCHAR(90) NOT NULL

--ADD new column to Orders Table for DeliveryDate 
ALTER TABLE Orders
	ADD DeliveryDate DATE


--Add New column to Orders Table
ALTER TABLE Orders
	ADD IsExpedited BIT 

--Remove column IsExpedited 
ALTER TABLE Orders
	DROP COLUMN IsExpedited

--ADD New Column to Order Line items, that is a Check Constraint 
ALTER TABLE OrderLineItems
	 ADD OrderQty INT
	 CONSTRAINT CHK_OrderLineItems_OrderQty CHECK(OrderQty > 5) 


--INSERT New Order Line Item - THIS WILL Fail the CHECK constraint
INSERT INTO OrderLineItems(OrderID, ProductID, OrderQty)
	 VALUES(1,2,5)

--INSERT New Order Line Item - THIS WILL Succeed
INSERT INTO OrderLineItems(OrderID, ProductID, OrderQty)
	 VALUES(1,2,6)

--Lets try and remove the column - tHIS WILL ERROR
ALTER TABLE OrderLineItems
	DROP COLUMN OrderQty

--NEED TO DROP THE CONSTRAINT FIRST
ALTER TABLE OrderLineItems
DROP CONSTRAINT CHK_OrderLineItems_OrderQty



--Add New Column to Customers table witha DEFAULT constraint
ALTER TABLE Customers
	ADD IsActive BIT
	CONSTRAINT DFT_Customers_IsActive_Yes DEFAULT(1)
	WITH VALUES



