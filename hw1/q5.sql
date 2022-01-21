SELECT count(*), pu_zone."Zone" as pu_zone, do_zone."Zone" as do_zone
FROM yellow_taxi_data
LEFT JOIN zones pu_zone ON pu_zone."LocationID" = yellow_taxi_data."PULocationID"
LEFT JOIN zones do_zone ON do_zone."LocationID" = yellow_taxi_data."DOLocationID"
WHERE date(yellow_taxi_data.tpep_pickup_datetime) = '2021-01-14' AND yellow_taxi_data."PULocationID" = 43
GROUP BY 2,3
ORDER BY 1 DESC;
