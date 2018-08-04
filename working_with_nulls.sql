-- Working with NULLS

-- NULL numbers = 0
SELECT name, ISNULL(TRY_CAST(size as INT), 0) AS NumericSize
FROM SalesLt.Product;

-- NULL strings = blank string
SELECT productnumber, ISNULL(color, '') + ', ' + ISNULL(size, '') AS productdetails
FROM SalesLt.Product;

-- Multi color = NULL
SELECT name, color, NULLIF(color, 'Multi') AS singlecolor
FROM SalesLt.Product;

-- find first non-null date
SELECT name,discontinueddate, sellenddate, sellstartdate, COALESCE(discontinueddate, sellenddate, sellstartdate) AS lastactivity
FROM SalesLt.Product;

-- Searched CASE
SELECT name,
	CASE
		WHEN sellenddate IS NULL THEN 'On Sale'
		ELSE 'Discontinued'
	END AS salesstatus
FROM salesLT.Product;

-- Simple CASE
SELECT name, size,
	CASE size
		WHEN 'S' THEN 'Small'
		WHEN 'M' THEN 'Medium'
		WHEN 'L' THEN 'Large'
		WHEN 'XL' THEN 'Extra Large'
		ELSE ISNULL(size, 'n/a')
	END AS productsize
FROM saleslt.product;



