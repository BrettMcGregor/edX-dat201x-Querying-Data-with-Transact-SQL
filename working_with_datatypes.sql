-- WORKING WITH DATA TYPES

-- CAST
SELECT CAST(ProductID as VARCHAR(5)) + ': ' + name AS ProductName
FROM salesLt.Product;

-- CONVERT
SELECT CONVERT(VARCHAR(5), ProductID) + ': ' + name AS ProductName2
FROM salesLt.Product;

-- CONVERT Dates
SELECT SellStartDate,
	CONVERT(NVARCHAR(30), SellStartDate) AS ConvertedDate,
	CONVERT(NVARCHAR(30), SellStartDate, 126) AS ISO8601FormatDate -- third argument is a code see T-SQL documentation https://docs.microsoft.com/en-au/sql/t-sql/functions/cast-and-convert-transact-sql?view=sql-server-2017
FROM SalesLT.Product;

-- Try to CAST
SELECT name, CAST(Size as INTEGER) AS NumericSize
FROM SalesLT.Product; -- CAST function fails due to string literal content of size column

SELECT name, TRY_CAST(Size as INTEGER) AS NumericSize
FROM SalesLT.Product; -- TRY_CAST function proceeds and converts to integer where it can, NULL where it cannot









