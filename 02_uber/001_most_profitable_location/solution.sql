--solution 1
SELECT s.location,
    -- 1. Calculate average duration in days
    AVG(
        s.signup_stop_date::DATE - s.signup_start_date::DATE
    ) AS average_duration,
    -- 2. Calculate average transaction amount
    AVG(t.amt) AS average_transaction_amount,
    -- 3. Calculate the Ratio: (Avg Transaction Amount) / (Avg Duration)
    AVG(t.amt) / AVG(
        s.signup_stop_date::DATE - s.signup_start_date::DATE
    ) AS ratio
FROM signups s
    JOIN transactions t ON s.signup_id = t.signup_id
GROUP BY s.location
ORDER BY ratio DESC;