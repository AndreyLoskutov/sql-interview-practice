CREATE TABLE fact_event (
    id BIGINT PRIMARY KEY,
    time_id TIMESTAMP,
    user_id VARCHAR(50),
    customer_id VARCHAR(50),
    client_id VARCHAR(50),
    event_type VARCHAR(50),
    event_id BIGINT
);