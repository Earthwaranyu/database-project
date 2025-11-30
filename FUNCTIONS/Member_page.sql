DROP FUNCTION IF EXISTS member_page();

CREATE OR REPLACE FUNCTION member_page()
RETURNS TABLE (
    member_id INT,
    first_name VARCHAR,
    last_name VARCHAR
)  AS $$
BEGIN
    RETURN QUERY
    SELECT
        m.member_id,
        m.first_name,
        m.last_name
    FROM member m
    ORDER BY m.member_id ASC;
END;
$$  LANGUAGE plpgsql;


SELECT * FROM member_page();