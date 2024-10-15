WITH SRC AS (
    SELECT * FROM {{ source('pos', 'country') }}
),
TRANSFORMED AS (
    SELECT
        CITY,
        CITY_ID,
        CITY_POPULATION AS POPULATION,
        COUNTRY,
        COUNTRY_ID,
        ISO_COUNTRY,
        ISO_CURRENCY AS CURRENCY
    FROM SRC
    )

SELECT * FROM TRANSFORMED