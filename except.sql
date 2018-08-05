-- return all rows from both sets EXCEPT any rows that occur in both sets

SELECT firstname, lastname
FROM customercopy
EXCEPT
SELECT firstname, lastname
FROM saleslt.employee;