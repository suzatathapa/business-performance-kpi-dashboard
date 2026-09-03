USE BusinessAnalytics;
GO

-- Total number of records
SELECT COUNT(*) AS Total_Records
FROM Sales;

-- Missing required fields
SELECT
    SUM(CASE WHEN Order_ID IS NULL OR Order_ID = '' THEN 1 ELSE 0 END) AS Missing_Order_ID,
    SUM(CASE WHEN Customer_ID IS NULL OR Customer_ID = '' THEN 1 ELSE 0 END) AS Missing_Customer_ID,
    SUM(CASE WHEN Order_Date IS NULL THEN 1 ELSE 0 END) AS Missing_Order_Date
FROM Sales;

-- Duplicate orders
SELECT
    Order_ID,
    COUNT(*) AS Duplicate_Count
FROM Sales
GROUP BY Order_ID
HAVING COUNT(*) > 1;

-- Invalid quantities
SELECT *
FROM Sales
WHERE Quantity <= 0;

-- Invalid prices
SELECT *
FROM Sales
WHERE Unit_Price < 0
   OR Cost < 0;

-- Invalid discounts
SELECT *
FROM Sales
WHERE Discount < 0
   OR Discount > 1;

-- Date range
SELECT
    MIN(Order_Date) AS Earliest_Order_Date,
    MAX(Order_Date) AS Latest_Order_Date
FROM Sales;

-- Categories
SELECT DISTINCT Category
FROM Sales
ORDER BY Category;

-- Regions
SELECT DISTINCT Region
FROM Sales
ORDER BY Region;
