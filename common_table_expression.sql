-- Using a CTE

WITH ProductsByCategory (ProductID, ProductName, Category)
AS
(
	SELECT p.ProductID, p.Name, c.Name AS Category
	FROM SalesLT.Product AS p
	JOIN SalesLT.ProductCategory AS c
	ON p.ProductCategoryID = c.ProductCategoryID
)
SELECT Category, COUNT(ProductID) AS Products
FROM ProductsByCategory
GROUP BY Category
ORDER BY Category;


-- Recursive CTE

SELECT * FROM SalesLT.Employee2


-- Using the CTE to perform a recursive operation

WITH OrgReport (ManagerID, EmployeeID, EmployeeName, Level)
AS
(
	-- Anchor query
	SELECT e.ManagerID, e.EmployeeID, EmployeeName, 0
	FROM SalesLT.Employee2 AS e
	WHERE ManagerID IS NULL

	UNION ALL

	-- Recursive query
	SELECT e.ManagerID, e.EmployeeID, e.EmployeeName, e.Level + 1
	FROM SalesLT.Employee2 AS e
	INNER JOIN OrgReport AS o ON e.ManagerID = o.EmployeeID
)

SELECT * FROM OrgReport
OPTION (MAXRECURSION 3);	