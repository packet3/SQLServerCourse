/*
	Joining between more than one table using INNER JOIN 
*/

--that returns all customers and orders that have a delivery date set. THIS WILL FAIL
SELECT CustomerID, CustomerFirstName 
FROM Customers
INNER JOIN Orders 
ON CustomerID = CustomerID
where DeliveryDate is not null

GO
--that returns all customers and orders that have a delivery date set. THIS WILL WORK
SELECT C.CustomerID, CustomerFirstName 
FROM Customers AS C
INNER JOIN Orders AS O
ON C.CustomerID = O.CustomerID
where DeliveryDate is not null

--Group the duplicates
SELECT C.CustomerID, CustomerFirstName 
FROM Customers AS C
INNER JOIN Orders AS O
ON C.CustomerID = O.CustomerID
where DeliveryDate is not null
group by C.CustomerID, CustomerFirstName