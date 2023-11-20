SELECT 
    StartYear,
    SUM(TotalDeaths) AS TotalDeathsPerYear,
    MIN(DisasterMagnitude) AS MinTemp,
    MAX(DisasterMagnitude) AS MaxTemp,
    CAST(AVG(DayDifference) AS INT64) AS AvgDayDifferencePerYear
FROM (
    SELECT 
        StartYear,
        TotalDeaths,
        DisasterMagnitude,
        date_diff(
            DATE(CONCAT(CAST(StartYear AS STRING), '-', CAST(EndMonth AS STRING), '-', CAST(EndDay AS STRING))),
            DATE(CONCAT(CAST(StartYear AS STRING), '-', CAST(StartMonth AS STRING), '-', CAST(StartDay AS STRING))),
            DAY
        ) AS DayDifference
    FROM `rsp-data-engineering-ii.eu_disaster.Disaster` as D
    WHERE D.ClassificationKey = 'nat-met-ext-hea'
) AS Subquery
GROUP BY StartYear
