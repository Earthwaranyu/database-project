DROP TABLE IF EXISTS Purchase_history CASCADE;

CREATE TABLE Purchase_history(
    purchase_id SERIAL PRIMARY KEY,
    member_id INT REFERENCES Member(member_id),
    item_type VARCHAR(50),
    price DECIMAL(10,2),
    purchase_date DATE,
    expiry_date DATE
);

INSERT INTO Purchase_history(member_id, item_type, price, purchase_date, expiry_date)
VALUES (1, 'Monthly Membership', 1200, '2025-11-01', '2025-12-01'),

       (2, 'Monthly Membership', 1200, '2025-11-02', '2025-12-02'),

       (3, 'Monthly Membership', 1200, '2025-11-03', '2025-12-03'),

       (4, 'Monthly Membership', 1200, '2025-11-04', '2025-12-04'),

       (5, 'Monthly Membership', 1200, '2025-11-05', '2025-12-05'),

       (6, 'Yearly Membership', 10000, '2024-12-06', '2025-12-06'),

       (7, 'Yearly Membership', 10000, '2024-12-07', '2025-12-07'),

       (8, 'Yearly Membership', 10000, '2024-12-08', '2025-12-08'),

       (9, 'Yearly Membership', 10000, '2024-12-09', '2025-12-09'),

       (10, 'Yearly Membership', 10000, '2024-12-10', '2025-12-10'),

       (6, 'Protein Powder', 300, '2025-11-06', NULL),

       (7, 'Energy Drink', 50, '2025-11-07', Null);
