USE BusinessAnalytics;
GO

-- Monthly revenue, profit, and orders
SELECT
    YEAR(Order_Date) AS Order_Year,
    MONTH(Order_Date) AS Order_Month,
    SUM(Revenue) AS Revenue,
    SUM(Profit) AS Profit,
    COUNT(DISTINCT Order_ID) AS Orders
FROM vw_SalesAnalysis
GROUP BY
    YEAR(Order_Date),
    MONTH(Order_Date)
ORDER BY
    Order_Year,
    Order_Month;
GO

-- Year-over-year revenue comparison
WITH MonthlySales AS
(
    SELECT
        YEAR(Order_Date) AS Order_Year,
        MONTH(Order_Date) AS Order_Month,
        SUM(Revenue) AS Revenue
    FROM vw_SalesAnalysis
    GROUP BY
        YEAR(Order_Date),
        MONTH(Order_Date)
)
SELECT
    Order_Year,
    Order_Month,
    Revenue,
    LAG(Revenue) OVER (
        PARTITION BY Order_Month
        ORDER BY Order_Year
    ) AS Previous_Year_Revenue
FROM MonthlySales
ORDER BY
    Order_Year,
    Order_Month;
GO
