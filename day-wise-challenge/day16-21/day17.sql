-- Create a report showing each service with: service name, total patients admitted, 
-- the difference between their total admissions and the average admissions across all services, and 
-- a rank indicator ('Above Average', 'Average', 'Below Average'). Order by total patients admitted descending.
-- total admissions
SELECT
	SUM(patients_admitted) AS total_admission
FROM services_weekly;

-- total admission per service
SELECT
	service,
    SUM(patients_admitted) AS total_admission_per_service
FROM services_weekly
GROUP BY service;

-- difference between their total admission and total admission per service
SELECT
	sw.service,
    sw.total_Admission,
    (sw.total_Admission - oa.avg_admission) AS diff,
    CASE
		WHEN sw.total_Admission > oa.avg_admission THEN 'Above Average'
        WHEN sw.total_Admission = oa.avg_admission THEN 'Above Average'
        ELSE 'Below Average'
    END AS rank_indicator
FROM
(SELECT
	service,
    SUM(patients_admitted) AS total_admission
FROM services_weekly
GROUP BY service) sw
CROSS JOIN
(SELECT 
	AVG(total_admission) AS avg_admission
FROM (SELECT
	service,
    SUM(patients_admitted) AS total_admission
FROM services_weekly
GROUP BY service) AS service_totals) oa 
ORDER BY total_Admission DESC;