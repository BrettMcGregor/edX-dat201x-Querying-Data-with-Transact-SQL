-- SalesLT.DemoTable does not exist in the database so I create one here
CREATE TABLE SalesLT.DemoTable
(
ID INT IDENTITY PRIMARY KEY, 
Description VARCHAR(10));

SELECT * FROM SalesLT.DemoTable;

-- Define a WHILE loop
DECLARE @Counter INT = 1

WHILE @Counter < 5

BEGIN
	INSERT SalesLT.DemoTable(Description)
	VALUES ('ROW ' + CONVERT(VARCHAR(5), @Counter))
	SET @Counter = @Counter + 1
END

SELECT Description FROM SalesLT.DemoTable


-- Testing for existing values
DECLARE @Counter INT = 1

DECLARE @Description INT
SELECT @Description = MAX(ID)
FROM SalesLT.DemoTable

WHILE @Counter < 5
BEGIN
	