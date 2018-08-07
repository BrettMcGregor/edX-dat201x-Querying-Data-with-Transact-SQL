CREATE FUNCTION SalesLT.udfCustomersByCity  -- udf prefix is a naming convention 'user defined function'
(@City AS VARCHAR(20))
RETURNS TABLE
AS
RETURN
(SELECT c.CustomerID, FirstName, LastName, AddressLine1, City, StateProvince
FROM SalesLT.Customer AS c
JOIN SalesLT.CustomerAddress AS ca
ON c.CustomerID = ca.CustomerID
JOIN SalesLT.Address AS a ON ca.AddressID = a.AddressID
WHERE City = @City);

SELECT * FROM SalesLT.udfCustomersByCity('Bellevue');