USE BusinessAnalytics;
GO

-- Overall business KPIs
SELECT
    SUM(Revenue) AS Total_Revenue,
    SUM(Profit) AS Total_Profit,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    COUNT(DISTINCT Customer_ID) AS Total_Customers,
    SUM(Quantity) AS Total_Units_Sold
FROM vw_SalesAnalysis;
GO

-- Overall profit margin
SELECT
    SUM(Profit) / NULLIF(SUM(Revenue), 0) AS Overall_Profit_Margin
FROM vw_SalesAnalysis;
GO

-- Average order value
SELECT
    SUM(Revenue) / NULLIF(COUNT(DISTINCT Order_ID), 0) AS Average_Order_Value
FROM vw_SalesAnalysis;
GO

-- Revenue and profit by region
SELECT
    Region,
    SUM(Revenue) AS Revenue,
    SUM(Profit) AS Profit,
    COUNT(DISTINCT Order_ID) AS Orders
FROM vw_SalesAnalysis
GROUP BY Region
ORDER BY Revenue DESC;
GO
