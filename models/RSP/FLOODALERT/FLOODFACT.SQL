WITH Location_Flood AS (
    SELECT * FROM {{ ref("_stg_location") }}
),
 
Datetime_Flood AS (
    SELECT * FROM {{ ref("_stg_rdate") }}
),
 
FloodAlertFact AS (
    SELECT *
    FROM rsp-data-engineering-ii.eu_disaster.FloodAlert
)
 
SELECT * FROM FloodAlertFact