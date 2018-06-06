SELECT	Customers.CustomerID,
		Customers.CompanyName,
		Customers.ContactName,
		SUM([Order Details].Quantity * [Order Details].UnitPrice) AS TotalOrderPrice

FROM Customers 
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID 
INNER JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
GROUP BY Customers.CustomerID, Customers.CompanyName, Customers.ContactName
ORDER BY Customers.CustomerID ASC;


SELECT	(SUM([Order Details].Quantity * [Order Details].UnitPrice)) AS TotalOrderPrice
FROM Customers, [Order Details], Orders
WHERE Customers.CustomerID = Orders.CustomerID  AND Orders.OrderID = [Order Details].OrderID



SELECT MAX(x.TotalOrderPrice) 
FROM(
	SELECT SUM([Order Details].Quantity * [Order Details].UnitPrice) AS TotalOrderPrice
	FROM Customers 
	INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID 
	INNER JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
	GROUP BY Customers.CustomerID, Customers.CompanyName, Customers.ContactName
) x

SELECT MIN(x.TotalOrderPrice) 
FROM(
	SELECT SUM([Order Details].Quantity * [Order Details].UnitPrice) AS TotalOrderPrice
	FROM Customers 
	INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID 
	INNER JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
	GROUP BY Customers.CustomerID, Customers.CompanyName, Customers.ContactName
) x

SELECT AVG(x.TotalOrderPrice) 
FROM(
	SELECT SUM([Order Details].Quantity * [Order Details].UnitPrice) AS TotalOrderPrice
	FROM Customers 
	INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID 
	INNER JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
	GROUP BY Customers.CustomerID, Customers.CompanyName, Customers.ContactName
) x




