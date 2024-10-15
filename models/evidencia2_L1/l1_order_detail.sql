WITH stg_franchise AS (
    SELECT * FROM {{ ref('stg_order_detail') }}
),
deduped AS (
    SELECT * 
    FROM stg_order_detail
)

SELECT * FROM deduped