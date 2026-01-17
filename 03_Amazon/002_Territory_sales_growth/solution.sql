WITH quarterly_sales AS (
    SELECT t.territory_id,
        EXTRACT(
            YEAR
            FROM s.order_date
        ) AS yr,
        EXTRACT(
            QUARTER
            FROM s.order_date
        ) AS qtr,
        SUM(s.order_value) AS total_sales
    FROM fct_customer_sale s
        JOIN map_customer_territories t ON s.cust_id = t.cust_id
    WHERE s.order_date >= '2021-07-01'
        AND s.order_date < '2022-01-01'
    GROUP BY t.territory_id,
        EXTRACT(
            YEAR
            FROM s.order_date
        ),
        EXTRACT(
            QUARTER
            FROM s.order_date
        )
),
lagged AS (
    SELECT territory_id,
        qtr,
        total_sales,
        LAG(total_sales) OVER (
            PARTITION BY territory_id
            ORDER BY qtr
        ) AS prev_quarter_sales
    FROM quarterly_sales
    WHERE yr = 2021
)
SELECT territory_id,
    ROUND(
        ((total_sales - prev_quarter_sales) * 100.0) / NULLIF(prev_quarter_sales, 0),
        2
    ) AS sales_growth_pct
FROM lagged
WHERE qtr = 4
    AND prev_quarter_sales IS NOT NULL
ORDER BY territory_id;