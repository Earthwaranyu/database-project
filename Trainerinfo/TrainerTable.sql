DROP TABLE IF EXISTS Trainer CASCADE;

CREATE TABLE Trainer(
    trainer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    specialization VARCHAR(50),
    phone VARCHAR(12)
);

INSERT INTO Trainer(first_name, last_name, specialization, phone)
VALUES ('Justin', 'Gelband', 'Yoga instructor', '081-000-0000'),
       ('Aaron', 'Williamson', 'Health coach', '081-111-1111'),
       ('Alex', 'Tan', 'Strength Training', '082-222-2222'),
       ('Bella', 'Fox', 'Cardio', '083-333-3333'),
       ('Chris', 'Wong', 'Pilates', '084-444-4444'),
       ('Diana', 'King', 'Crossfit', '085-555-5555'),
       ('Ethan', 'Park', 'HIIT', '086-666-6666'),
       ('Fiona', 'Chu', 'Zumba', '087-777-7777'),
       ('George', 'Lin', 'Boxing', '088-888-8888'),
       ('Hannah', 'Cho', 'Strethching', '089-999-9999');
