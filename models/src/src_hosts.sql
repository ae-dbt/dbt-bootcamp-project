{{ config(schema ='src', tags = ["staging"])}}

WITH raw_hosts AS (
    SELECT *
    FROM {{ source('dbtbootcamp-project', 'hosts') }}
)
SELECT
    id AS host_id,
    NAME AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    raw_hosts