/*
	Using a CTE, Group by and Order By statements
*/

--Sales CTE
WITH Sales_CTE
AS
(
	SELECT CustomerID, YEAR(DeliveryDate) as SalesYear
	FROM Orders
	WHERE DeliveryDate is not null

)
SELECT CustomerID, COUNT(CustomerID) as Totalsales, SalesYear FROM Sales_CTE
GROUP BY CustomerID, SalesYear
ORDER BY Totalsales desc




--will error when no group by statement is not included and when using count function.
go
WITH Sales_CTE
AS
(
	SELECT CustomerID, YEAR(DeliveryDate) as SalesYear
	FROM Orders
	WHERE DeliveryDate is not null

)
SELECT CustomerID, COUNT(CustomerID) as Totalsales, SalesYear FROM Sales_CTE
ORDER BY Totalsales desc
