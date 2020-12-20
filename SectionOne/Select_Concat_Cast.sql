SELECT 'Hello SQL Server'

EXECUTE sp_help 'Products'

SELECT CONCAT('The ', ProductType, ' Costs ', ProductPrice, ' Pounds')  FROM Products

SELECT 'The ' + ProductType + ' Costs ' + ProductPrice + ' Pounds'  FROM Products

SELECT 'The ' + ProductType + ' Costs ' + CAST(ProductPrice AS varchar(6)) + ' Pounds'  FROM Products