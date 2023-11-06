WITH UniqueDisasters AS (
  SELECT
    DISTINCT DC.string_field_3 AS UniqueDisasters
  FROM
    `rsp-data-engineering-ii.eu_disaster.DisasterClassification` AS DC
)

SELECT * FROM UniqueDisasters
