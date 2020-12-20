/*
	Stored procedures
*/
--Procedure that inserts a new customer
DROP PROCEDURE IF EXISTS InsertNewCustomer
GO
CREATE PROCEDURE InsertNewCustomer
(
@Firstname VARCHAR(90),
@Lastname VARCHAR(60),
@NewCustomerID INT OUTPUT
)
AS
BEGIN
	INSERT INTO Customers(CustomerFirstName, CustomerLastName)
	VALUES(@Firstname, @Lastname)

	SET @NewCustomerId = SCOPE_IDENTITY()

	SELECT CustomerID, CustomerFirstName, CustomerLastName FROM Customers
	WHERE CustomerID = SCOPE_IDENTITY()

END;

DECLARE @CustomerID AS INT
EXECUTE InsertNewCustomer @FirstName = 'Ben', @LastName = 'Moyal', @NewCustomerID = @CustomerID OUTPUT
SELECT @CustomerID

go
--SELECT ONE CUSTOMER

DROP PROCEDURE IF EXISTS SelectOneCustomer
GO
CREATE PROCEDURE SelectOneCustomer
AS
BEGIN
	SELECT TOP 1 * FROM Customers
END;

--CALL THE PROCEDURE
EXECUTE SelectOneCustomer


