# Data Dictionary

## Sales Dataset

| Field | Data Type | Description |
|---|---|---|
| Order_ID | VARCHAR | Unique identifier for each sales order |
| Order_Date | DATE | Date the order was placed |
| Customer_ID | VARCHAR | Unique identifier for the customer |
| Customer_Name | VARCHAR | Customer name |
| Product | VARCHAR | Product purchased |
| Category | VARCHAR | Product category |
| Region | VARCHAR | Geographic sales region |
| Quantity | INT | Number of units purchased |
| Unit_Price | DECIMAL | Price per unit before discount |
| Discount | DECIMAL | Discount applied to the order, represented as a decimal |
| Cost | DECIMAL | Cost per unit |

## Calculated Fields

| Field | Description |
|---|---|
| Revenue | Quantity × Unit Price × (1 − Discount) |
| Profit | Revenue − (Quantity × Cost) |
| Profit_Margin | Profit ÷ Revenue |

## Data Quality Rules

The analysis excludes records where:

- Quantity is less than or equal to zero
- Unit price is negative
- Cost is negative
- Discount is outside the range of 0 to 1
- Order ID is missing
- Customer ID is missing
- Order date is missing

## Source

This is a sample portfolio dataset created for demonstration and analytics practice. It does not contain real customer or company data.
