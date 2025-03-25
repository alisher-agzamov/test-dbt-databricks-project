-- models/time_spine.sql
WITH date_range AS (
    SELECT
        DATEADD(day, SEQ4(), DATE '2020-01-01') AS date_day
    FROM TABLE(GENERATOR(ROWCOUNT => 10000))
)
SELECT *
FROM date_range
WHERE date_day <= CURRENT_DATE
