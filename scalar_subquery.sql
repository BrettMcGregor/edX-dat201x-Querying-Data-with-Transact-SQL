-- Display a list of products having list price higher than the


SELECT MAX(UnitPrice) FROM SalesLT.SalesOrderDetail

SELECT * FROM SalesLT.Product
WHERE ListPrice > 1467.01

-- using subquery
SELECT * FROM SalesLT.Product
WHERE ListPrice >
(SELECT MAX(UnitPrice) FROM SalesLT.SalesOrderDetail)