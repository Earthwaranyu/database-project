DROP FUNCTION IF EXISTS see_full_detail_class(INT);

CREATE OR REPLACE FUNCTION see_full_detail_class(input_class_id INT)
RETURNS TABLE(
    class_name VARCHAR,
    trainer_first_name VARCHAR,
    trainer_last_name VARCHAR,
    schedule TIMESTAMP,
    capacity INT,
    trainer_phone VARCHAR
) AS $$
BEGIN
    RETURN QUERY
    SELECT
        c.class_name,
        t.first_name,
        t.last_name,
        c.schedule,
        c.capacity,
        t.phone
    FROM Class c
    JOIN Trainer t ON c.trainer_id = t.trainer_id
    WHERE c.class_id = input_class_id;
end;
$$ LANGUAGE plpgsql;


SELECT * FROM see_full_detail_class(2)