TRUNCATE TABLE transactions;
TRUNCATE TABLE signups;
INSERT INTO signups (
        location,
        plan_id,
        signup_id,
        signup_start_date,
        signup_stop_date
    )
VALUES ('New York', 101, 1, '2025-01-01', '2025-01-31'),
    (
        'San Francisco',
        102,
        2,
        '2025-01-05',
        '2025-02-05'
    ),
    (
        'Los Angeles',
        103,
        3,
        '2025-01-10',
        '2025-01-20'
    ),
    ('New York', 104, 4, '2025-02-01', '2025-02-28'),
    (
        'Los Angeles',
        105,
        5,
        '2025-01-15',
        '2025-01-25'
    );
INSERT INTO transactions (
        amt,
        signup_id,
        transaction_id,
        transaction_start_date
    )
VALUES (100.50, 1, 1001, '2025-01-10'),
    (200.75, 1, 1002, '2025-01-20'),
    (150.00, 2, 1003, '2025-01-15'),
    (300.00, 3, 1004, '2025-01-12'),
    (400.00, 4, 1005, '2025-02-15'),
    (250.00, 5, 1006, '2025-01-20');