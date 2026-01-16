WITH employee_customers AS (
    SELECT e.empl_id,
        COUNT(c.cust_id) AS customer_cnt
    FROM map_employee_territory e
        JOIN map_customer_territory c ON e.territory_id = c.territory_id
    GROUP BY e.empl_id
)
SELECT empl_id,
    customer_cnt
FROM (
        SELECT empl_id,
            customer_cnt,
            DENSE_RANK() OVER (
                ORDER BY customer_cnt DESC
            ) AS rnk
        FROM employee_customers
    ) t
WHERE rnk = 1
ORDER BY empl_id;