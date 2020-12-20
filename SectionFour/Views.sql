/*
	Views
*/
--Create First view to select customer and there orders
CREATE OR ALTER VIEW GetCustomersAndOrders
AS
	SELECT C.CustomerID, OrderID, OrderTotal FROM Customers AS C
	INNER JOIN Orders AS O
	ON O.CustomerID = C.CustomerID

--Call the view
SELECT * FROM GetCustomersAndOrders

