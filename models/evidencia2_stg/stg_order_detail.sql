WITH SRC AS (
    SELECT * FROM {{ source('pos', 'order_detail') }}
),
TRANSFORMED AS (
    SELECT
        DISCOUNT_ID,
        LINE_NUMBER,
        MENU_ITEM_ID,
        ORDER_DETAIL_ID,
        ORDER_ID,
        ORDER_ITEM_DISCOUNT_AMOUNT,
        PRICE,
        QUANTITY,
        UNIT_PRICE
    FROM SRC
    )

SELECT * FROM TRANSFORMED