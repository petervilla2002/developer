WITH stg_franchise AS (
    SELECT * FROM {{ ref('stg_order_header') }}
),
deduped AS (
    SELECT * 
    FROM stg_order_header
)

SELECT * FROM deduped