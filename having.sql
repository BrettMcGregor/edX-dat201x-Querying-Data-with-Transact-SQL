

SELECT ProductID, SUM(sod.OrderQty) AS Quantity
FROM SalesLT.SalesOrderDetail AS sod
JOIN SalesLT.SalesOrderHeader AS soh
ON sod.SalesOrderID = soh.SalesOrderID
WHERE YEAR(soh.OrderDate) = 2008
GROUP BY ProductID
HAVING SUM(sod.OrderQty) > 50;


