DROP TABLE IF EXISTS Member CASCADE;

CREATE TABLE Member (
    member_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    email VARCHAR(100),
    membership_type VARCHAR(50),
    membership_expiry DATE

);


INSERT INTO Member (first_name, last_name, gender, age, email, membership_type, membership_expiry)
VALUES ('Emily', 'Johnson', 'Female', 25,
        'EmilyJohnson@gmail.com', 'Monthly', '2025-12-01'),
       ('Rick', 'Novak', 'Male', 18,
        'RickNovak@gmail.com', 'Monthly','2025-12-02'),
       ('Susan', 'Connor', 'Female', 30,
        'SusanConnor@gmail.com', 'Monthly','2025-12-03'),
       ('Margaret', 'Adelman', 'Female', 45,
        'MargaretAdelman@gmail.com', 'Monthly','2025-12-04'),
       ('Ronald', 'Barr', 'Male', 20,
        'RonaldBarr@gmail.com', 'Monthly','2025-12-05'),
       ('Marie', 'Broadbet', 'Female', 50,
        'MarieBroadbet@gmail.com', 'Yearly', '2026-12-06'),
       ('Roger', 'Lum', 'Male', 60,
        'RogerLum@gmail.com', 'Yearly', '2026-12-07'),
       ('Marlene', 'Donahue', 'Female', 40,
        'MarleneDonahue@gmail.com', 'Yearly','2026-12-08'),
       ('Jeff', 'Johnson', 'Female', 70,
        'JeffJohnson@gmail.com', 'Yearly','2026-12-09'),
       ('Melvin', 'Forbis', 'Male', 35,
        'MelvinForbis@gmail.com', 'Yearly','2026-12-10');
