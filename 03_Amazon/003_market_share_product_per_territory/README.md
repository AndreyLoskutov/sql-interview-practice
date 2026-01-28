# Market Share by Product Brand per Territory (Q4-2021) Amazon (Hard Level)

## Problem
Write a query to find the **Market Share** at the **Product Brand** level for each **Territory** for **Q4-2021**.

Market Share is the number of products of a given brand sold in a territory,
divided by the total number of products sold in that territory.

**Market Share formula:**
(market_share_pct) = (brand_units_sold / territory_units_sold) * 100

Only include product brands that had **at least one sale** in a given territory.

## Return
- `territory_id`
- `prod_brand`
- `market_share_pct`

## SQL dialect
PostgreSQL

## Topics
CTE, joins, group by, window functions, date filtering, arithmetic calculations

## Approach
1. Join sales with territory mapping and product dimension to get `territory_id` and `prod_brand`.
2. Filter sales for Q4-2021 (`2021-10-01` to `2021-12-31`).
3. Aggregate units sold per `territory_id + prod_brand`.
4. Compute total units sold per territory using a window function.
5. Calculate market share percentage and round to 2 decimals.
