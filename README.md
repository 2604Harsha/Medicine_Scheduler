# Patient Medicine Scheduler – SQL Database Design

## Project Overview

The Patient Medicine Scheduler is a database project designed to manage patient information, medicines, prescriptions, and scheduled medicine doses using MySQL.

The project demonstrates how SQL can be used to store and retrieve medicine schedules, track pending and completed doses, and maintain relationships between patients and their prescribed medicines.

## Objectives

- Create a structured database to store patient information.
- Maintain medicine details and prescription records.
- Schedule medicine doses for specific dates and times.
- Retrieve today's medicine schedule.
- Identify pending and completed doses.
- Apply access control and data minimization principles.

## Technologies Used

- MySQL 8.0
- SQL
- Visual Studio Code
- SQLTools Extension

## Database Structure

The database contains the following four tables:

| Table | Description |
|---|---|
| `patients` | Stores patient information |
| `medicines` | Stores medicine details |
| `prescriptions` | Connects patients with prescribed medicines |
| `scheduled_doses` | Stores scheduled dates, times, and dose status |

## Relationships

- One patient can have multiple prescriptions.
- One medicine can be prescribed to multiple patients.
- One prescription can have multiple scheduled doses.

Primary keys and foreign keys are used to maintain relationships and data integrity.

## Features

### 1. Patient Management
Stores patient details such as patient ID, name, date of birth, gender, and contact number.

### 2. Medicine Management
Stores medicine names, types, and strengths.

### 3. Prescription Management
Connects patients with their prescribed medicines and stores dosage and prescription duration.

### 4. Medicine Scheduling
Stores the scheduled date and time for each dose.

### 5. Today's Medicine Schedule
Retrieves all medicines scheduled for the current date using the MySQL `CURDATE()` function.

### 6. Dose Status Tracking
Identifies pending and completed doses using the `status` column.

## SQL Queries

### Retrieve Today's Medicine Schedule

```sql
SELECT
    p.patient_name,
    m.medicine_name,
    pr.dosage,
    sd.scheduled_date,
    sd.scheduled_time,
    sd.status
FROM scheduled_doses sd
JOIN prescriptions pr
    ON sd.prescription_id = pr.prescription_id
JOIN patients p
    ON pr.patient_id = p.patient_id
JOIN medicines m
    ON pr.medicine_id = m.medicine_id
WHERE sd.scheduled_date = CURDATE()
ORDER BY sd.scheduled_time;
```

### Retrieve Pending Doses

```sql
SELECT *
FROM scheduled_doses
WHERE status = 'pending';
```

### Retrieve Completed Doses

```sql
SELECT *
FROM scheduled_doses
WHERE status = 'completed';
```

## Access Control

Access control ensures that only authorized users can access patient information.

Example roles:

- Administrator: Manages database users and system settings.
- Doctor: Accesses patient prescriptions and medicine details.
- Patient: Views their own medicine schedule and updates dose status.

Authentication and role-based authorization should be implemented in the application to protect patient records.

## Data Minimization

Data minimization means collecting and storing only the information necessary for the application.

- Store only required patient details.
- Avoid collecting unnecessary personal information.
- Use fictional patient data for testing.
- Restrict access to sensitive patient information.
- Avoid exposing patient contact details in reports unless necessary.

## How to Run the Project

1. Install MySQL Server.
2. Install Visual Studio Code.
3. Install the SQLTools extension and MySQL driver.
4. Open the project folder in VS Code.
5. Connect to the MySQL server.
6. Open `patient_medicine_scheduler.sql`.
7. Execute the SQL statements to create the database and tables.
8. Insert the sample data.
9. Execute the queries to retrieve today's medicine schedule and identify pending and completed doses.

## Sample Data

The project uses fictional patient and medicine records for demonstration purposes.

Example patients:

- Harsha Kumar
- Priya Sharma
- Rahul Verma

Example medicines:

- Paracetamol
- Vitamin C
- Cetirizine
- Amoxicillin

All sample data is fictional and intended for educational use only.

## Conclusion

This project demonstrates relational database design using MySQL. It uses primary keys, foreign keys, SQL joins, filtering, and sorting to manage patient medicine schedules.

The database can serve as the foundation for a future medicine scheduling application with a frontend and backend.

## Author

Harsha Vardhan Naidu

B.Tech – Computer Science and Engineering
