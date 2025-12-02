DROP PROCEDURE IF EXISTS add_trainer(VARCHAR, VARCHAR, VARCHAR, VARCHAR);

CREATE OR REPLACE PROCEDURE add_trainer(
    input_first_name VARCHAR,
    input_last_name VARCHAR,
    input_specialization VARCHAR,
    input_phone VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO trainer(first_name, last_name, specialization, phone)
    VALUES(input_first_name, input_last_name,
           input_specialization, input_phone);
end;

$$;