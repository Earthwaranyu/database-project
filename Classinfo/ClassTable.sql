DROP TABLE IF EXISTS Class CASCADE;

CREATE TABLE Class (
    class_id SERIAL PRIMARY KEY,
    class_name VARCHAR(50),
    trainer_id INT REFERENCES Trainer(trainer_id),
    schedule TIMESTAMP,
    capacity INT
);

INSERT INTO Class(class_name, trainer_id, schedule, capacity)
VALUES ('Morning Yoga', 1, '2025-12-01 10:00:00', 10),
       ('HIIT Burn', 6, '2025-12-02 16:00:00', 10),
       ('Strength 101', 2, '2025-12-02 08:00:00', 10),
       ('Zumba Dance', 7, '2025-12-02 14:00:00', 10),
       ('Pilates Core', 4, '2025-12-02 09:00:00', 10),
       ('Boxing Basics', 8, '2025-12-02 18:00:00', 10),
       ('Cardio Blast', 3, '2025-12-02 11:00:00', 10),
       ('Stretch & Relax', 9, '2025-12-02 19:00:00', 10),
       ('Crossfit Intro', 5, '2025-12-02 07:00:00', 10),
       ('Dance Fit', 10, '2025-12-02 17:00:00', 10);