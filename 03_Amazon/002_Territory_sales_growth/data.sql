INSERT INTO fct_customer_sale (
        cust_id,
        prod_sku_id,
        order_date,
        order_value,
        order_id
    )
VALUES ('C001', 'P100', '2021-07-15', 100, 'O1001'),
    ('C002', 'P101', '2021-07-20', 200, 'O1002'),
    ('C001', 'P100', '2021-10-05', 150, 'O1003'),
    ('C002', 'P101', '2021-10-10', 250, 'O1004'),
    ('C003', 'P102', '2021-08-22', 180, 'O1005'),
    ('C003', 'P102', '2021-11-30', 210, 'O1006');
INSERT INTO map_customer_territories (cust_id, territory_id)
VALUES ('C001', 'T001'),
    ('C002', 'T002'),
    ('C003', 'T003');