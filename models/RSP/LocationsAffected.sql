SELECT 
  StartYear AS Year, 
  COUNT(Location) AS LocationsAffected
FROM 
  `rsp-data-engineering-ii.eu_disaster.Disaster` AS D
JOIN 
  `rsp-data-engineering-ii.eu_disaster.Location` AS L
ON 
  D.DisasterNum = L.DisasterNo
WHERE 
    D.ClassificationKey = 'nat-met-ext-hea'
GROUP BY D.StartYear