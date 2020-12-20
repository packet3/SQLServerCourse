/*
	Subquerys and Aggregate Functions
*/

--First a simple Subquery
SELECT ProductID, ProductType FROM Products
WHERE ProductType IN (SELECT ProductType FROM Products)

--Subquery within a JOIN

SELECT C.CustomerFirstName, max(o.OrderTotal) as orderTotal
FROM Customers AS C
INNER JOIN Orders AS O
	ON C.CustomerID = O.CustomerID
INNER JOIN (
	SELECT o2.OrderID ,
	o2.OrderTotal
	FROM Orders as o2
	CROSS JOIN Customers as c2
	WHERE c2.CustomerID = o2.CustomerID
) largest
on largest.OrderID = O.OrderID
group by C.CustomerFirstName

--Simple Corralated query
SELECT C.CustomerFirstName, C.CustomerLastName FROM Customers AS C
INNER JOIN Orders AS o
ON C.CustomerID = o.CustomerID
WHERE OrderTotal IN
(
	select OrderTotal from orders O2
	WHERE o.CustomerID = O2.CustomerID
	AND O2.OrderTotal < 56
	

)


/*
	aggregate Functions
*/

SELECT MIN(OrderTotal) AS OrderMin, MAX(OrderTotal) as Ordermax, AVG(OrderTotal) AS AverageOrderTotal, SUM(OrderTotal) AS SumOrders FROM Orders
