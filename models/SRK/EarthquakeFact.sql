WITH DATETIME AS(
    SELECT *
    FROM {{ref("Dim_DateTime")}}
),

LOCATION AS(
    SELECT *
    FROM{{ref("Dim_Location")}}
),

DETAIL AS(
    SELECT *
    FROM{{ref("Dim_EarthquakeDeatails")}}
),

QUALITY AS(
    SELECT *
    FROM{{ref("Dim_Quality")}}
),

 EarthquakeFactTable AS(
    SELECT
    earthquake_id, 
    magnitude, 
    type, 
    title, 
    date, 
    time, 
    updated, 
    url, 
    detailUrl, 
    felt, 
    cdi, 
    mmi, 
    alert, 
    status, 
    tsunami, 
    sig, 
    net, 
    code, 
    ids, 
    sources, 
    types, 
    nst, 
    dmin, 
    rms, 
    gap, 
    magType, 
    geometryType, 
    depth, 
    latitude, 
    longitude, 
    place, 
    distanceKM, 
    placeOnly, 
    location, 
    continent, 
    country, 
    subnational, 
    city, 
    locality, 
    postcode, 
    what3words, 
    timezone
FROM `rsp-data-engineering-ii.eu_disaster.Earthquake`)

SELECT * FROM EarthquakeFactTable