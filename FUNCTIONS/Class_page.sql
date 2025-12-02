DROP FUNCTION IF EXISTS class_page;

CREATE OR REPLACE FUNCTION class_page()
RETURNS TABLE(
    class_id INT,
    class_name VARCHAR,
    class_date DATE,
    class_time TIME,
    capacity INT
) AS $$
BEGIN
    RETURN QUERY
    SELECT
        c.class_id,
        c.class_name,
        c.schedule::DATE,
        c.schedule::TIME,
        c.capacity
    FROM class c
    ORDER BY c.schedule ASC;
end;
$$ LANGUAGE plpgsql;

SELECT * FROM class_page();