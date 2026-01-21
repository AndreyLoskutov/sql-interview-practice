WITH user_stats AS (
    SELECT client_id,
        user_id,
        COUNT(*) AS total_events,
        SUM(
            CASE
                WHEN event_type IN (
                    'video call received',
                    'video call sent',
                    'voice call received',
                    'voice call sent'
                ) THEN 1
                ELSE 0
            END
        ) AS call_events
    FROM fact_event
    GROUP BY client_id,
        user_id
),
eligible_users AS (
    SELECT client_id,
        user_id
    FROM user_stats
    WHERE call_events::numeric / total_events >= 0.5
),
client_counts AS (
    SELECT client_id,
        COUNT(*) AS eligible_user_cnt
    FROM eligible_users
    GROUP BY client_id
)
SELECT client_id,
    eligible_user_cnt
FROM client_counts
ORDER BY eligible_user_cnt DESC,
    client_id
LIMIT 1;