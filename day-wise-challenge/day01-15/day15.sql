-- Create a comprehensive service analysis report for week 20 showing: service name, 
-- total patients admitted that week, total patients refused, average patient satisfaction, 
-- count of staff assigned to service, and count of staff present that week. Order by patients admitted descending.
SELECT 
    sw.service AS service_name,
    SUM(sw.patients_admitted) AS total_patients_admitted,
    SUM(sw.patients_refused) AS total_patients_refused,
    ROUND(AVG(sw.patient_satisfaction), 2) AS average_patient_satisfaction,
    COUNT(DISTINCT ss.staff_id) AS staff_assigned_to_service,
    COUNT(DISTINCT CASE WHEN ss.present = 1 THEN ss.staff_id END) AS staff_present_that_week
FROM services_weekly sw
LEFT JOIN staff_schedule ss
    ON sw.service = ss.service AND ss.week = 20
WHERE sw.week = 20
GROUP BY sw.service
ORDER BY total_patients_admitted DESC;