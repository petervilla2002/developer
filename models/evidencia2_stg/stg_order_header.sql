WITH SRC AS (
    SELECT * FROM {{ source('pos', 'order_header') }}
),
TRANSFORMED AS (
    SELECT
        CUSTOMER_ID,
        DISCOUNT_ID,
        LOCATION_ID,
        ORDER_AMOUNT,
        ORDER_CHANNEL,
        ORDER_CURRENCY,
        ORDER_DISCOUNT_AMOUNT,
        ORDER_ID,
        ORDER_TAX_AMOUNT,
        ORDER_TOTAL,
        ORDER_TS,
        SERVED_TS,
        SHIFT_END_TIME,
        SHIFT_ID,
        SHIFT_START_TIME,
        TRUCK_ID
    FROM SRC
    )

SELECT * FROM TRANSFORMED