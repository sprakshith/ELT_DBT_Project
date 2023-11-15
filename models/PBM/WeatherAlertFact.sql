WITH Location AS (
    SELECT * FROM {{ ref("_dim_location") }}
),
Datetime AS (
    SELECT * FROM {{ ref("_dim_datetime") }}
),
Details AS (
    SELECT * FROM {{ ref("_dim_details") }}
),
WeatherAlert AS (
    SELECT *
    FROM `rsp-data-engineering-ii.eu_disaster.SevereWeather`
)
SELECT *
FROM WeatherAlert
