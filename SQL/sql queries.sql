1. state_infrastructure_summary
-- Phase 12: Complex Air Quality Analysis
WITH StateStats AS (
    -- CTE: State wise average air quality nikalne ke liye
    SELECT 
        state,
        area,
        -- Aggregation: Average check karna
        AVG(number_of_monitoring_stations) OVER(PARTITION BY state) as avg_stations_in_state,
        -- Window Function: Ranking (Ranking areas by monitoring stations)
        RANK() OVER(PARTITION BY state ORDER BY number_of_monitoring_stations DESC) as rank_in_state
    FROM `valued-night-500712-v9.AQI_Data_raw.air_quality_records`
)

SELECT *
FROM StateStats
-- HAVING: Sirf un states ko filter karna jahan avg_stations > 5 hain
WHERE rank_in_state = 1
ORDER BY avg_stations_in_state DESC;

2. top_performing_areas_ranking
SELECT 
    state, 
    COUNT(area) as total_areas, 
    AVG(number_of_monitoring_stations) as avg_stations
FROM `valued-night-500712-v9.AQI_Data_raw.air_quality_records`
GROUP BY state
HAVING avg_stations > 2  -- Sirf wahi states jahan average 2 se zyada stations hain
ORDER BY avg_stations DESC;

3. filtering_high_infrastructure_states
WITH RankedAreas AS (
    SELECT 
        state, 
        area, 
        number_of_monitoring_stations,
        RANK() OVER(PARTITION BY state ORDER BY number_of_monitoring_stations DESC) as rank
    FROM `valued-night-500712-v9.AQI_Data_raw.air_quality_records`
)
SELECT * 
FROM RankedAreas 
WHERE rank = 1
ORDER BY number_of_monitoring_stations DESC;

4. unique_state_area_analysis
WITH RankedAreas AS (
    SELECT DISTINCT
        state, 
        area, 
        number_of_monitoring_stations,
        RANK() OVER(PARTITION BY state ORDER BY number_of_monitoring_stations DESC) as rank
    FROM `valued-night-500712-v9.AQI_Data_raw.air_quality_records`
)
SELECT * 
FROM RankedAreas 
WHERE rank = 1
ORDER BY number_of_monitoring_stations DESC;