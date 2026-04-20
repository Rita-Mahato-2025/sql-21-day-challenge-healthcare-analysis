
** Day 01 ** : List all unique hospital services available in the hospital.

** Day 02 ** : Find all patients admitted to 'Surgery' service with a satisfaction score below 70, showing their patient_id, name, age, and satisfaction score.

** Day 03 ** : Retrieve the top 5 weeks with the highest patient refusals across all services, showing week, service, patients_refused, and patients_request. Sort by patients_refused in descending order.

** Day 04 ** : Find the 3rd to 7th highest patient satisfaction scores from the patients table, showing patient_id, name, service, and satisfaction. Display only these 5 records.

** Day 05 ** : Calculate the total number of patients admitted, total patients refused, and the average patient satisfaction across all services and weeks. Round the average satisfaction to 2 decimal places.

** Day 06 ** : For each hospital service, calculate the total number of patients admitted, total patients refused, and the admission rate (percentage of requests that were admitted). Order by admission rate descending.

** Day 07 ** : Identify services that refused more than 100 patients in total and had an average patient satisfaction below 80. Show service name, total refused, and average satisfaction.

** Day 08 ** : Create a patient summary that shows patient_id, full name in uppercase, service in lowercase, age category (if age >= 65 then 'Senior', if age >= 18 then 'Adult', else 'Minor'), and name length. Only show patients whose name length is greater than 10 characters.

** Day 09 ** : Calculate the average length of stay (in days) for each service, showing only services where the average stay is more than 7 days. Also show the count of patients and order by average stay descending.

** Day 10 ** : Create a service performance report showing service name, total patients admitted, and a performance category based on the following: 'Excellent' if avg satisfaction >= 85, 'Good' if >= 75, 'Fair' if >= 65, otherwise 'Needs Improvement'. Order by average satisfaction descending.

** Day 11 ** : Find all unique combinations of service and event type from the services_weekly table where events are not null or none, along with the count of occurrences for each combination. Order by count descending.

** Day 12 ** : Analyze the event impact by comparing weeks with events vs weeks without events. Show: event status ('With Event' or 'No Event'), count of weeks, average patient satisfaction, and average staff morale. Order by average patient satisfaction descending.

** Day 13 ** : Create a comprehensive report showing patient_id, patient name, age, service, and the total number of staff members available in their service. Only include patients from services that have more than 5 staff members. Order by number of staff descending, then by patient name.

** Day 14 ** : Create a staff utilisation report showing all staff members (staff_id, staff_name, role, service) and the count of weeks they were present (from staff_schedule). Include staff members even if they have no schedule records. Order by weeks present descending.

** Day 15 ** : Create a comprehensive service analysis report for week 20 showing: service name, total patients admitted that week, total patients refused, average patient satisfaction, count of staff assigned to service, and count of staff present that week. Order by patients admitted descending.