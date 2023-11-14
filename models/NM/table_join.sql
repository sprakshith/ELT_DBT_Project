SELECT *
FROM (
    SELECT *
    FROM rsp-data-engineering-ii.eu_disaster.Disaster AS ds
    JOIN rsp-data-engineering-ii.eu_disaster.DisasterClassification AS dc
        ON ds.ClassificationKey = dc.string_field_0
    JOIN rsp-data-engineering-ii.eu_disaster.Location AS lo
        ON lo.DisasterNo = ds.DisasterNum
) AS loc
JOIN rsp-data-engineering-ii.eu_disaster.FloodAlert AS fa
ON loc.Longitude = fa.longitude
 