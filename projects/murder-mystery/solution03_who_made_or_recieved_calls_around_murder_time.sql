-- Who made or received calls around 20:50–21:00?
SELECT 
	employee_id,
    room,
    entry_time,
    exit_time,
    caller_id
    receiver_id,
    call_time,
    duration_sec
FROM keycard_logs AS kl
JOIN calls AS c
	ON kl.employee_id = c.caller_id
    OR kl.employee_id = c.receiver_id
WHERE call_time BETWEEN '2025-10-15 20:50:00' AND '2025-10-15 21:00:00'
AND call_time BETWEEN entry_time AND exit_time;