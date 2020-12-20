/*
	Functions
*/
--Create a simple Function to return if order has been deleivered (Sclar Function)

CREATE OR ALTER FUNCTION HasOrderBeenDelivered
(
	@DeliverDate DATE
)
RETURNS VARCHAR(20)
AS
BEGIN
	DECLARE @DeliveryStatus AS VARCHAR(20)
	IF @DeliverDate is null
	BEGIN
		SET @DeliveryStatus = 'NOT Delivered'
	END
	ELSE
	BEGIN
		SET @DeliveryStatus = 'Delivered'
	END
	RETURN(@DeliveryStatus)
END;

SELECT OrderID, CustomerID, DeliveryDate, dbo.HasOrderBeenDelivered(DeliveryDate) AS Ordertatus FROM ORDERS
GO
--Create a Table valued function - (Table Function)
CREATE OR ALTER FUNCTION FetchAllOrdersOverCertainValue
(
	@OrderTotal SMALLMONEY	
)
RETURNS TABLE
AS
RETURN
(
	SELECT * FROM Orders
	where OrderTotal > @OrderTotal
)

SELECT * FROM FetchAllOrdersOverCertainValue(34)