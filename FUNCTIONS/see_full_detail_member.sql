DROP FUNCTION IF EXISTS see_full_detail_member(INT);

CREATE OR REPLACE FUNCTION see_full_detail_member(input_member_id INT)
RETURNS TABLE (
    first_name VARCHAR,
    last_name VARCHAR,
    gender VARCHAR,
    age INT,
    email VARCHAR,
    membership_type VARCHAR,
    membership_expiry DATE

) AS $$
BEGIN
    RETURN QUERY
    SELECT
        m.first_name,
        m.last_name,
        m.gender,
        m.age,
        m.email,
        m.membership_type,
        m.membership_expiry
    FROM member m
    Where member_id = input_member_id;
END;
$$ LANGUAGE plpgsql;


