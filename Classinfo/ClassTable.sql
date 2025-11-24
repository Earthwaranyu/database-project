DROP TABLE IF EXISTS Class CASCADE;

CREATE TABLE Class (
    class_id SERIAL PRIMARY KEY,
    class_name VARCHAR(50),
    trainer_id INT REFERENCES Trainer(trainer_id),
    schedule TIMESTAMP,
    capacity INT
);

INSERT INTO Class(class_name, trainer_id, schedule, capacity)
VALUES ('Yoga', 1, '2025-12-01 10:00:00', 10),
       ('Cardio', 2, '2025-12-02 16:00:00', 10);