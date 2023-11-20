WITH JoinedData AS (
    SELECT
        H.latitude,
        H.longitude,
        H.temperature_2m,
        H.apparent_temperature,
        H.relative_humidity_2m,
        H.wind_speed_10m,
        H.pressure_msl,
        LC.Cluster
    FROM
        `rsp-data-engineering-ii.eu_disaster.HistoricalHeatWave` H
    INNER JOIN
        `rsp-data-engineering-ii.eu_disaster.LocationClustersConnection` LC
    ON
        H.latitude = LC.Latitude AND H.longitude = LC.Longitude
)

, AvgData AS (
    SELECT
        Cluster,
        MAX(temperature_2m) AS max_temperature_2m,
        MAX(apparent_temperature) AS max_apparent_temperature,
        AVG(relative_humidity_2m) AS avg_relative_humidity_2m,
        AVG(wind_speed_10m) AS avg_wind_speed_10m,
        AVG(pressure_msl) AS avg_pressure_msl
    FROM
        JoinedData
    GROUP BY
        Cluster
)


SELECT
    Cluster,
    max_temperature_2m,
    max_apparent_temperature,
    avg_relative_humidity_2m,
    avg_wind_speed_10m,
    avg_pressure_msl
FROM
    AvgData
