# Most Profitable Location (Uber Hard)

## Problem Find the most profitable location by comparing:
- average signup duration (in days)
- average transaction amount
- ratio = avg_transaction_amount / avg_duration_days

Return: `location`, `avg_duration_days`, `avg_transaction_amount`, `ratio`  
Sort by `ratio` descending.

**SQL dialect:** PostgreSQL  
**Topics:** CTE, joins, aggregations, safe division (`NULLIF`, `COALESCE`)

---

## Approach
1. Compute `duration_days` per signup as:
   - `(signup_stop_date - signup_start_date)` → interval  
   - convert to days via `EXTRACT(EPOCH ...) / 86400.0`
2. Join transactions to signups.
3. Aggregate by `location` and compute the ratio.
4. Use `NULLIF` to avoid division by zero.


## Expected output (approx)
| location      | avg_duration_days | avg_transaction_amount | ratio   |
| ------------- | ----------------- | ---------------------- | ------- |
| New York      | 28.5              | 233.75                 | 8.2018  |
| Los Angeles   | 10.0              | 275.00                 | 27.5000 |
| San Francisco | 31.0              | 150.00                 | 4.8387  |