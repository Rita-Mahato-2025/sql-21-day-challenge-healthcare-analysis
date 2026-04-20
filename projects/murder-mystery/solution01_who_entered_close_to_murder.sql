-- Who entered the CEO's Office close to the time of the murder? employee_id : 4, name David Kumar
SELECT
	kl.employee_id,
    entry_time,
    exit_time,
    e.name,
    e.department,
    e.role
FROM keycard_logs AS kl
LEFT JOIN employees AS e
ON kl.employee_id = e.employee_id
WHERE room LIKE 'CEO%' AND
	entry_time BETWEEN '2025-10-15 20:50:00' AND '2025-10-15 21:00:00';