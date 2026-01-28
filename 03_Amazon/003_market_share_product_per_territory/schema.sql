DROP TABLE IF EXISTS fct_customer_sales;
DROP TABLE IF EXISTS map_customer_territory;
DROP TABLE IF EXISTS dim_product;
CREATE TABLE fct_customer_sales (
    cust_id VARCHAR(50),
    prod_sku_id VARCHAR(50),
    order_date TIMESTAMP,
    order_value BIGINT,
    order_id VARCHAR(50)
);
CREATE TABLE map_customer_territory (
    cust_id VARCHAR(50),
    territory_id VARCHAR(50)
);
CREATE TABLE dim_product (
    prod_sku_id VARCHAR(50),
    prod_sku_name VARCHAR(255),
    prod_brand VARCHAR(100),
    market_name VARCHAR(100)
);