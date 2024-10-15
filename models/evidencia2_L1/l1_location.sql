WITH stg_franchise AS (
    SELECT * FROM {{ ref('stg_location') }}
),
deduped AS (
    SELECT * 
    FROM stg_location
)

SELECT * FROM deduped