-- models/users/users_cleaned.sql
SELECT
    id,
    name,
    LOWER(email) AS email,
    birthdate
FROM {{ source('test_schema', 'USERS') }}
