WITH stg_franchise AS (
    SELECT * FROM {{ ref('stg_truck') }}
),
deduped AS (
    SELECT * 
    FROM stg_truck
)

SELECT * FROM deduped