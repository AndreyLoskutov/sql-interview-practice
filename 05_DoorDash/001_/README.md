# 👥 Employees with Maximum Customers (Amazon — Medium)

## 🧠 Problem

Each employee is assigned to **one territory** and is responsible for  
**all customers** within that territory.

Multiple employees may belong to the same territory.

Your task is to find the **employee(s)** responsible for the **maximum number of customers**.

---

## 📌 Return

- `empl_id`
- `customer_cnt`

---

## 🛠 SQL Dialect

PostgreSQL

---

## 📚 Topics

CTE, joins, aggregations, window functions

---

## 🚀 Approach

1. Join employees with customers using `territory_id`.
2. Count the number of customers per employee.
3. Rank employees by customer count in descending order.
4. Select employee(s) with the highest customer count.
