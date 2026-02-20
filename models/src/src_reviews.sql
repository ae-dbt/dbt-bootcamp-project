{{ config(schema ='src', tags = ["staging"])}}

WITH raw_reviews AS (
    SELECT *
    FROM {{ source('dbtbootcamp-project', 'reviews') }}
)
SELECT
    listing_id,
    DATE AS review_date,
    reviewer_name,
    comments AS review_text,
    sentiment AS review_sentiment
FROM
    raw_reviews