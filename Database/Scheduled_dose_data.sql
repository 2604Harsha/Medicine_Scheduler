INSERT INTO scheduled_doses
(prescription_id, scheduled_date, scheduled_time, status, taken_at)
VALUES
(1, '2026-10-28', '09:00:00', 'completed', '2026-10-28 09:05:00'),
(1, '2026-10-28', '21:00:00', 'pending', NULL),

(2, '2026-10-28', '10:00:00', 'pending', NULL),
(2, '2026-10-28', '18:00:00', 'pending', NULL),

(3, '2026-10-28', '21:00:00', 'pending', NULL),

(4, '2026-10-28', '08:00:00', 'completed', '2026-10-28 08:10:00'),
(4, '2026-10-28', '14:00:00', 'pending', NULL);