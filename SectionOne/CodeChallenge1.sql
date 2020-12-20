/*

In this challenge you will need to do the following:

1. Create a new Table called CustomerSalutations, with one column called Salutation set as a VARCHAR(80) datat type and set this to be null
2. Insert a new row into the Products table, you will need to use all the columns except ProductID, and the new row needs to be some sort of clothing
   of your choice.
3. Use the SELECT statement to select one row from the products table, retuning only the productprice column.

*/


CREATE TABLE CustomerSalutations
(
	Salutation VARCHAR(80) NULL
)

GO

INSERT INTO Products(ProductType, ProductName, ProductDescription, ProductPrice)
VALUES('Jacket', 'Fjord Check Jacket','Warm, stylish and great for layering, this check overshirt is an instant classic that''s built to last', 69.00)

GO

SELECT TOP 1 ProductPrice FROM Products