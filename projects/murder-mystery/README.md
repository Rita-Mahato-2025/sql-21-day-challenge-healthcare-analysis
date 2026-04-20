# 🕵️‍♂️ SQL Murder Mystery: Who Killed the CEO?
### Domain: Cross-domain analytical project with applications in fraud detection, security analytics, and audit systems.


---

## 📌 Table of Contents
- <a href="#overview">Project Overview</a>
- <a href="#objective">Objective</a>
- <a href="#dataset-description">Dataset Description</a>
- <a href="#investigation-approach">Investigation Approach</a>
- <a href="#key-findings">Key Findings</a>
- <a href="#final-conclusion">Final Conclusion</a>
- <a href="#key-learnings">Key Learnings</a>
- <a href="#real-world-applications">Real World Applications</a>
- <a href="#future-improvement">Future Improvement</a>
- <a href="#connect-with-me">Connect With Me</a>

---

## Project Overview

This project is a data-driven investigation where SQL is used to solve a fictional murder case. The objective is to analyze multiple datasets—such as keycard logs, employee records, call logs, and forensic evidence—to identify the killer.

## Objective

To identify the person responsible for the CEO’s murder on October 15, 2025 (9:00 PM) using structured query analysis and data correlation techniques.

## Dataset Description

The investigation is based on the following datasets:

•	employees
	•	employee_id (pk), name, department, role

•	alibis
	•	alibi_id (pk), employee_id, claimed_location, claim_time

•	calls
	•	call_id (pk), caller_id, receiver_id, call_time, duration_sec

•	evidence
	•	call_id (pk), caller_id, receiver_id, call_time, duration_sec
	
## Investigation Approach

The analysis follows a structured approach:

1.	Define the time window
	•	Focused on 20:50–21:10 around the crime

2.	Analyze access logs
	•	Identify employees present near the CEO office

3.	Validate alibis
	•	Compare claimed locations vs actual logs

4.	Check communication patterns
	•	Identify calls during the critical time window
	
5.  Match forensic evidence
	•	Correlate physical evidence with suspects
	
6.  Final deduction
	•	Combine all insights to identify the killer

## Key Findings

### Clue 1: Crime Scene Timing

•	CEO found dead at 9.00 PM

•	Critical investigation window: 20:50–21:10

### Clue 2: Suspicious Entry

•	Only one employee (ID: 4) entered the CEO office

•	Entry: 20:50

•	Exit: 21:00

### Clue 3: Alibi Mismatch

•	Employee 4 claimed to be in the Server Room

•	Logs show presence in the CEO Office

### Clue 4: Suspicious Call

•	Call made at 20:55

•	Duration: 45 seconds

•	Occurred while inside CEO office

### Clue 5: Evidence at Scene

•	Fingerprint found on CEO desk at 21:05

•	Matches Employee 4

## Final Conclusion 

** Killer Identified: David Kumar (Employee ID: 4)**

### Supporting evidence

•	Present at the crime scene during the critical time

•	Provided a false alibi

•	Engaged in suspicious communication

•	Fingerprint evidence matches
	
## Key Learnings:

This project demonstrates:

•	Time-based filtering for event analysis.

•	Multi-table joins for data correlation.

•	Anomaly detection in structured datasets.

•	Validation of human input vs system logs.

•	End-to-end analytical storytelling.

### Real World Application

This type of analysis is applicable in:

•	Fraud detection systems
•	Security breach investigations
•	Employee behavior monitoring
•	Audit and compliance analytics

## Future Improvement

•	Add ER diagram for dataset relationships
•	Include query outputs/screenshots
•	Build a Power BI dashboard for visualization
•	Add alternative suspect analysis
•	Create a timeline visualization

## Connect With Me 

If you found this useful or have feedback, feel free to connect!

<h2><a class="anchor" id="author--contact"></a>Author & Contact</h2>

**Rita Mahato** 
Aspiring Data Analyst | SQL | Python | Power BI

📧 Email: ds.rita.mahato@gmail.com  
📱 +91-7044689553
🌐 https://codebasics.io/portfolio/Rita-Mahato
🔗 [LinkedIn](https://www.linkedin.com/in/mahato-rita/)  