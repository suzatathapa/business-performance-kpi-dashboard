USE BusinessAnalytics;
GO

CREATE TABLE Sales (
    Order_ID VARCHAR(50),
    Order_Date DATE,
    Customer_ID VARCHAR(50),
    Customer_Name VARCHAR(150),
    Product VARCHAR(150),
    Category VARCHAR(100),
    Region VARCHAR(100),
    Quantity INT,
    Unit_Price DECIMAL(12,2),
    Discount DECIMAL(5,4),
    Cost DECIMAL(12,2)
);
GO
