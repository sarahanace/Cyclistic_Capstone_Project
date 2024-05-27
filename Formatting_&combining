--Fixed the type errors between tables using CAST()
--Combined all tables into a year of data

CREATE TABLE `data-cyclistic-capstone.files_by_month.cyclistic_data` AS (
  SELECT * FROM `data-cyclistic-capstone.files_by_month.01-2024` 
  UNION ALL
  SELECT * FROM `data-cyclistic-capstone.files_by_month.02-2024` 
  UNION ALL
  SELECT 
        ride_id,
        rideable_type, 
        started_at, 
        ended_at, 
        ride_month,
        day_of_week,
	CAST(ride_length AS STRING ) AS ride_length, 
        start_station_name, 
        start_station_id, 
	end_station_name, 
        end_station_id, 
        start_lat, 
	start_lng, 
        end_lat, 
        end_lng, 
        member_casual,
FROM 
        `data-cyclistic-capstone.files_by_month.03-2024`
  UNION ALL
  SELECT * FROM `data-cyclistic-capstone.files_by_month.04-2024` 
  UNION ALL
  SELECT * FROM `data-cyclistic-capstone.files_by_month.05-2023` 
  UNION ALL
  SELECT 
        ride_id,
        rideable_type, 
        started_at, 
        ended_at, 
        ride_month,
        day_of_week,
	CAST(ride_length AS STRING ) AS ride_length, 
        start_station_name, 
        start_station_id, 
	end_station_name, 
        end_station_id, 
        start_lat, 
	start_lng, 
        end_lat, 
        end_lng, 
        member_casual,
  FROM `data-cyclistic-capstone.files_by_month.06-2023` 
  UNION ALL
  SELECT * FROM `data-cyclistic-capstone.files_by_month.07-2023` 
  UNION ALL
  SELECT * FROM `data-cyclistic-capstone.files_by_month.08-2023` 
  UNION ALL
  SELECT * FROM `data-cyclistic-capstone.files_by_month.09-2023` 
  UNION ALL
  SELECT 
        ride_id,
        rideable_type, 
        started_at, 
        ended_at, 
        ride_month,
        day_of_week,
	CAST(ride_length AS STRING ) AS ride_length, 
        start_station_name, 
        start_station_id, 
	end_station_name, 
        end_station_id, 
        start_lat, 
	start_lng, 
        end_lat, 
        end_lng, 
        member_casual,
   FROM `data-cyclistic-capstone.files_by_month.10-2023` 
  UNION ALL
  SELECT * FROM `data-cyclistic-capstone.files_by_month.11-2023` 
  UNION ALL
  SELECT * FROM `data-cyclistic-capstone.files_by_month.12-2023`
  );
