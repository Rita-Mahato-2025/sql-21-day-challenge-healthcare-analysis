--  Find all unique combinations of service and event type from the services_weekly table where events are 
-- not null or none, along with the count of occurrences for each combination. Order by count descending.
SELECT
 DISTINCT(service),
 event,
 COUNT(*) event_count
FROM 
 services_weekly
WHERE
	event is NOT NULL AND
	event <> '' AND
	LOWER(event) <> 'none'
GROUP BY event, service
ORDER BY COUNT(*) DESC;