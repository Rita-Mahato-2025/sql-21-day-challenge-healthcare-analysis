-- Combine all findings to identify the killer
-- Which suspect’s movements, alibi, and call activity don’t add up
-- Identify suspects whose movements, alibis, and call activity don't add up
-- Identify suspects whose movements, alibis, and call activity don't add up
WITH killer AS (
    SELECT
        kl.employee_id,
        kl.entry_time,
        kl.exit_time,
        e.name,
        e.department,
        e.role
    FROM keycard_logs AS kl
    LEFT JOIN employees AS e
        ON kl.employee_id = e.employee_id
    WHERE kl.room LIKE 'CEO%'
      AND kl.entry_time BETWEEN '2025-10-15 20:50:00' AND '2025-10-15 21:00:00'
),
alibi_mismatch AS (
    SELECT 
        kl.employee_id,
        kl.room,
        kl.entry_time,
        kl.exit_time,
        a.claimed_location,
        a.claim_time
    FROM keycard_logs AS kl
    JOIN alibis AS a
        ON kl.employee_id = a.employee_id
    WHERE a.claim_time BETWEEN kl.entry_time AND kl.exit_time
      AND kl.room <> a.claimed_location
      AND kl.employee_id IN (
            SELECT DISTINCT employee_id
            FROM keycard_logs
        )
),
call_summary AS (
SELECT 
    kl.employee_id,
    kl.room,
    kl.entry_time,
    kl.exit_time,
    c.caller_id,
    c.receiver_id,
    c.call_time,
    c.duration_sec
FROM keycard_logs AS kl
JOIN calls AS c
    ON kl.employee_id = c.caller_id 
    OR kl.employee_id = c.receiver_id
WHERE c.call_time BETWEEN '2025-10-15 20:50:00' AND '2025-10-15 21:00:00'
  AND c.call_time BETWEEN kl.entry_time AND kl.exit_time
),
evidence_mismatch AS (
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
	WHERE e.found_time BETWEEN '2025-10-15 21:00:00' AND '2025-10-15 21:15:00'
)
SELECT DISTINCT k.name AS killer
FROM killer k
LEFT JOIN alibi_mismatch am
    ON k.employee_id = am.employee_id
LEFT JOIN call_summary cs
    ON k.employee_id = cs.employee_id
LEFT JOIN evidence_mismatch em
    ON k.employee_id = em.employee_id;
