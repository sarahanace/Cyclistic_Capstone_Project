SELECT *
FROM `data-cyclistic-capstone.Combined_year_data.Cyclistic_Clean`
WHERE 
TIMESTAMP_DIFF(ended_at, started_at, MINUTE) > 1 OR
TIMESTAMP_DIFF(ended_at, started_at, MINUTE) < 1440;

--exported data to a new table

SELECT
ride_totals,
member_totals,
casual_totals,
ROUND(member_totals/ride_totals,2)*100 AS MemberPercentage,
ROUND(casual_totals/ride_totals,2)*100 AS CasualPercentage
FROM 
(
SELECT
COUNT(ride_id) AS ride_totals,
COUNTIF(member_casual = 'member') AS member_totals,
COUNTIF(member_casual = 'casual') AS casual_totals,
FROM
`data-cyclistic-capstone.Combined_year_data.cyclistic_year_time`
)

--created table for overall analysis between members and casual riders
