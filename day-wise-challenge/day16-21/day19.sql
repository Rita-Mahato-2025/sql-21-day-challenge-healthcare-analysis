-- For each service, rank the weeks by patient satisfaction score (highest first). 
-- Show service, week, patient_satisfaction, patients_admitted, and the rank. 
-- Include only the top 3 weeks per service.
SELECT
	*
FROM (SELECT
	service,
	week,
    patient_satisfaction,
    patients_admitted,
    DENSE_RANK() OVER(PARTITION BY service 
						ORDER BY patient_satisfaction DESC) AS rnk_week
FROM services_weekly) ranked_weeks
WHERE rnk_week <= 3;