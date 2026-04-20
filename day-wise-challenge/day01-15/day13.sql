-- Create a comprehensive report showing patient_id, patient name, age, service, and 
-- the total number of staff members available in their service. Only include patients from services 
-- that have more than 5 staff members. Order by number of staff descending, then by patient name.
SELECT
	p.patient_id,
    p.name,
    p.age,
    p.service,
    sc.total_staff_members
FROM patients AS p
JOIN
	(
		SELECT 
			service,
            count(staff_id) AS total_staff_members
		FROM staff
        GROUP BY service
        HAVING count(staff_id) > 5
    ) AS sc
ON p.service = sc.service
ORDER BY sc.total_staff_members DESC, p.name;