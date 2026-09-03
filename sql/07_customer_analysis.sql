USE BusinessAnalytics;
GO

-- Customer performance
SELECT
    Customer_ID,
    Customer_Name,
    COUNT(DISTINCT Order_ID) AS Order_Count,
    SUM(Revenue) AS Revenue,
    SUM(Profit) AS Profit
FROM vw_SalesAnalysis
GROUP BY Customer_ID, Customer_Name
ORDER BY Revenue DESC;
GO

-- Top 20 customers by revenue
SELECT TOP 20
    Customer_ID,
    Customer_Name,
    SUM(Revenue) AS Revenue,
    SUM(Profit) AS Profit,
    COUNT(DISTINCT Order_ID) AS Order_Count
FROM vw_SalesAnalysis
GROUP BY Customer_ID, Customer_Name
ORDER BY Revenue DESC;
GO

-- Rank customers by revenue
WITH CustomerRevenue AS
(
    SELECT
        Customer_ID,
        Customer_Name,
        SUM(Revenue) AS Revenue
    FROM vw_SalesAnalysis
    GROUP BY Customer_ID, Customer_Name
)
SELECT
    Customer_ID,
    Customer_Name,
    Revenue,
    RANK() OVER (ORDER BY Revenue DESC) AS Revenue_Rank
FROM CustomerRevenue
ORDER BY Revenue_Rank;
GO
