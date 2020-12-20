/*
	Transactions
*/

--autocommit transaction
SELECT * FROM ORDERS

--explcit transaction
BEGIN TRANSACTION

UPDATE Orders
SET OrderTotal = 10
WHERE OrderID = 3

COMMIT TRANSACTION





