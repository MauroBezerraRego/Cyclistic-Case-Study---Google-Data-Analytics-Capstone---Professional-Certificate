-- Creating views to data analise


-- Tota rides 

CREATE VIEW vwtotal AS
SELECT
	member_casual,
	COUNT(ride_id) AS 'Total'
FROM
	data24251
GROUP BY member_casual

-- Rides per month

CREATE VIEW vwmember_month AS
SELECT
	year,
	month,
	member_casual,
	COUNT(ride_id) AS 'Total'
FROM
	data24251
GROUP BY year,month,member_casual

-- Rides per day of week

CREATE VIEW vwmember_weekday AS
SELECT
	week_day,
	member_casual,
	COUNT(ride_id) AS 'Total'
FROM
	data24251
GROUP BY week_day,member_casual

-- Rides per hour of the day

CREATE VIEW vwhours AS
SELECT
	hour,
	member_casual,
	COUNT(ride_id) AS 'Total'
FROM
	data24251
GROUP BY hour,member_casual

-- Average rides duration

CREATE VIEW vwmember_length AS
SELECT
	member_casual,
	AVG(ride_length) AS 'Total'
FROM
	data24251
GROUP BY member_casual

-- Bikes type used

CREATE VIEW vwrideable_type AS
SELECT 
	member_casual,
	rideable_type,
	COUNT(ride_id) AS 'Total rides'
	
FROM 
	data24251
GROUP BY member_casual, rideable_type

-- Start stations location

CREATE VIEW vwstartstation AS

SELECT
  top (20) start_station_name,
  start_lat,
  start_lng,
  member_casual,
  COUNT (ride_id) AS 'member_start_station'
FROM 
  data24251
WHERE
  start_station_name <> '' 

GROUP BY 
  start_station_name,
  member_casual,
  start_lat,
  start_lng
ORDER BY
member_start_station DESC

-- End stations location

CREATE VIEW vwendtation AS

SSELECT
  top (20) end_station_name,
  end_lat,
  end_lng,
  member_casual,
  COUNT(ride_id) AS 'member_start_station'
FROM 
  data24251
WHERE
  end_station_name <> '' 

GROUP BY 
  end_station_name,
  member_casual,
  end_lat,
  end_lng
ORDER BY
member_start_station DESC
