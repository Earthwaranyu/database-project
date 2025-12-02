DROP PROCEDURE IF EXISTS delete_class(INT);

CREATE OR REPLACE PROCEDURE delete_class(input_class_id INT)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM class
    WHERE class_id = input_class_id;
end;

$$