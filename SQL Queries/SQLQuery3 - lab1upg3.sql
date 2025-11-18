--21--
--CREATE PROCEDURE [IncreasePrices] AS
	--UPDATE [Products]
	--SET [UnitPrice] = [UnitPrice]*1.05
--RETURN 0;

--SELECT * FROM [IncreasePrices];

--23--
--CREATE VIEW [ProductCategoryPrice] AS 
--SELECT [Products].[ProductName], [Products].[UnitPrice], [Categories].[CategoryName]
--FROM [Products]
--JOIN [Categories] ON [Products].[CategoryID] = [Categories].[CategoryID];


--SELECT * FROM [ProductCategoryPrice];

--25--
BEGIN TRANSACTION UpdateProductPrices;

BEGIN TRY
	UPDATE [Products]
	SET [Products].[UnitPrice] = [Products].[UnitPrice] * 1.10
	FROM [Products]
	JOIN [Categories] ON [Products].[CategoryID] = [Categories].[CategoryID]
	WHERE [Categories].[CategoryName] = 'Beverages';
	
	UPDATE [Products]
	SET [Products].[UnitPrice] = [Products].[UnitPrice] * 0.97
	FROM [Products]
	JOIN [Categories] ON [Products].[CategoryID] = [Categories].[CategoryID]
	WHERE [Categories].[CategoryName] = 'Seafood';

	COMMIT TRANSACTION UpdateProductPrices;
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION UpdateProductPrices;
END CATCH;

--SELECT * FROM [Products];