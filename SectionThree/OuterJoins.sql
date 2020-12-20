/*
	Using the Left, Right and Full outer Joins
*/

--lets check the orders and orderlineitems tables
SELECT * FROM Orders
GO
SELECT * FROM OrderLineItems

--First compare the result with an inner join
SELECT DISTINCT O.OrderID, OrderTotal, OL.OrderID
FROM Orders AS O
INNER JOIN OrderLineItems AS OL
ON OL.OrderID = O.OrderID

GO
--now lets see a left outer join
SELECT DISTINCT O.OrderID, OrderTotal, OL.OrderID
FROM Orders AS O
LEFT OUTER JOIN OrderLineItems AS OL
ON OL.OrderID = O.OrderID

--Now lets use the Right Join
SELECT DISTINCT O.OrderID, OrderTotal, OL.OrderID
FROM OrderLineItems AS OL
right OUTER JOIN Orders AS O
ON OL.OrderID = O.OrderID

--full outer join
SELECT DISTINCT O.OrderID, OrderTotal, OL.OrderID
FROM OrderLineItems AS OL
FULL OUTER JOIN Orders AS O
ON OL.OrderID = O.OrderID




