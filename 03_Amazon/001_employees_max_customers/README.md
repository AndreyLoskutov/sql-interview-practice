# Employees with Maximum Customers (Amazon – Medium)

## Problem
Each employee is assigned to **one territory** and is responsible for **all customers** in that territory.  
Multiple employees may belong to the same territory.

Find the employee(s) responsible for the **maximum number of customers**.

### Return:
- `empl_id`
- `customer_cnt`

---

## SQL dialect
PostgreSQL

## Topics
CTE, joins, aggregations, window functions

---

## Approach
1. Join employees with customers on `territory_id`.
2. Count customers per employee.
3. Rank employees by customer count.
4. Select employee(s) with the highest count.