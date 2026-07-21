CREATE OR REPLACE TABLE `valued-night-500712-v9.AQI_Data_raw.summary_aqi_stats` AS
SELECT 
    state,
    area,
    AVG(station_count) as avg_stations,
    MAX(station_count) as max_stations,
    MIN(station_count) as min_stations
FROM `valued-night-500712-v9.AQI_Data_raw.cleaned_aqi_records`
GROUP BY state, area;