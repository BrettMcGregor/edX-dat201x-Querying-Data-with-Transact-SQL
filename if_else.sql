-- Simple logical test
IF 'Yes' = 'No'
PRINT 'True'

IF 'Yes' = 'Yes'
PRINT 'True'

-- Change code based on a condition
UPDATE SalesLT.Product
SET DiscontinuedDate = GETDATE()
WHERE ProductID = 1;

IF @@ROWCOUNT < 1
BEGIN
	PRINT 'Product was not found'
END
ELSE
BEGIN
	PRINT 'Product Updated'
END
