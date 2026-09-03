USE BusinessAnalytics;
GO

-- Product performance
SELECT
    Product,
    Category,
    SUM(Revenue) AS Revenue,
    SUM(Profit) AS Profit,
    SUM(Quantity) AS Units_Sold,
    COUNT(DISTINCT Order_ID) AS Orders
FROM vw_SalesAnalysis
GROUP BY Product, Category
ORDER BY Revenue DESC;
GO

-- Top 10 products by revenue
SELECT TOP 10
    Product,
    SUM(Revenue) AS Revenue,
    SUM(Profit) AS Profit
FROM vw_SalesAnalysis
GROUP BY Product
ORDER BY Revenue DESC;
GO

-- Category performance
SELECT
    Category,
    SUM(Revenue) AS Revenue,
    SUM(Profit) AS Profit,
    SUM(Quantity) AS Units_Sold
FROM vw_SalesAnalysis
GROUP BY Category
ORDER BY Revenue DESC;
GO
