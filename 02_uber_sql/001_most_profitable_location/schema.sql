DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS signups;
CREATE TABLE signups (
    signup_id BIGINT PRIMARY KEY,
    plan_id BIGINT,
    location VARCHAR(100),
    signup_start_date TIMESTAMP,
    signup_stop_date TIMESTAMP
);
CREATE TABLE transactions (
    transaction_id BIGINT PRIMARY KEY,
    signup_id BIGINT NOT NULL,
    amt NUMERIC(12, 2),
    transaction_start_date TIMESTAMP,
    CONSTRAINT fk_transactions_signup FOREIGN KEY (signup_id) REFERENCES signups (signup_id)
);
CREATE INDEX idx_transactions_signup_id ON transactions (signup_id);