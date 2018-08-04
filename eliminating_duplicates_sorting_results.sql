-- Display a list of product colors iwth the word None if the value is NULL

SELECT ISNULL(color, 'None') AS color FROM salesLt.product;

-- eliminate duplicates from query results
SELECT DISTINCT ISNULL(color, 'None') AS color FROM salesLt.product;

-- sorted by color
SELECT DISTINCT ISNULL(color, 'None') AS color FROM salesLt.product
ORDER BY color;

-- with the word None if the value is NULL, and a dash if the size is null

SELECT DISTINCT ISNULL(color, 'None') AS color, ISNULL(size, '-') AS Size FROM salesLt.product
ORDER BY color;

-- Display the top 100 products by list price

SELECT TOP 100 name, listprice FROM saleslt.product
ORDER BY listprice DESC;

-- Display the first ten products by product number

SELECT name, listprice FROM saleslt.product
ORDER BY productnumber
OFFSET 0 ROWS
FETCH NEXT 10 ROWS ONLY;

-- Display the next ten products by product number

SELECT name, listprice FROM saleslt.product
ORDER BY productnumber
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY;

























