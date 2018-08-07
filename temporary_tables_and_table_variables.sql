-- Temporary table (are limited to the session scope i.e. temp table deleted at end of session)
CREATE TABLE #Colors
(Color VARCHAR(15));

INSERT INTO #Colors
SELECT DISTINCT Color
FROM SalesLT.Product;

SELECT * FROM #Colors;

-- Table Variable (are limited to the batch scope i.e. all statements need to be run at once)

DECLARE @Colors AS TABLE
(Color VARCHAR(15));

INSERT INTO @Colors
SELECT DISTINCT Color
FROM SalesLT.Product;

SELECT * FROM @Colors;


-- New batch
SELECT * FROM #Colors;

SELECT * FROM @Colors; -- now out of scope