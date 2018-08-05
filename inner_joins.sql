-- basic inner join

SELECT saleslt.product.name AS productName, saleslt.productcategory.name AS category
FROM saleslt.product
INNER JOIN saleslt.productcategory
ON saleslt.product.productcategoryID = saleslt.productcategory.productcategoryID;

-- table aliases

SELECT p.name AS productName, c.name AS category
FROM saleslt.product AS p
INNER JOIN saleslt.productcategory AS c
ON p.productcategoryID = c.productcategoryID;

-- joining more than two tables

SELECT oh.OrderDate, oh.salesordernumber, p.name AS productName, od.orderqty, od.unitprice, od.linetotal
FROM saleslt.salesorderheader AS oh
INNER JOIN saleslt.salesorderdetail AS od
ON od.salesorderid = oh.salesorderid
INNER JOIN saleslt.product AS p
ON od.productid = p.productid
ORDER BY oh.orderdate, oh.salesorderid, od.salesorderdetailid

-- mulitple join predicates

SELECT oh.OrderDate, oh.salesordernumber, p.name AS productName, od.orderqty, od.unitprice, od.linetotal
FROM saleslt.salesorderheader AS oh
INNER JOIN saleslt.salesorderdetail AS od
ON od.salesorderid = oh.salesorderid
INNER JOIN saleslt.product AS p
ON od.productid = p.productid AND od.unitprice < p.listprice -- Note multiple predicates
ORDER BY oh.orderdate, oh.salesorderid, od.salesorderdetailid












































