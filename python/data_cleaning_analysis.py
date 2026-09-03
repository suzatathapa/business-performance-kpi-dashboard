import pandas as pd
import numpy as np

# Load raw data
df = pd.read_csv("../data/raw/sales_data.csv")

print("Dataset shape:", df.shape)

print("\nColumn information:")
print(df.info())

print("\nMissing values:")
print(df.isnull().sum())

# Remove duplicate records
df = df.drop_duplicates()

# Convert date field
df["Order_Date"] = pd.to_datetime(
    df["Order_Date"],
    errors="coerce"
)

# Convert numeric fields
numeric_columns = [
    "Quantity",
    "Unit_Price",
    "Discount",
    "Cost"
]

for column in numeric_columns:
    df[column] = pd.to_numeric(
        df[column],
        errors="coerce"
    )

# Data quality filtering
df = df[
    (df["Quantity"] > 0) &
    (df["Unit_Price"] >= 0) &
    (df["Cost"] >= 0) &
    (df["Discount"].between(0, 1))
]

# Remove records missing required fields
df = df.dropna(
    subset=[
        "Order_ID",
        "Order_Date",
        "Customer_ID"
    ]
)

# Calculate business metrics
df["Revenue"] = (
    df["Quantity"]
    * df["Unit_Price"]
    * (1 - df["Discount"])
)

df["Profit"] = (
    df["Revenue"]
    - (df["Quantity"] * df["Cost"])
)

df["Profit_Margin"] = np.where(
    df["Revenue"] != 0,
    df["Profit"] / df["Revenue"],
    0
)

# Monthly summary
monthly_summary = (
    df.groupby(
        df["Order_Date"].dt.to_period("M")
    )
    .agg(
        Revenue=("Revenue", "sum"),
        Profit=("Profit", "sum"),
        Orders=("Order_ID", "nunique")
    )
    .reset_index()
)

# Save cleaned dataset
df.to_csv(
    "../data/cleaned/sales_cleaned.csv",
    index=False
)

# Save monthly summary
monthly_summary.to_csv(
    "../data/cleaned/monthly_summary.csv",
    index=False
)

print("\nCleaning complete.")
print("Cleaned dataset shape:", df.shape)

print("\nMonthly summary:")
print(monthly_summary.head())

# Top 10 products
top_products = (
    df.groupby("Product")
    .agg(
        Revenue=("Revenue", "sum"),
        Profit=("Profit", "sum")
    )
    .sort_values(
        "Revenue",
        ascending=False
    )
    .head(10)
)

print("\nTop 10 Products:")
print(top_products)

# Regional performance
regional_summary = (
    df.groupby("Region")
    .agg(
        Revenue=("Revenue", "sum"),
        Profit=("Profit", "sum"),
        Orders=("Order_ID", "nunique")
    )
    .sort_values(
        "Revenue",
        ascending=False
    )
)

print("\nRegional Performance:")
print(regional_summary)
