SELECT	Products.ProductID AS ProductCode, 
		Products.ProductName, 
		UnitPrice AS Price, 
		UnitPrice + (UnitPrice * 0.07) AS PriceIncludeVAT
FROM Products


SELECT	MAX(UnitPrice) AS Price	
FROM Products

SELECT	MIN(UnitPrice) AS Price	
FROM Products

SELECT	AVG(UnitPrice) AS Price
FROM Products

