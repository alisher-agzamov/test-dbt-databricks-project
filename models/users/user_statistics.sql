-- models/users/user_statistics.sql
SELECT
    COUNT(*) AS total_users,
    MIN(birthdate) AS youngest_user,
    MAX(birthdate) AS oldest_user
FROM {{ ref('users_cleaned') }}