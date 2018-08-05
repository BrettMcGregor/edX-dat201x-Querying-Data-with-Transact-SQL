-- return rows that occur in both sets using INTERSECT

SELECT firstname, lastname
FROM saleslt.customer
--FROM customercopy
INTERSECT
SELECT firstname, lastname
FROM saleslt.employee;