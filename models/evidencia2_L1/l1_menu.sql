WITH stg_franchise AS (
    SELECT * FROM {{ ref('stg_menu') }}
),
deduped AS (
    SELECT * 
    FROM stg_menu
)

SELECT * FROM deduped