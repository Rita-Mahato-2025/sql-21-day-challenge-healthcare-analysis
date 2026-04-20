-- What evidence was found at the crime scene?
SELECT
    e.evidence_id,
    e.room AS evidence_room,
    e.description,
    e.found_time,
    kl.employee_id,
    kl.room AS keycard_room,
    kl.entry_time,
    kl.exit_time
FROM evidence AS e
JOIN keycard_logs AS kl
    ON e.room = kl.room
WHERE e.found_time BETWEEN '2025-10-15 21:00:00' AND '2025-10-15 21:15:00';