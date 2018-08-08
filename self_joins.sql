
DROP TABLE SalesLT.Employee2

CREATE TABLE SalesLT.Employee2
(EmployeeID INT IDENTITY PRIMARY KEY,
EmployeeName NVARCHAR(256),
ManagerID INT);
GO

-- Get salesperson from Customer Table and generate managers
INSERT INTO SalesLT.Employee2 (EmployeeName, ManagerID)
SELECT DISTINCT Salesperson, NULLIF(CAST(RIGHT(SalesPerson, 1) AS INT), 0)
FROM SalesLT.Customer;
GO
UPDATE SalesLT.Employee2
SET ManagerID = (SELECT MIN(EmployeeID) FROM SalesLT.Employee2 WHERE ManagerID IS NULL)
WHERE ManagerID IS NULL
AND EmployeeID > (SELECT MIN(EmployeeID) FROM SalesLT.Employee2 WHERE ManagerID IS NULL);
GO

SELECT * FROM SalesLT.Employee2


UPDATE SalesLT.Employee2
SET ManagerID = 3
WHERE EmployeeName LIKE '%jillian%';

UPDATE SalesLT.Employee2
SET ManagerID = 3
WHERE EmployeeName LIKE '%pam%';

UPDATE SalesLT.Employee2
SET ManagerID = 3
WHERE EmployeeName LIKE '%shu%';


SELECT * FROM SalesLT.Employee2
ALTER TABLE SalesLT.Employee2
ADD Level INT;
GO


UPDATE SalesLT.Employee2
SET Level = 1
WHERE EmployeeName LIKE '%jillian%';

UPDATE SalesLT.Employee2
SET Level = 1
WHERE EmployeeName LIKE '%pam%';

UPDATE SalesLT.Employee2
SET Level = 1
WHERE EmployeeName LIKE '%shu%';

UPDATE SalesLT.Employee2
SET Level = 1
WHERE EmployeeName LIKE '%linda%';

UPDATE SalesLT.Employee2
SET Level = 2
WHERE EmployeeName LIKE '%david%';

UPDATE SalesLT.Employee2
SET Level = 2
WHERE EmployeeName LIKE '%micha%';

UPDATE SalesLT.Employee2
SET Level = 0
WHERE EmployeeName LIKE '%jae%';

UPDATE SalesLT.Employee2
SET Level = 3
WHERE EmployeeName LIKE '%jos%';

UPDATE SalesLT.Employee2
SET Level = 3
WHERE EmployeeName LIKE '%garr%';

SELECT * FROM SalesLT.Employee2
ORDER BY Level;