-- Find all patients who were admitted to services that had at least one week where patients were refused AND 
-- the average patient satisfaction for that service was below the overall hospital average satisfaction. 
-- Show patient_id, name, service, and their personal satisfaction score.
SELECT 
    p.patient_id,
    p.name,
    p.service,
    sw.patient_satisfaction
FROM patients p
JOIN services_weekly sw
    ON p.service = sw.service
WHERE p.service IN (
    SELECT s1.service
    FROM (
        -- Services with at least one week of refusals
        SELECT DISTINCT service
        FROM services_weekly
        WHERE patients_refused > 0
    ) s1
    JOIN (
        -- Services with average satisfaction below hospital-wide avg
        SELECT service
        FROM services_weekly
        GROUP BY service
        HAVING AVG(patient_satisfaction) < (
            SELECT AVG(patient_satisfaction) 
            FROM services_weekly
        )
    ) s2
    ON s1.service = s2.service
);