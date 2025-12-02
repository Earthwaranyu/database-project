DROP PROCEDURE IF EXISTS edit_trainer_detail(INT, VARCHAR, VARCHAR, VARCHAR, VARCHAR);

CREATE OR REPLACE PROCEDURE edit_trainer_detail(
    input_trainer_id INT,
    input_first_name VARCHAR,
    input_last_name VARCHAR,
    input_specialization VARCHAR,
    input_phone VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE trainer
    SET
        first_name = input_first_name,
        last_name = input_last_name,
        specialization = input_specialization,
        phone = input_phone
    WHERE trainer_id = input_trainer_id;
end;

$$;