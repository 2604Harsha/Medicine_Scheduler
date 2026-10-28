CREATE TABLE prescriptions(
    prescription_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    medicine_id INT NOT NULL, 
    dosage VARCHAR(50) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    instructions VARCHAR(255),

    FOREIGN KEY(patient_id)
    REFERENCES patients(patient_id),

    FOREIGN KEY(medicine_id)
    REFERENCES medicines(medicine_id)
);