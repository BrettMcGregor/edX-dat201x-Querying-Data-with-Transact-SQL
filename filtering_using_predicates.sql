-- List information about product model 6

SELECT name, color, size FROM saleslt.product
WHERE productmodelid = 6;

-- list information about products that have a prod number beginnning 'FR'

SELECT productnumber, name, listprice FROM saleslt.product
WHERE productnumber LIKE 'FR%';

-- Filter the previous query to ensure that the product number contains two sets of two digits

SELECT productnumber, name, listprice FROM saleslt.product
WHERE productnumber LIKE 'FR-_[0-9][0-9]_-[0-9][0-9]';  -- _ is placeholder for any character. [0-9] any number

-- Find products that have no sell end date

SELECT name FROM saleslt.product
WHERE sellenddate IS NOT NULL;

-- Find products that have a sell end date in 2006

SELECT name FROM saleslt.product
WHERE sellenddate BETWEEN '2006/1/1' AND '2006/12/31';

SELECT name FROM saleslt.product
WHERE YEAR(sellenddate) = '2006';

-- Find Products that have a category ID of 5, 6, or 7

SELECT productcategoryID, name, listprice FROM saleslt.product
WHERE productcategoryID IN (5, 6, 7);

-- Find Products that have a category ID of 5, 6, or 7 and have a sell end date

SELECT productcategoryID, name, listprice FROM saleslt.product
WHERE productcategoryID IN (5, 6, 7)
AND sellenddate IS NULL;

-- Find Products that have a category ID of 5, 6, or 7 and a product number begins 'FR'
SELECT productcategoryID, name, listprice FROM saleslt.product
WHERE productnumber LIKE 'FR%';























