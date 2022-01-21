SELECT avg(yellow_taxi_data.total_amount), pu_zones."Zone", do_zones."Zone", count(*) FROM yellow_taxi_data
LEFT JOIN zones pu_zones ON pu_zones."LocationID" = yellow_taxi_data."PULocationID"
LEFT JOIN zones do_zones ON do_zones."LocationID" = yellow_taxi_data."DOLocationID"
GROUP BY 2, 3
ORDER BY 1 DESC
LIMIT 1;
