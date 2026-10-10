# DAX measures — UrbanMart

Create these measures in the **Sales** table in Power BI (some may already exist in the packaged semantic model).

```dax
Net Revenue = SUM(Sales[net_amount])

Gross Sales =
SUMX(Sales, Sales[quantity] * Sales[unit_price])

Total Discounts = SUM(Sales[discount_amount])

Estimated COGS =
SUMX(Sales, Sales[quantity] * RELATED(Products[cost_price]))

Estimated Gross Profit = [Net Revenue] - [Estimated COGS]

Estimated Profit Margin % =
DIVIDE([Estimated Gross Profit], [Net Revenue])

Transactions = DISTINCTCOUNT(Sales[transaction_id])

Units Sold = SUM(Sales[quantity])

Customers = DISTINCTCOUNT(Sales[customer_id])

Average Order Value = DIVIDE([Net Revenue], [Transactions])

Discount Rate % = DIVIDE([Total Discounts], [Gross Sales])

Low Stock Products =
COUNTROWS(
    FILTER(
        Products,
        Products[stock_quantity] <= Products[reorder_level]
    )
)
```

**Model relationship:** `Products[product_id]` (one) → `Sales[product_id]` (many), single filter direction.

**Important caveats:** Reference unit cost is not actual booked transaction COGS. Stock quantities are a current snapshot rather than historical stock at transaction time. This one-year dataset does not justify year-over-year growth measures.
