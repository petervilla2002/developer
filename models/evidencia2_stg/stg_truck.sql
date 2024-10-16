WITH SRC AS (
    SELECT * FROM {{ source('pos', 'truck') }}
),
TRANSFORMED AS (
    SELECT
        UPPER(COUNTRY),
        EV_FLAG,
        FRANCHISE_FLAG,
        FRANCHISE_ID,
        UPPER(ISO_COUNTRY_CODE),
        UPPER(ISO_REGION),
        UPPER(MAKE),
        MENU_TYPE_ID,
        UPPER(MODEL),
        UPPER(PRIMARY_CITY),
        UPPER(REGION),
        TRUCK_ID,
        TRUCK_OPENING_DATE,
        YEAR
    FROM SRC
    )

SELECT * FROM TRANSFORMED