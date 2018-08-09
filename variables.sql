--Search by city using a variable
DECLARE @City VARCHAR(20) = 'Toronto'
-- SET @City = 'Bellevue'


SELECT FirstName + ' ' + LastName as [Name], AddressLine1 AS Address, City
FROM SalesLT.Customer AS c
JOIN SalesLT.CustomerAddress AS ca
ON c.CustomerID = ca.CustomerID
JOIN SalesLT.Address AS a
ON ca.AddressID = a.AddressID
WHERE City = @City;

-- Use a variable as an output
DECLARE @Result MONEY
SELECT @Result = MAX(TotalDue)
FROM SalesLT.SalesOrderHeader;

PRINT @Result;