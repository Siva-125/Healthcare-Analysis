-- ------------------------------
-- Analytical SQL Queries (KPIs)
-- ------------------------------

-- 1. Total Registered Patients in the System
SELECT COUNT(*) AS Total_Regd_Patients
FROM Patients;

-- 2. Average Age of the Patients
SELECT ROUND(AVG(age)) AS Average_age
FROM Patients;

-- 3. Top 10 Most visited Doctors
SELECT doc.name, COUNT(vis.doctor_id) AS no_of_visits
FROM Doctors AS doc
JOIN Visits AS vis 
USING (doctor_id)
GROUP BY doctor_id
ORDER BY no_of_visits DESC
LIMIT 10;

-- 4. Average no. of Patients per Doctor per Year
SELECT doc.name,ROUND(AVG(yearly_patient_count),2) AS Avg_no_of_Patients
FROM (
	SELECT doctor_id, date_format(date,'%Y') AS year, COUNT(*) AS yearly_patient_count
    FROM Visits
    GROUP BY doctor_id,year
) AS yearly_data
JOIN Doctors doc
USING (doctor_id)
GROUP BY doc.name;

-- 5. Most Frequently Prescribed Medication
SELECT med.drug_name, COUNT(*) AS prescription_count
FROM Medications med
JOIN Patients pat
USING (patient_id)
GROUP BY drug_name
ORDER BY prescription_count DESC;

-- 6.Top 5 highest prescribed Doctors
SELECT doc.name, COUNT(*) AS Prescription_count
FROM Medications med
JOIN Visits vis USING (patient_id)
JOIN Doctors doc USING (doctor_id)
GROUP BY doc.name
ORDER BY Prescription_count DESC
LIMIT 5;

-- 7. Visits by Age
SELECT pat.age, COUNT(*) AS no_of_visits
FROM Patients pat
JOIN Visits vis USING (patient_id)
GROUP BY pat.age
ORDER BY pat.age;