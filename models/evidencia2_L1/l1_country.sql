WITH stg_franchise AS (
    SELECT * FROM {{ ref('stg_country') }}
),
deduped AS (
    SELECT * 
    FROM stg_country
    
)

SELECT * FROM deduped