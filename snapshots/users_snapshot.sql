{% snapshot users_snapshot %}

{{
    config(
        target_schema='test_schema',
        unique_key='id',
        strategy='check',
        check_cols=['name', 'email', 'birthdate']
    )
}}

SELECT
    id,
    name,
    email,
    birthdate
FROM {{ source('test_schema', 'USERS') }}

    {% endsnapshot %}
