-- ---------------------------------------
-- Importing Bulk data (CSV) into tables.
-- ---------------------------------------

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.3/Uploads/Datasets/Patients.csv'
INTO TABLE Patients
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.3/Uploads/Datasets/Doctors.csv'
INTO TABLE Doctors
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.3/Uploads/Datasets/Visits.csv'
INTO TABLE Visits
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.3/Uploads/Datasets/Medications.csv'
INTO TABLE Medications
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;