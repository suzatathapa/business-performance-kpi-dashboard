USE BusinessAnalytics;
GO

CREATE VIEW vw_SalesAnalysis AS
SELECT
    Order_ID,
    Order_Date,
    Customer_ID,
    Customer_Name,
    Product,
    Category,
    Region,
    Quantity,
    Unit_Price,
    Discount,
    Cost,

    Quantity * Unit_Price * (1 - Discount) AS Revenue,

    (Quantity * Unit_Price * (1 - Discount))
        - (Quantity * Cost) AS Profit

FROM Sales
WHERE Quantity > 0
  AND Unit_Price >= 0
  AND Cost >= 0
  AND Discount BETWEEN 0 AND 1;
GO
