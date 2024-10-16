SWITH l1_franchise AS (
SELECT * FROM {{ ref('l1_franchises') }}
),
deduped AS (
SELECT *
FROM l1_franchise
)

SELECT * FROM dedupedELECT * franchise
