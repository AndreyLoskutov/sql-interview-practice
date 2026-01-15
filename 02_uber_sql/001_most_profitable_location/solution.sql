--solution 1
SELECT s.location,
    -- 1. Calculate average duration in days
    -- In PostgreSQL, subtracting dates (casted with ::DATE) returns an integer (number of days)
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
--solution 2 CTE
Here is the CTE solution with professional English comments explaining the logic: SQL -- Use a Common Table Expression (CTE) to calculate the duration for each signup first
WITH signup_metrics AS (
    SELECT location,
        signup_id,
        -- Calculate the difference between timestamps in seconds (EPOCH) 
        -- and divide by 86400 (seconds in a day) to get the precise duration in days
        EXTRACT(
            EPOCH
            FROM (signup_stop_date - signup_start_date)
        ) / 86400.0 AS duration_days
    FROM signups
)
SELECT sm.location,
    -- Calculate average duration based on the pre-calculated days
    AVG(sm.duration_days) AS avg_duration_days,
    -- Calculate average transaction amount
    AVG(t.amt) AS avg_transaction_amount,
    -- Calculate the ratio (Avg Transaction / Avg Duration).
    -- NULLIF(..., 0) avoids "division by zero" errors if avg duration is 0.
    -- COALESCE(..., 0) ensures we return 0 instead of NULL if the calculation fails.
    COALESCE(AVG(t.amt) / NULLIF(AVG(sm.duration_days), 0), 0) AS ratio
FROM signup_metrics sm
    JOIN transactions t ON sm.signup_id = t.signup_id
GROUP BY sm.location
ORDER BY ratio DESC;
Why this approach is good: