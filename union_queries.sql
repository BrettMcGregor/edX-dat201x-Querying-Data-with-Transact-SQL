-- Create missing Employee table
DROP TABLE SalesLT.Employee;

CREATE TABLE SalesLT.Employee
(
EmployeeID INT IDENTITY PRIMARY KEY,
FirstName VARCHAR(30),
LastName VARCHAR(30)
);
GO

INSERT INTO SalesLT.Employee (FirstName, LastName)
VALUES 
('Kyoko', 'Mahr'),
('Miss', 'Donahue'),
('Keila', 'Dau'),
('Despina', 'Stcyr'),
('Ricardo', 'Casado'),
('Callie', 'Bateman'),
('Boris', 'Sutter'),
('Ellan', 'Nuckols'),
('Colene', 'Bernett'),
('Grant', 'Scarbrough'),
('Johnetta', 'Lutz'),
('Eldridge', 'Poynor'),
('Aleisha', 'Engelhardt'),
('Janetta', 'Mcpartland'),
('Kiley', 'Briley'),
('Stefania', 'Feth'),
('Dortha', 'Westberry'),
('Tanya', 'Mazurek'),
('Reanna', 'Hydrick'),
('Tereasa', 'Brasel'),
('Lyndia', 'Hansen'),
('Ilse', 'Silvestri'),
('Kara', 'Votaw'),
('Bronwyn', 'Lobaugh'),
('Hobert', 'Strub'),
('Sheryll', 'Lague'),
('Keitha', 'Eaglin'),
('Sherry', 'Gearhart'),
('Kathryn', 'Boose'),
('Clyde', 'Mastroianni'),
('Violeta', 'Quan'),
('Melanie', 'Pryce'),
('Pamella', 'Dimery'),
('Aleen', 'Solt'),
('Temple', 'Iacovelli'),
('Esperanza', 'Ashline'),
('Leah', 'Wooley'),
('Jocelyn', 'Hayslip'),
('Karissa', 'Wiley'),
('Denise', 'Fazenbaker'),
('Myrle', 'Heaney'),
('Edward', 'Wing'),
('Yetta', 'Bowsher'),
('Athena', 'Ouzts'),
('Mona', 'Atencio'),
('Ozella', 'Conyers'),
('Roy', 'Biscoe'),
('Barney', 'York'),
('Raisa', 'Scaglione'),
('Easter', 'Rodriguez'),
('Donna', 'Carreras');
GO

SELECT firstname, lastname FROM SalesLT.Employee;
SELECT firstname, lastname FROM SalesLT.Customer
ORDER BY lastname;

-- create new table and copy distinct data from SAlesLT.customer (which has duplicates)
select distinct firstname, lastname
into customerCOPY
from SalesLT.Customer


-- union 
SELECT FirstName, LastName
FROM SalesLT.Employee
UNION
SELECT FirstName, LastName
FROM dbo.Customercopy
ORDER BY LastName;

-- union all

SELECT FirstName, LastName, 'Employee' AS Type
FROM SalesLT.Employee
UNION ALL
SELECT FirstName, LastName, 'Customer'
FROM dbo.Customercopy
ORDER BY LastName;
GO


select * from temp
ORDER BY lastname;

