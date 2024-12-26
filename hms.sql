CREATE DATABASE HospitalDB;
USE HospitalDB;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL
);

INSERT INTO users (username, password) 
VALUES ('arpitsaini', '1234');

CREATE TABLE newusers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL
);


CREATE TABLE patients (
    id INT PRIMARY KEY,
    name VARCHAR(200),
    disease VARCHAR(50),
    age INT,
    city VARCHAR(50),
    gender VARCHAR(10),
    proof_type VARCHAR(50)
);
ALTER TABLE patient
MODIFY COLUMN id BIGINT;


CREATE TABLE doctor (
    id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100),
    specialization VARCHAR(100),
    dob DATE,
    address VARCHAR(200),
    contact VARCHAR(15),
    gender VARCHAR(10)
);
CREATE TABLE hospital_bills (
    patient_id VARCHAR(20) PRIMARY KEY,
    patient_name VARCHAR(100),
    room_charges DECIMAL(10, 2),
    consultation_fees DECIMAL(10, 2),
    medication_costs DECIMAL(10, 2),
    additional_services DECIMAL(10, 2),
    total_amount DECIMAL(10, 2)
);
USE HospitalDB;

CREATE TABLE IF NOT EXISTS Appointments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    patient_name VARCHAR(255) NOT NULL,
    patient_id VARCHAR(50) NOT NULL,
    doctor_name VARCHAR(255) NOT NULL,
    appointment_date DATE NOT NULL
);
