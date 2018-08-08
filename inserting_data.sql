-- Create a table for this demo

CREATE TABLE SalesLT.CallLog
(
	CallID INT IDENTITY PRIMARY KEY NOT NULL,
	CallTime DATETIME NOT NULL DEFAULT GETDATE(),
	SalesPerson NVARCHAR(256) NOT NULL,
	CustomerID INT NOT NULL REFERENCES SalesLT.Customer(CustomerID),
	PhoneNumber NVARCHAR(25) NOT NULL,
	Notes NVARCHAR(MAX) NULL
);
GO

-- Insert a row
INSERT INTO SalesLT.CallLog
VALUES
('2015-01-01T12:30:00', 'adventure-works\pamela0', 1, '245-555-0173', 'Returning call re: enquiry about order');

SELECT * FROM SalesLT.CallLog;


-- Insert defaults and nulls
INSERT INTO SalesLT.CallLog -- columns not defined so row data needs to be in table schema order
VALUES
(DEFAULT, 'adventure-works\david8', 2, '170-555-0127', NULL);

SELECT * FROM SalesLT.CallLog;

-- Insert a row with explicit columns
INSERT INTO SalesLT.CallLog (SalesPerson, CustomerID, PhoneNumber) -- columns defined, row data must now match this order
VALUES
('adventure-works\jillian0', 3, '279-555-0130');


-- Insert multiple rows
INSERT INTO SalesLT.CallLog
VALUES
(DATEADD(mi, -2, GETDATE()), 'adventure-works\jillian0', 4, '710-555-0173', NULL),
(DEFAULT, 'adventure-works\shu0', 5, '820-555-0186', 'Called to arrange delivery of order 10987');


SELECT * FROM SalesLT.CallLog;

-- Insert the results of a query

INSERT INTO SalesLT.CallLog (SalesPerson, CustomerID, PhoneNumber, Notes)
SELECT SalesPerson, CustomerID, Phone, 'Sales Promotion Call'
FROM SalesLT.Customer
WHERE CompanyName = 'Big-Time Bike Store';



SELECT * FROM SalesLT.CallLog;

-- Retrieve inserted identity
INSERT INTO SalesLT.CallLog (SalesPerson, CustomerID, PhoneNumber)
VALUES
('adventure-works\josé1', 10, '150-555-0127');

SELECT SCOPE_IDENTITY();

SELECT * FROM SalesLT.CallLog;

-- Overriding Identity
SET IDENTITY_INSERT SalesLT.CallLog ON;

INSERT INTO SalesLT.CallLog (CallID, SalesPerson, CustomerID, PhoneNumber)
VALUES
(9, 'adventure-works\josé1', 11, '926-555-0159');

SET IDENTITY_INSERT SalesLT.CallLog OFF;

SELECT * FROM SalesLT.CallLog;













