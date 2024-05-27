--searching for test, or not applicable data
--19 case results

SELECT 
  ride_length, rideable_type, member_casual, ride_id,start_station_id, start_station_name, end_station_id, end_station_name
FROM 
  `data-cyclistic-capstone.files_by_month.cyclistic_data`
WHERE 
 rideable_type IS NOT NULL
AND member_casual IS NOT NULL
AND ride_id IS NOT NULL
AND start_station_id IS NOT NULL
AND start_station_name IS NOT NULL
AND end_station_id IS NOT NULL
AND end_station_name IS NOT NULL
AND ride_length  LIKE '% %'
AND rideable_type  LIKE '% %'
AND member_casual  LIKE '% %'
AND ride_id  LIKE '% %'
AND start_station_id  LIKE '% %'
AND start_station_name  LIKE '% %'
AND end_station_id  LIKE '% %'
AND end_station_name  LIKE '% %'

--no spaces found

--searching for test, or not applicable data
--19 case results

SELECT
  start_station_id, end_station_id
FROM 
  `data-cyclistic-capstone.files_by_month.cyclistic_data`
WHERE 
  start_station_id LIKE '%Test%'
  OR start_station_id LIKE '%test%'
  OR end_station_id LIKE '%Test%'
  OR end_station_id LIKE '%test%'

--delete the test values

DELETE FROM 
  `data-cyclistic-capstone.files_by_month.cyclistic_data` 
WHERE 
  start_station_id = "OH Charging Stx - Test"
  OR end_station_id = "OH Charging Stx - Test"

-- searching for null values
SELECT 
 COUNT(*) - COUNT(ride_id) ride_id,
 COUNT(*) - COUNT(rideable_type) rideable_type,
 COUNT(*) - COUNT(started_at) started_at,
 COUNT(*) - COUNT(ended_at) ended_at,
 COUNT(*) - COUNT(ride_month) ride_month,
 COUNT(*) - COUNT(day_of_week) day_of_week,
 COUNT(*) - COUNT(ride_length) ride_length,
 COUNT(*) - COUNT(ended_at) ended_at,
 COUNT(*) - COUNT(start_station_name) start_station_name,
 COUNT(*) - COUNT(start_station_id) start_station_id,
 COUNT(*) - COUNT(end_station_name) end_station_name,
 COUNT(*) - COUNT(end_station_id) end_station_id,
 COUNT(*) - COUNT(start_lat) start_lat,
 COUNT(*) - COUNT(start_lng) start_lng,
 COUNT(*) - COUNT(end_lat) end_lat,
 COUNT(*) - COUNT(end_lng) end_lng,
 COUNT(*) - COUNT(member_casual) member_casual
FROM `data-cyclistic-capstone.files_by_month.cyclistic_data`;

--null values found

--check for duplicate data

SELECT 
  ride_id, COUNT(1) 
FROM 
  `data-cyclistic-capstone.files_by_month.cyclistic_data` 
GROUP BY 
  ride_id HAVING COUNT(1) > 1
--no dupllicates in data


SELECT DISTINCT ride_length, rideable_type, started_at, ended_at, member_casual, ride_id, ride_month, day_of_week, start_station_id, start_station_name, end_station_id, end_station_name, start_lat, start_lng, end_lat, end_lng 
FROM `data-cyclistic-capstone.files_by_month.cyclistic_data`
WHERE ride_length IS NOT NULL
OR rideable_type IS NOT NULL
OR started_at IS NOT NULL
OR ended_at IS NOT NULL
OR member_casual IS NOT NULL
OR ride_id IS NOT NULL
OR ride_month IS NOT NULL
OR day_of_week IS NOT NULL
OR start_station_id IS NOT NULL
OR start_station_name IS NOT NULL
OR end_station_id IS NOT NULL
OR end_station_name IS NOT NULL
OR start_lat IS NOT NULL
OR start_lng IS NOT NULL
OR end_lat IS NOT NULL
OR end_lng IS NOT NULL ;

--approximately 5736786 results
--exported data to new table
