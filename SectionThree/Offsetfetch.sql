/*

Using OFFSET FETCH

*/

--Create a demo table called Rows
CREATE TABLE DemoRows
(
	RowID INT IDENTITY NOT NULL,
	RowNumber as 'Row Number ' + cast(rowID as VARCHAR(30)) 
	
)
GO
--INSERT 500 rows into this table
INSERT INTO DemoRows default values
GO 500


--Using the OFFSET-FETCH
--first 10 rows
SELECT RowNumber FROM DemoRows
ORDER BY RowID
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY

--fetch next 10 rows
SELECT RowNumber FROM DemoRows
ORDER BY RowID
OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY

--offset 50 rows and fetch 20 rows
SELECT RowNumber FROM DemoRows
ORDER BY RowID
OFFSET 50 ROWS FETCH NEXT 20 ROWS ONLY

--now to remove this demo table
DROP TABLE DemoRows

