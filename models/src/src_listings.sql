{{ config(schema ='src', tags = ["staging"])}}

WITH raw_listings AS (
    SELECT * FROM `dbtbootcamp-project.raw_data_us.raw_listings`
)
SELECT 
	id AS listing_id,
    name AS listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    price AS price_str,
    created_at,
    updated_at
FROM
	raw_listings