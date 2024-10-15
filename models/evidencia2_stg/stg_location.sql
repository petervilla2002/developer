WITH SRC AS (
    SELECT * FROM {{ source('pos', 'location') }}
),
TRANSFORMED AS (
    SELECT
        CITY,
        COUNTRY,
        ISO_COUNTRY_CODE,
        LOCATION,
        LOCATION_ID,
        PLACEKEY,
        REGION
    FROM SRC
    )

SELECT * FROM TRANSFORMED