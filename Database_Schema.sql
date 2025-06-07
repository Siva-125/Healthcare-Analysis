-- Creating Database
-- ---------------------
CREATE DATABASE Healthcare;
USE Healthcare;

-- Creating Required Tables for Healthcare Analysis
-- ---------------------------------------------------

-- 1. Patients Table
CREATE TABLE IF NOT EXISTS Patients(
	patient_id INT PRIMARY KEY,
    name VARCHAR(30),
    age INT,
    gender VARCHAR(6)
);

-- 2. Doctors Table
CREATE TABLE IF NOT EXISTS Doctors(
	doctor_id INT PRIMARY KEY,
    name VARCHAR(30),
    specialty VARCHAR(20)
);

-- 3. Visit Table
CREATE TABLE IF NOT EXISTS Visits(
	visit_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    date DATE,
    diagnosis VARCHAR(10),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

-- 4. Medications Table
CREATE TABLE IF NOT EXISTS Medications(
	med_id INT PRIMARY KEY,
    patient_id INT,
    drug_name TEXT,
    dose TEXT,
    start_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);
