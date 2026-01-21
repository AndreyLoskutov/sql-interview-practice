INSERT INTO fact_event (
        id,
        time_id,
        user_id,
        customer_id,
        client_id,
        event_type,
        event_id
    )
VALUES (
        1,
        '2024-02-01 10:00:00',
        'U1',
        'C1',
        'CL1',
        'video call received',
        101
    ),
    (
        2,
        '2024-02-01 10:05:00',
        'U1',
        'C1',
        'CL1',
        'video call sent',
        102
    ),
    (
        3,
        '2024-02-01 10:10:00',
        'U1',
        'C1',
        'CL1',
        'message sent',
        103
    ),
    (
        4,
        '2024-02-01 11:00:00',
        'U2',
        'C2',
        'CL2',
        'voice call received',
        104
    ),
    (
        5,
        '2024-02-01 11:10:00',
        'U2',
        'C2',
        'CL2',
        'voice call sent',
        105
    ),
    (
        6,
        '2024-02-01 11:20:00',
        'U2',
        'C2',
        'CL2',
        'message received',
        106
    ),
    (
        7,
        '2024-02-01 12:00:00',
        'U3',
        'C3',
        'CL1',
        'video call sent',
        107
    ),
    (
        8,
        '2024-02-01 12:15:00',
        'U3',
        'C3',
        'CL1',
        'voice call received',
        108
    ),
    (
        9,
        '2024-02-01 12:30:00',
        'U3',
        'C3',
        'CL1',
        'voice call sent',
        109
    ),
    (
        10,
        '2024-02-01 12:45:00',
        'U3',
        'C3',
        'CL1',
        'video call received',
        110
    );