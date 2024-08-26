SELECT OrderDate, SUM(TotalAmount) AS TotalSales
FROM Orders 
WHERE OrderDate = '2024-08-01'
GROUP BY OrderDate;
