SELECT 
    H.date, 
    H.temperature_2m, 
    H.apparent_temperature, 
    H.relative_humidity_2m, 
    H.wind_speed_10m, 
    H.pressure_msl, 
    H.surface_pressure, 
    H.cloud_cover, 
    H.location, 
    H.latitude, 
    H.longitude, 
    D.DisasterId, 
    D.DisasterNum, 
    D.ClassificationKey, 
    D.ISOCode, 
    D.DisasterMagnitude, 
    D.StartYear, 
    D.StartMonth, 
    D.StartDay, 
    D.EndYear, 
    D.EndMonth, 
    D.EndDay, 
    D.TotalDeaths, 
    D.TotalAffected,
    C.string_field_1 as Continent,
	C.string_field_2 as Region,
	C.string_field_3 as Country,
FROM 
    `rsp-data-engineering-ii.eu_disaster.HistoricalExtTemp` H
JOIN 
    `rsp-data-engineering-ii.eu_disaster.Disaster` AS D ON H.disaster_num = D.DisasterNum
JOIN 
    `rsp-data-engineering-ii.eu_disaster.Country` AS C ON D.ISOCode = C.string_field_0
WHERE 
    D.ClassificationKey = 'nat-met-ext-hea'
