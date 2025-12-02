DROP PROCEDURE IF EXISTS add_class(VARCHAR, INT, TIMESTAMP, INT);

CREATE OR REPLACE PROCEDURE add_class(
    input_class_name VARCHAR,
    input_trainer_id INT,
    input_schedule TIMESTAMP,
    input_capacity INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Class(class_name, trainer_id, schedule, capacity)
    VALUES(input_class_name, input_trainer_id, input_schedule,
           input_capacity);
end;
$$;


CALL add_class('Sprinting', '10', '2025-12-02 08:00:00',
     10)