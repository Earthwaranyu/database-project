DROP FUNCTION IF EXISTS trainer_page();

CREATE OR REPLACE FUNCTION trainer_page()
RETURNS TABLE(
    input_trainer_id INT,
    first_name VARCHAR,
    last_name VARCHAR
) AS $$
BEGIN
    RETURN QUERY
    SELECT
        t.trainer_id,
        t.first_name,
        t.last_name
    FROM trainer t
    ORDER BY t.trainer_id ASC;
end;
$$ LANGUAGE plpgsql;


SELECT trainer_page()