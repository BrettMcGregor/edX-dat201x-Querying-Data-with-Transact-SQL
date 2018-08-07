-- Create a view

CREATE VIEW SalesLT.vCustomerAddress
AS
SELECT c.CustomerID, FirstName, LastName, AddressLine1, City, StateProvince
FROM SalesLT.Customer AS c
JOIN SalesLT.CustomerAddress AS ca
ON c.CustomerID = ca.CustomerID
JOIN SalesLT.Address AS a
ON ca.AddressID = a.AddressID;


-- Query the view

SELECT CustomerID, City
FROM SalesLT.vCustomerAddress;


-- Join the view to a table

SELECT c.StateProvince, c.City, ISNULL(SUM(s.TotalDue), 0.00) AS Revenue
FROM SalesLT.vCustomerAddress AS c
LEFT JOIN SalesLT.SalesOrderHeader AS s
ON s.CustomerID = c.CustomerID
GROUP BY c.StateProvince, c.City
ORDER BY c.StateProvince, Revenue DESC;

