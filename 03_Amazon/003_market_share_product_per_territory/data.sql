INSERT INTO fct_customer_sales (
        cust_id,
        prod_sku_id,
        order_date,
        order_value,
        order_id
    )
VALUES ('C001', 'P001', '2021-10-15', 100, 'O1001'),
    ('C002', 'P002', '2021-11-20', 200, 'O1002'),
    ('C003', 'P003', '2021-12-05', 150, 'O1003'),
    ('C001', 'P002', '2021-12-10', 300, 'O1004'),
    ('C002', 'P001', '2021-11-18', 250, 'O1005');
INSERT INTO map_customer_territory (cust_id, territory_id)
VALUES ('C001', 'T001'),
    ('C002', 'T002'),
    ('C003', 'T001');
INSERT INTO dim_product (
        prod_sku_id,
        prod_sku_name,
        prod_brand,
        market_name
    )
VALUES ('P001', 'Product A', 'Brand X', 'Market 1'),
    ('P002', 'Product B', 'Brand Y', 'Market 2'),
    ('P003', 'Product C', 'Brand X', 'Market 1');