DROP PROCEDURE IF EXISTS edit_class_detail(INT, VARCHAR, INT, TIMESTAMP, INT);

CREATE OR REPLACE PROCEDURE edit_class_detail(
    input_class_id INT,
    input_class_name VARCHAR,
    input_trainer_id INT,
    input_schedule TIMESTAMP,
    input_capacity INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE class
    SET
        class_name = input_class_name,
        trainer_id = input_trainer_id,
        schedule = input_schedule,
        capacity = input_capacity
    WHERE class_id = input_class_id;
end;
$$;


CALL edit_class_detail(1, 'Evening Yoga', 1,
     '2025-12-01 18:00:00', 10)