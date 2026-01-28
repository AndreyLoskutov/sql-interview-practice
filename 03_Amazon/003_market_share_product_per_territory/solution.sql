WITH sales_data AS (
    SELECT t.territory_id,
        p.prod_brand,
        COUNT(*) AS brand_units_sold
    FROM fct_customer_sales s
        JOIN map_customer_territory t ON t.cust_id = s.cust_id
        JOIN dim_product p ON p.prod_sku_id = s.prod_sku_id
    WHERE s.order_date >= DATE '2021-10-01'
        AND s.order_date < DATE '2022-01-01'
    GROUP BY t.territory_id,
        p.prod_brand
),
market_share AS (
    SELECT territory_id,
        prod_brand,
        brand_units_sold,
        SUM(brand_units_sold) OVER (PARTITION BY territory_id) AS territory_units_sold
    FROM sales_data
)
SELECT territory_id,
    prod_brand,
    ROUND(
        100.0 * brand_units_sold / territory_units_sold,
        2
    ) AS market_share_pct
FROM market_share
ORDER BY territory_id,
    market_share_pct DESC,
    prod_brand;