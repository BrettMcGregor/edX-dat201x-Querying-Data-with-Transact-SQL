-- Displahy the sales order details for items that are
-- equal to the max unit price for that sales order


SELECT SOH.SalesOrderID, MUP.MaxUnitPrice
FROM SalesLT.SalesOrderHeader AS SOH
CROSS APPLY SalesLt.udfMaxUnitPrice(SOH.SalesOrderID) AS MUP -- we arent using user defined functions in this course
ORDER BY SOH.SalesOrderID;

sp_helptext 'ufnGetCustomerInformation'