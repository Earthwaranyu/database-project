DROP TABLE IF EXISTS Checkin_log CASCADE;

CREATE TABLE Checkin_log(
    check_id SERIAL PRIMARY KEY,
    member_id INT REFERENCES Member(member_id),
    checkin_time TIMESTAMP,
    checkout_time TIMESTAMP
);

INSERT INTO Checkin_log(member_id, checkin_time, checkout_time)
VALUES (1, '2025-11-11 11:00:00', '2025-11-11 12:00:00'),

       (3, '2025-11-13 13:00:00', '2025-11-13 14:00:00'),

       (5, '2025-11-15 15:00:00', '2025-11-15 16:00:00'),

       (7, '2025-11-17 17:00:00', '2025-11-17 18:00:00'),

       (9, '2025-11-19 19:00:00', '2025-11-19 20:00:00');


