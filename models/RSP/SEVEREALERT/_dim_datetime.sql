SELECT
        id as alert_id,
        duration,
        start,
        ended,
        updated,
        first_seen,
        timezone
    FROM `rsp-data-engineering-ii.eu_disaster.SevereWeather`