WITH SRC AS (
    SELECT * FROM {{ source('pos', 'location') }}
),
TRANSFORMED AS (
    SELECT
        UPPER(CITY),
        UPPER(COUNTRY),
        ISO_COUNTRY_CODE,
        UPPER(LOCATION),
        LOCATION_ID,
        PLACEKEY,
        UPPER(REGION)
    FROM SRC
    )

SELECT * FROM TRANSFORMED