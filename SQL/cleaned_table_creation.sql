CREATE OR REPLACE TABLE `valued-night-500712-v9.AQI_Data_raw.cleaned_aqi_records` AS
SELECT DISTINCT
    SAFE_CAST(date AS DATE) as date,
    TRIM(state) as state,
    TRIM(area) as area,
    CAST(number_of_monitoring_stations AS INTEGER) as station_count
FROM `valued-night-500712-v9.AQI_Data_raw.air_quality_records`
WHERE state IS NOT NULL 
AND area IS NOT NULL;