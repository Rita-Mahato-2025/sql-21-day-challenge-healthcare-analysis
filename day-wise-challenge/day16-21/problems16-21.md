
** Day 16 **: Find all patients who were admitted to services that had at least one week where patients were refused AND the average patient satisfaction for that service was below the overall hospital average satisfaction. Show patient_id, name, service, and their personal satisfaction score.

** Day 17 **: Create a report showing each service with: service name, total patients admitted, the difference between their total admissions and the average admissions across all services, and a rank indicator ('Above Average', 'Average', 'Below Average'). Order by total patients admitted descending.

** Day 18 **: Create a comprehensive personnel and patient list showing: identifier (patient_id or staff_id), full name, type ('Patient' or 'Staff'), and associated service. Include only those in 'surgery' or 'emergency' services. Order by type, then service, then name.

** Day 19 **: For each service, rank the weeks by patient satisfaction score (highest first). Show service, week, patient_satisfaction, patients_admitted, and the rank. Include only the top 3 weeks per service.

** Day 20 **: Create a trend analysis showing for each service and week: week number, patients_admitted, running total of patients admitted (cumulative), 3-week moving average of patient satisfaction (current week and 2 prior weeks), and the difference between current week admissions and the service average. Filter for weeks 10-20 only.

** Day 21 **: Create a comprehensive hospital performance dashboard using CTEs. Calculate: 1) Service-level metrics (total admissions, refusals, avg satisfaction), 2) Staff metrics per service (total staff, avg weeks present), 3) Patient demographics per service (avg age, count). Then combine all three CTEs to create a final report showing service name, all calculated metrics, and an overall performance score (weighted average of admission rate and satisfaction). Order by performance score descending.
