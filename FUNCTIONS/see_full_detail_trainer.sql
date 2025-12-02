DROP FUNCTION IF EXISTS see_full_detail_trainer(INT);

CREATE OR REPLACE FUNCTION see_full_detail_trainer(input_trainer_id INT)
RETURNS TABLE(
    first_name VARCHAR,
    last_name VARCHAR,
    specialization VARCHAR,
    phone VARCHAR
) AS $$
BEGIN
    RETURN QUERY
    SELECT
        t.first_name,
        t.last_name,
        t.specialization,
        t.phone
    FROM trainer t
    WHERE t.trainer_id = input_trainer_id;
end;

$$ LANGUAGE plpgsql;


SELECT see_full_detail_trainer(2)