-- models/time_spine.sql
WITH dates AS (
    SELECT
        DATEADD(day, seq4(), DATE('2010-01-01')) AS date_day
    FROM TABLE(GENERATOR(ROWCOUNT => 5000))
)

SELECT
    date_day
FROM dates
