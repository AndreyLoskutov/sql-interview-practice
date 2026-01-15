WITH ranked_trips AS (
    SELECT
        traveler,
        start_city,
        end_city,
        date,
        ROW_NUMBER() OVER (PARTITION BY traveler ORDER BY date ASC)  AS trip_start,
        ROW_NUMBER() OVER (PARTITION BY traveler ORDER BY date DESC) AS trip_end
    FROM travel_history
),
first_last_cities AS (
    SELECT
        traveler,
        MAX(CASE WHEN trip_start = 1 THEN start_city END) AS home_city,
        MAX(CASE WHEN trip_end = 1 THEN end_city END)     AS final_city
    FROM ranked_trips
    GROUP BY traveler
)
SELECT
    COUNT(*) AS travelers_back_home
FROM first_last_cities
WHERE home_city = final_city;
