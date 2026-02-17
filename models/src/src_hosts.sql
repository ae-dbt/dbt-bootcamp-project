{{ config(schema ='src', tags = ["staging"])}}

WITH raw_hosts AS (
    SELECT *
    FROM `dbtbootcamp-project.raw_data_us.raw_hosts`
)
SELECT
    id AS host_id,
    NAME AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    raw_hosts