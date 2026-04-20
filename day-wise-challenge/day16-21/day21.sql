--  Create a comprehensive hospital performance dashboard using CTEs. Calculate: 
-- 1) Service-level metrics (total admissions, refusals, avg satisfaction), 
-- 2) Staff metrics per service (total staff, avg weeks present), 
-- 3) Patient demographics per service (avg age, count). Then combine all three CTEs to create a 
-- final report showing service name, all calculated metrics, and an overall performance score 
-- (weighted average of admission rate and satisfaction). Order by performance score descending.
WITH patient_metrics AS (
    SELECT
        service,
        COUNT(*) AS total_patients,
        AVG(age) AS avg_age,
        AVG(satisfaction) AS avg_satisfaction
    FROM patients
    GROUP BY service
),
staff_metrics AS (
    SELECT
        service,
        COUNT(*) AS total_staff
    FROM staff
    GROUP BY service
),
weekly_metrics AS (
    SELECT
        service,
        SUM(patients_admitted) AS total_admitted,
        SUM(patients_refused) AS total_refused
    FROM services_weekly
    GROUP BY service
)
SELECT
    pm.service,
    pm.total_patients,
    pm.avg_age,
    pm.avg_satisfaction,
    sm.total_staff,
    wm.total_admitted,
    wm.total_refused,
    ROUND(100.0 * wm.total_admitted /
          (wm.total_admitted + wm.total_refused), 2) AS admission_rate,
	 ROUND(
        0.5 * (100.0 * wm.total_admitted /
              (wm.total_admitted + wm.total_refused))
      + 0.5 * pm.avg_satisfaction
    , 2) AS performance_score
FROM patient_metrics pm
LEFT JOIN staff_metrics sm ON pm.service = sm.service
LEFT JOIN weekly_metrics wm ON pm.service = wm.service
ORDER BY pm.avg_satisfaction DESC;
