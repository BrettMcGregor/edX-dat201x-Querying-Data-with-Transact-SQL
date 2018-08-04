USE AdventureWorksLT
GO

SELECT productID, name, color, size, color + size AS style
FROM SalesLT.Product;



