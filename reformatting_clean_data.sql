CREATE TABLE `data-cyclistic-capstone.Combined_year_data.cyclistic_reformatted` AS (
  SELECT 
  ride_id, 
  rideable_type,
  started_at,
  ended_at,
  ride_length,
  CASE 
  EXTRACT(MONTH FROM started_at)
    WHEN 1 THEN 'January'
    WHEN 2 THEN 'February'
    WHEN 3 THEN 'March'
    WHEN 4 THEN 'April'
    WHEN 5 THEN 'May'      
    WHEN 6 THEN 'June'
    WHEN 7 THEN 'July'
    WHEN 8 THEN 'August'
    WHEN 9 THEN 'September'
    WHEN 10 THEN 'October'      
    WHEN 11 THEN 'November'
    WHEN 12 THEN 'December'
  END AS ride_month,
  CASE EXTRACT(DAYOFWEEK FROM started_at)
    WHEN 1 THEN 'Sunday'
    WHEN 2 THEN 'Monday'
    WHEN 3 THEN 'Tuesday'
    WHEN 4 THEN 'Wednesday'
    WHEN 5 THEN 'Thursday'
    WHEN 6 THEN 'Friday'
    WHEN 7 THEN 'Saturday'    
  END AS day_of_week,
  start_station_name,
  start_station_id,
  end_station_name,
  end_station_id,
  start_lat,
  start_lng,
  end_lat,
  end_lng,
  member_casual,
FROM `data-cyclistic-capstone.Combined_year_data.cyclistic_year_time`
);
