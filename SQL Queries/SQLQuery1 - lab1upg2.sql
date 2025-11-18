--SELECT * FROM [Employees];

--1--
--SELECT [FirstName], [LastName] FROM [Employees];

--2--
--SELECT [HomePhone]
--FROM [Employees]
--WHERE [Title] = 'Vice President, Sales'

--SELECT * FROM [Suppliers];

--3--
--SELECT [ContactName]
--FROM [Suppliers]
--WHERE [CompanyName] = 'Svensk sjöföda AB';

--SELECT * FROM [Employees];

--4--
--SELECT [FirstName], [LastName], [BirthDate]
--FROM [Employees]
--ORDER BY [BirthDate] DESC;

--5--
--SELECT * FROM [Customers];
--SELECT [CompanyName], [Country], [City]
--FROM [Customers]
--ORDER BY [Country], [City]

--6--
--SELECT [LastName], [FirstName]
--FROM [Employees]
--WHERE [LastName] LIKE '%an'

--7--
--SELECT * FROM [Employees];
--SELECT [FirstName], [LastName], [Extension]
--FROM [Employees]
--WHERE [Title] LIKE '%Vice%' OR [Title] LIKE '%Manager%'

--8--
--SELECT [UnitPrice], [UnitPrice] * 1.07 AS [Nytt pris]
--FROM [Products]

--9--
--SELECT * FROM [Products];

--SELECT [ProductName], [UnitPrice] * [UnitsInStock] AS [Total Value]
--FROM [Products]

--10--
--SELECT [ProductName], [UnitsInStock], [ReorderLevel]
--FROM [Products]
--WHERE [UnitsInStock] < [ReorderLevel];

--11--
--SELECT [ProductName], [UnitsInStock], [UnitsOnOrder], [ReorderLevel]
--FROM [Products]
--WHERE [UnitsInStock] + [UnitsOnOrder] < [ReorderLevel];

--12--

--SELECT [ProductName], 
--(SELECT [CategoryName]
 --FROM [Categories]
 --WHERE [Categories].[CategoryID] = [Products].[CategoryID]) AS [CategoryName]
--FROM [Products]
--WHERE [ProductName] = 'Lakkalikööri';

--13--
--SELECT [ProductName], 
--(SELECT [CompanyName]
 --FROM [Suppliers]
 --WHERE [Suppliers].[SupplierID] = [Products].[SupplierID]) AS [CompanyName]
--FROM [Products]
--WHERE [ProductName] = 'Gravad lax';

--SELECT * FROM [Products];
--SELECT * FROM [Suppliers];

--14--
--SELECT DISTINCT 
    --sup.CompanyName
--FROM [Order Details] orddet
--JOIN Products pro ON orddet.ProductID = pro.ProductID
--JOIN Suppliers sup ON pro.SupplierID = sup.SupplierID
--WHERE orddet.OrderID = 10249;

--16--
--SELECT * FROM [Orders];
--SELECT * FROM [Order Details];

--SELECT 
   -- SUM([Order Details].UnitPrice * [Order Details].Quantity * (1 - [Order Details].Discount)) AS [Total Order Value]
--FROM [Orders]
--JOIN [Order Details] ON [Orders].OrderID = [Order Details].OrderID
--WHERE [Orders].OrderDate = '1996-12-12';

--19--

--SELECT [UnitPrice], [UnitPrice] * 1.20 AS [New price]
--FROM [Products]
--WHERE [CategoryID] = 4;

--SELECT * FROM [Categories];

--SELECT * FROM [Orders];
--SELECT * FROM [Order Details];