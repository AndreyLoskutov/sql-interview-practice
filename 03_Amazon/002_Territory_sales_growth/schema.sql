CREATE TABLE fct_customer_sale (
    cust_id VARCHAR(50),
    prod_sku_id VARCHAR(50),
    order_date TIMESTAMP,
    order_value BIGINT,
    order_id VARCHAR(50)
);
CREATE TABLE map_customer_territories (
    cust_id VARCHAR(50),
    territory_id VARCHAR(50)
);