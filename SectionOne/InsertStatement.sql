--INSERT INTO
INSERT INTO Customers(CustomerFirstName, CustomerLastName)
VALUES('Katie', 'Williams')

--CHECK THE RESULT
SELECT * FROM Customers

--SELECT INTO
SELECT TOP 2 CustomerFirstName
INTO MyDemoTable
FROM Customers

--CHECK THE RESULT
SELECT * FROM MyDemoTable




--INTO SELECT
CREATE TABLE MyDemoTable2
(
	LastName VARCHAR(60) NOT NULL
)

INSERT INTO MyDemoTable2(LastName)
SELECT TOP 3 CustomerLastName
FROM Customers

--CHECK THE RESULT
SELECT * FROM MyDemoTable2

--CLEANUP
DROP TABLE MyDemoTable2
DROP TABLE MyDemoTable