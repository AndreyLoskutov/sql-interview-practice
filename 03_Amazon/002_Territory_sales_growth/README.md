# Territory Sales Growth (Amazon – Hard)

## Problem
Write a query to calculate **sales growth per territory** by comparing  
**Q4-2021 vs Q3-2021**.

Sales Growth formula:
((sales_q4 - sales_q3) / sales_q3) * 100

Only include territories that had **sales in both quarters**.

## Return
- `territory_id`
- `sales_growth_pct`

## SQL dialect
PostgreSQL

## Topics
CTE, joins, conditional aggregation, date filtering, arithmetic calculations

## Approach

1. Join sales with territories using cust_id.
2. Aggregate total sales per territory_id for Q3-2021 and Q4-2021 using conditional aggregation.
3. Exclude territories with missing sales in either quarter.
4. Calculate percentage sales growth using the provided formula.