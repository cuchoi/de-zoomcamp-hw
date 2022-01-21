SELECT MAX(tip_amount), DATE(tpep_pickup_datetime) FROM yellow_taxi_data 
GROUP BY DATE(tpep_pickup_datetime)
ORDER BY 1 DESC 
LIMIT 1;
