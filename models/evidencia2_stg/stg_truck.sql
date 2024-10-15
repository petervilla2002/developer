WITH SRC AS (
    SELECT * FROM {{ source('pos', 'truck') }}
),
TRANSFORMED AS (
    SELECT
        COUNTRY,
        EV_FLAG,
        FRANCHISE_FLAG,
        FRANCHISE_ID,
        ISO_COUNTRY_CODE,
        ISO_REGION,
        MAKE,
        MENU_TYPE_ID,
        MODEL,
        PRIMARY_CITY,
        REGION,
        TRUCK_ID,
        TRUCK_OPENING_DATE,
        YEAR
    FROM SRC
    )

SELECT * FROM TRANSFORMED