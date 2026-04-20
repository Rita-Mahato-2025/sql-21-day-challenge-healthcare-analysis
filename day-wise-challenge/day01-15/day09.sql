--  Calculate the average length of stay (in days) for each service, showing only services where 
-- the average stay is more than 7 days. Also show the count of patients and order by average stay descending.
SELECT
	COUNT(patient_id) AS total_patients, 
    service,
    ROUND(AVG(DATEDIFF(departure_date, arrival_date)), 2) AS stay_duration
FROM patients
GROUP BY service
HAVING AVG(DATEDIFF(departure_date, arrival_date)) > 7
ORDER BY stay_duration DESC;