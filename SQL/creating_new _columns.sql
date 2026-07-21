CREATE OR REPLACE TABLE `valued-night-500712-v9.AQI_Data_raw.enriched_aqi_data` AS
SELECT 
    *,
    -- Feature 1: Station Category
    CASE 
        WHEN station_count < 5 THEN 'Low'
        WHEN station_count BETWEEN 5 AND 20 THEN 'Medium'
        ELSE 'High'
    END as station_category,
    
    -- Feature 2: Is Weekend (1 for weekend, 0 for weekday)
    IF(EXTRACT(DAYOFWEEK FROM date) IN (1, 7), 1, 0) as is_weekend
FROM `valued-night-500712-v9.AQI_Data_raw.cleaned_aqi_records`;