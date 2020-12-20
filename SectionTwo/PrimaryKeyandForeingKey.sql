/*
	Primary and Foreing Keys
*/

--Create a new Primary Key column using Identity on the Customer Salutations table
ALTER TABLE CustomerSalutations
	ADD SalutationID INT IDENTITY NOT NULL,
	CONSTRAINT PK_CustomerSalutations_SalutationID PRIMARY KEY (SalutationID)


--Create a Foreign Key on the OrderID column in the OrderLineitems Table referencing the OrderID in the orders table
ALTER TABLE OrderLineItems
	ADD CONSTRAINT FK_OrderLineItems_OrderID_Orders_OrderID FOREIGN KEY (OrderID) REFERENCES Orders (OrderID)

--Let's see what happens when I try to add an Order Line Item without an Order
INSERT INTO OrderLineItems(OrderID, ProductID, OrderQty)
VALUES(23, 23,150)

ALTER TABLE OrderLineItems
DROP CONSTRAINT  FK_OrderLineItems_OrderID_Orders_OrderID

--now lets create a nonclustered index on the OrderTotal column in the Order table
--but before doing so lets see what happens

select OrderTotal from orders
where OrderTotal = 23.0

--create the index
CREATE NONCLUSTERED INDEX NCIX_Orders_OrderTotal ON Orders (OrderTotal)

--compare result now

select OrderTotal from orders
where OrderTotal = 23.0



