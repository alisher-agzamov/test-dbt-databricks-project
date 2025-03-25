-- models/time_spine.sql
WITH dates AS (
    SELECT
        DATEADD(DAY, seq4(), DATE('2010-01-01')) AS date_day
    FROM TABLE(GENERATOR(ROWCOUNT => 5000))
)

SELECT
    date_day,
    TO_CHAR(date_day, 'YYYY-MM') AS date_month,
    TO_CHAR(date_day, 'YYYY') AS date_year
FROM dates
