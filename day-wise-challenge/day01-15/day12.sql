--  Analyze the event impact by comparing weeks with events vs weeks without events. 
-- Show: event status ('With Event' or 'No Event'), count of weeks, average patient satisfaction, and 
-- average staff morale. Order by average patient satisfaction descending.
SELECT
    CASE
        WHEN event IS NOT NULL 
             AND TRIM(event) <> ''
             AND LOWER(TRIM(event)) <> 'none'
            THEN 'With Event'
        ELSE 'No Event'
    END AS event_status,
    
    COUNT(week) AS week_count,
    AVG(patient_satisfaction) AS avg_patient_satisfaction,
    AVG(staff_morale) AS avg_staff_morale

FROM services_weekly
GROUP BY
    CASE
        WHEN event IS NOT NULL 
             AND TRIM(event) <> ''
             AND LOWER(TRIM(event)) <> 'none'
            THEN 'With Event'
        ELSE 'No Event'
    END
ORDER BY avg_patient_satisfaction DESC;