CREATE TABLE SalesLT.Employee
(EmployeeID INT IDENTITY PRIMARY KEY,
EmployeeName NVARCHAR(256),
ManagerID INT);
GO

-- Get salesperson from Customer table and generate managers
INSERT INTO saleslt.employee (EmployeeName, ManagerID)
SELECT DISTINCT Salesperson, NULLIF(CAST(RIGHT(Salesperson, 1) AS INT), 0)
FROM saleslt.customer;
GO
UPDATE SalesLT.Employee
SET ManagerID = (SELECT MIN(EmployeeID) FROM SalesLT.Employee WHERE ManagerID IS NULL)
WHERE ManagerID IS NULL
AND EmployeeID > (SELECT MIN(EmployeeID) FROM SalesLT.Employee WHERE ManagerID IS NULL);
GO

SELECT * FROM salesLT.Employee
DROP TABLE salesLT.Employee

