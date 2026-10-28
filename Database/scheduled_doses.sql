CREATE TABLE scheduled_doses(
    dose_id INT AUTO_INCREMENT PRIMARY KEY, 
    prescription_id INT NOT NULL,
    scheduled_date DATE NOT NULL,
    scheduled_time TIME NOT NULL,
    status ENUM('pending','completed') DEFAULT 'pending',
    taken_at DATETIME NULL,
    FOREIGN KEY (prescription_id)
    REFERENCES prescriptions(prescription_id),

    UNIQUE(prescription_id, scheduled_date, scheduled_time)

);