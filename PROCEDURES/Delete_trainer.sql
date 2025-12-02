DROP PROCEDURE IF EXISTS delete_trainer(INT);

CREATE OR REPLACE PROCEDURE delete_trainer(input_trainer_id INT)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM class
    WHERE trainer_id = input_trainer_id;

    DELETE FROM trainer
    WHERE trainer_id = input_trainer_id;
end;

$$;