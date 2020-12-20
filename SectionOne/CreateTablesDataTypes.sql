/*
	Practice Creating More Tables using the data types we learnt about in the previous lessons.
*/

--Integer Types
CREATE TABLE MyIntegers
(
	[tinyint] TINYINT NOT NULL,
	[smallint] SMALLINT NOT NULL,
	[int] INT NOT NULL,
	[bigint] BIGINT NOT NULL
	
)
--GO
--INSERT INTO MyIntegers([tinyint], [smallint], [int], [bigint])
--VALUES(100, 2158, 1000000, 1000000000000000000)
GO
--Lets Generate an error
--INSERT INTO MyIntegers([tinyint], [smallint], [int], [bigint])
--VALUES(1000, 2158, 1000000, 1000000000000000000)
GO
--NO COLUMN NAMES
--INSERT INTO MyIntegers
--VALUES(100, 2158, 10000, 1000000000000000000)

GO
--SELECT * FROM MyIntegers

GO

--Textual Types
CREATE TABLE MyTextual
(
	[varchar] VARCHAR(60) NOT NULL,
	varcharMax VARCHAR(MAX) NOT NULL,
	[char] CHAR(25) NOT NULL,
	[nvarchar] NVARCHAR(125) NOT NULL,
    nvarcharMax NVARCHAR(MAX) NOT NULL,
	[nchar] NCHAR(30) NOT NULL
)

--GO
--INSERT INTO MyTextual([varchar],[varcharMax],[char],[nvarchar],	[nvarcharMax],[nchar])
--VALUES('Some Text', 'Some Very Very long text......', 'Text in Char column', '≈kergatan', 'Nicol·s some more unicode text....', '≈kergatan')
GO
--INSERT INTO MyTextual([varchar],[varcharMax],[char],[nvarchar],	[nvarcharMax],[nchar])
--VALUES('≈kergatan', 'Some Very Very long text......', 'Text in Char column', '	U+0000', 'Nicol·s some more unicode text....', '≈kergatan')
GO
--WILL CUASE AN ERROR
--INSERT INTO MyTextual([varchar],[varcharMax],[char],[nvarchar],	[nvarcharMax],[nchar])
--VALUES('≈kergatan≈kergatan≈kergatan≈kergatan≈kergatan≈kergatan≈kergatan≈kergatan≈kergatan≈kergatan≈kergatan', 'Some Very Very long text......', 
--'Text in Char column', '	U+0000', 'Nicol·s some more unicode text....', '≈kergatan')

GO
--SELECT  NCHAR(UNICODE([varchar])) FROM MyTextual
GO

CREATE TABLE MyDecimals
(
	DefaultDecimal DECIMAL NOT NULL,
	DecimalPrecisionandScale DECIMAL(4, 3) NOT NULL,
	DefaultNumeric NUMERIC NOT NULL,
	NumericPrecisionandScale NUMERIC(5, 2) NOT NULL
)

--GO
--INSERT INTO MyDecimals(DefaultDecimal,DecimalPrecisionandScale,	DefaultNumeric,	NumericPrecisionandScale)
--VALUES(10.00, 1.000, 2534.1300, 123.00 )
GO

--SELECT * FROM MyDecimals
GO
CREATE TABLE MyCurrency
(
	[money] MONEY NOT NULL,
	[smallmoney] SMALLMONEY NOT NULL
)

--GO
--INSERT INTO MyCurrency([money], [smallmoney])
--VALUES(1234.56, 123.4567)

GO
--SELECT * FROM MyCurrency
GO

CREATE TABLE MyDates
(
	[date] DATE NOT NULL,
	[time] TIME NOT NULL,
	timeWithNanoseconds TIME(4) NOT NULL,
	[datetime] DATETIME NOT NULL,
	[smalldatetime] SMALLDATETIME NOT NULL,
	[datetime2] DATETIME2 NOT NULL,
	datetime2WithPrecision DATETIME2(4) NOT NULL,
	[datetimeoffset] DATETIMEOFFSET NOT NULL,
	datetimeoffsetWithPrecision DATETIMEOFFSET(7) NOT NULL
)

--GO
--INSERT INTO MyDates([date],	[time],	timeWithNanoseconds,[datetime],	[smalldatetime],[datetime2],datetime2WithPrecision,[datetimeoffset],
--	datetimeoffsetWithPrecision)
--VALUES(CONVERT(DATE,'2020-12-13'), CONVERT(TIME,'17:05:29'), CONVERT(TIME(4), '12:05:29.1234'), CONVERT(DATETIME, '2020-12-13 17:07:29'), 
--CONVERT(SMALLDATETIME,'2020-12-13 17:07:29'), CONVERT(DATETIME2,'2020-12-13 17:07:29'), CONVERT(DATETIME2(4),'2020-12-13 17:07:29.12345'), 
--CONVERT(DATETIMEOFFSET, '2020-12-13 17:07:29+12:15'), CONVERT(DATETIMEOFFSET(7),'2020-12-13 17:07:29.1234567+10:00'))

GO
--SELECT * FROM MyDates