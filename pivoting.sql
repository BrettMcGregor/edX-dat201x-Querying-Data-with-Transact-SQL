-- Pivot

SELECT * FROM
(SELECT p.ProductID, pc.Name, ISNULL(p.color, 'Uncolored') AS Color
FROM SalesLT.ProductCategory AS pc
JOIN SalesLT.Product AS p
ON pc.ProductCategoryID = p.ProductCategoryID
) AS ppc
PIVOT(COUNT(ProductID) FOR Color IN([Red], [Blue], [Black], [Silver], [Yellow], [Grey], [Multi], [Uncolored])) as pvt
ORDER BY Name;


-- UnPivot

-- Create a table of pivoted data
CREATE TABLE #ProductColorPivot
(Name VARCHAR(50), Red INT, Blue INT, Black INT, Silver INT, Yellow INT, Grey INT, Multi INT, Uncolored INT);

INSERT INTO #ProductColorPivot
SELECT * FROM 
(SELECT p.ProductID, pc.Name, ISNULL(p.color, 'Uncolored') AS Color
FROM SalesLT.ProductCategory AS pc
JOIN SalesLT.Product AS p
ON pc.ProductCategoryID = p.ProductCategoryID
) AS ppc
PIVOT(COUNT(ProductID) FOR Color IN([Red], [Blue], [Black], [Silver], [Yellow], [Grey], [Multi], [Uncolored])) as pvt
ORDER BY Name;

-- now unpivot the table

SELECT Name, Color, ProductCount
FROM
(SELECT Name, [Red], [Blue], [Black], [Silver], [Yellow], [Grey], [Multi], [Uncolored]
FROM #ProductColorPivot) AS pcp
UNPIVOT
(ProductCount FOR Color IN ([Red], [Blue], [Black], [Silver], [Yellow], [Grey], [Multi], [Uncolored])) AS ProductCounts
ORDER BY Name;









