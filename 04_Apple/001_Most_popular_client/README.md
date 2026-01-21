# Most Popular Client (Apple / Microsoft — Hard)

## Problem
Identify the **most popular client_id** based on the number of users whose activity
consists of **at least 50% call-related events**.

Call-related events include:
- `video call received`
- `video call sent`
- `voice call received`
- `voice call sent`

A user is considered **eligible** if at least **50% of their events** belong to the list above.

The goal is to:
1. Identify eligible users per client
2. Count eligible users per client
3. Return the client with the **highest eligible user count**

---

## SQL Dialect
PostgreSQL

## Topics
- CTEs
- Conditional aggregation
- Grouping at multiple levels
- Ratio-based filtering
- Business logic in SQL

---

## Approach

1. **Aggregate events per user and client**
   - Count total events
   - Count call-related events using conditional aggregation

2. **Determine eligible users**
   - Calculate the ratio:
     ```
     call_events / total_events
     ```
   - Keep users where the ratio is **>= 0.5**

3. **Aggregate at client level**
   - Count eligible users per client

4. **Select the most popular client**
   - Order by eligible user count (descending)
   - Return the top result

---

## Expected output (approx)

 client_id | eligible_user_cnt 
-----------+-------------------
 CL1       |                 2