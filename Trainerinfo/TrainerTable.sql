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
       ('Aaron', 'Williamson', 'Health coach', '081-111-1111');

