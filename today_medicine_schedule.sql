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

ORDER BY
    sd.scheduled_time,
    p.patient_name;