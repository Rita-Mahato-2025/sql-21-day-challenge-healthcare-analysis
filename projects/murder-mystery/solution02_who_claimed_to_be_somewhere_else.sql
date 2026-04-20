-- Who claimed to be somewhere else but was not?
SELECT 
	kl.employee_id,
    room,
    entry_time,
    exit_time,
    claimed_location,
    claim_time
FROM keycard_logs AS kl
JOIN alibis AS a
	ON kl.employee_id = a.employee_id
WHERE a.claim_time BETWEEN kl.entry_time AND kl.exit_time
  AND kl.room <> a.claimed_location
  AND kl.employee_id IN (
        SELECT DISTINCT employee_id
        FROM keycard_logs
    );