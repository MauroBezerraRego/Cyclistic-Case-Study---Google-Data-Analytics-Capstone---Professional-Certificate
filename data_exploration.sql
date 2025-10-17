-- Checkin columns' data type
SELECT
        COLUMN_NAME,
        DATA_TYPE
    FROM
        INFORMATION_SCHEMA.COLUMNS
    WHERE
        TABLE_NAME = 'data2425';

-- Changing the data type of the staterd_id and ended_id columns

ALTER TABLE [data2425]
ALTER COLUMN started_at DATETIME2
ALTER TABLE [data2425]
ALTER COLUMN ended_at DATETIME2

-- Creating new table with ride-length, month, week_day, year, hour columns

  SELECT 
	*,
	DATEDIFF(MINUTE, started_at, ended_at) AS 'ride_length',
	CASE
    WHEN MONTH(started_at) = 1 THEN 'January'
    WHEN MONTH(started_at) = 2 THEN 'February'
    WHEN MONTH(started_at) = 3 THEN 'March'
    WHEN MONTH(started_at) = 4 THEN 'April'
    WHEN MONTH(started_at) = 5 THEN 'May'
    WHEN MONTH(started_at) = 6 THEN 'June'
    WHEN MONTH(started_at) = 7 THEN 'July'
	WHEN MONTH(started_at) = 8 THEN 'August'
	WHEN MONTH(started_at) = 9 THEN 'September'
	WHEN MONTH(started_at) = 10 THEN 'October'
	WHEN MONTH(started_at) = 11 THEN 'November'
	WHEN MONTH(started_at) = 12 THEN 'December'
	END AS 'month',

	CASE
	WHEN DATEPART(weekday,started_at) = 1 THEN 'Sunday'
	WHEN DATEPART(weekday,started_at) = 2 THEN 'Monday'
	WHEN DATEPART(weekday,started_at) = 3 THEN 'Tuesday'
	WHEN DATEPART(weekday,started_at) = 4 THEN 'Wednesday'
	WHEN DATEPART(weekday,started_at) = 5 THEN 'Thrusday'
	WHEN DATEPART(weekday,started_at) = 6 THEN 'Friday'
	WHEN DATEPART(weekday,started_at) = 7 THEN 'Saturday'
	END AS 'week_day',

	YEAR(started_at) AS 'year',
	DATEPART(hour,started_at)AS 'hour'

INTO data24251
FROM
	data2425

-- Checking how many lines have null values and ride_length < 1

SELECT 
*
FROM 
data24251
WHERE start_station_name IS NULL OR end_station_name IS NULL OR ride_length <1

-- Cleaning the table data24251 

  DELETE FROM data24251
  WHERE start_station_name IS NULL OR end_station_name IS NULL OR ride_length <1


