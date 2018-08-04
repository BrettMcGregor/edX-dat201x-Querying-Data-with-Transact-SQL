USE AdventureWorksLT
GO

--SELECT
--FROM
--WHERE
--GROUP BY
--HAVING
--ORDER BY


SELECT productID, name, color, size, color + size AS style
FROM SalesLT.Product
WHERE name LIKE '%Long%'
AND SIZE = 'L';



