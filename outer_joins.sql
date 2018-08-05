-- Get all customers, with sales orders for those who have bought anything

SELECT c.firstname, c.lastname, oh.salesordernumber
FROM saleslt.customer AS c
LEFT OUTER JOIN saleslt.salesorderheader AS oh
ON c.customerid = oh.customerid
ORDER BY c.customerid;

-- Return only customers who havent purchased anything
SELECT c.firstname, c.lastname, oh.salesordernumber
FROM saleslt.customer AS c
LEFT JOIN saleslt.salesorderheader AS oh
ON c.customerid = oh.customerid
WHERE oh.salesordernumber IS NULL
ORDER BY c.customerid;

-- outer join more than two tables

SELECT p.name AS productname, oh.salesordernumber
FROM saleslt.product AS p
LEFT JOIN saleslt.salesorderdetail AS od
ON p.productid = od.productid
LEFT JOIN saleslt.salesorderheader AS oh -- Additional tables to the right must also use LEFT JOINS
ON od.salesorderid = oh.salesorderid


SELECT p.name AS productname, c.name AS category, oh.salesordernumber
FROM saleslt.product AS p
LEFT JOIN saleslt.salesorderdetail AS od
ON p.productid = od.productid
LEFT JOIN saleslt.salesorderheader AS oh
ON od.salesorderid = oh.salesorderid
INNER JOIN saleslt.productcategory AS c -- Added to the left (to first/leftmost table 'saleslt.product'), so can use inner join
ON p.productcategoryid = c.productcategoryid
ORDER BY p.productid;











































