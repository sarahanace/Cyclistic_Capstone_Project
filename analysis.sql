SELECT * FROM `data-cyclistic-capstone.Combined_year_data.cyclistic_reformatted`
WHERE rideable_type = 'electric_bike'
--2883273 results for electric_bike
--what about between casual and membership riders?

SELECT * FROM `data-cyclistic-capstone.Combined_year_data.cyclistic_reformatted`
WHERE rideable_type = 'electric_bike'
AND member_casual = 'casual'
--1075404 results

SELECT * FROM `data-cyclistic-capstone.Combined_year_data.cyclistic_reformatted`
WHERE rideable_type = 'electric_bike'
AND member_casual = 'member'
--1807869 results

SELECT member_casual, rideable_type, 
COUNT(*) AS rideable_type_membership
FROM `data-cyclistic-capstone.Combined_year_data.cyclistic_reformatted`
GROUP BY member_casual, rideable_type
ORDER BY member_casual;

SELECT member_casual, ride_month, 
COUNT(*) AS total_rides_per_month
FROM `data-cyclistic-capstone.Combined_year_data.cyclistic_reformatted`
GROUP BY member_casual, ride_month
ORDER BY member_casual;

SELECT  
	*
FROM 
	`data-cyclistic-capstone.Combined_year_data.cyclistic_reformatted`
ORDER BY
	ride_length DESC 


SELECT member_casual, 
AVG(ride_length) AS avg_ride
FROM
  `data-cyclistic-capstone.Combined_year_data.length_by_membership`
GROUP BY member_casual
ORDER BY member_casual
  --table made

SELECT
member_casual, 
day_of_week AS highest_day_of_week 
FROM 
(
SELECT
DISTINCT member_casual, day_of_week, ROW_NUMBER() OVER (PARTITION BY member_casual ORDER BY COUNT(day_of_week) DESC) rn
FROM
`data-cyclistic-capstone.Combined_year_data.cyclistic_reformatted`
GROUP BY
member_casual, day_of_week
)
WHERE
rn = 1
ORDER BY
member_casual DESC LIMIT 2
--table made
