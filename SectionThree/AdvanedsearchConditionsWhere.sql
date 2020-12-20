/*
	Beyond Basic search Conditions useing the WHERE statement
*/

--seraching for orders with a delivery date between 1st of feb 2019 and 1st of july 2019
select OrderID, CustomerID, OrderTotal, DeliveryDate from orders
where DeliveryDate between '20190201' and '20190701'

--search oders that where shipped between 1st of jan 2020 and 1st of december 2020 and with a value grater than 250 pounds
select OrderID, CustomerID, OrderTotal, DeliveryDate from orders
where DeliveryDate between '20200101' and '20201201'
and OrderTotal > 250

--search orders that dont have a delivery date
select OrderID, CustomerID, OrderTotal, DeliveryDate from orders
where DeliveryDate is null

--search orders that dont have a delivery date and an OrderTotal of between 20 and 70 pounds
select OrderID, CustomerID, OrderTotal, DeliveryDate from orders
where DeliveryDate is null
and OrderTotal between 20.00 and 70.00

--search orders that dont equal 200
select OrderID, CustomerID, OrderTotal, DeliveryDate from orders
where OrderTotal <> 200.00