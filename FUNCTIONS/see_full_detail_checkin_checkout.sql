DROP FUNCTION IF EXISTS see_full_detail_checkin_checkout();

CREATE OR REPLACE FUNCTION see_full_detail_checkin_checkout()
RETURNS TABLE(
    check_id INT,
    first_name VARCHAR,
    last_name VARCHAR,
    checkin_time TIMESTAMP,
    checkout_time TIMESTAMP
) AS $$
BEGIN
    RETURN QUERY
    SELECT
        c.check_id,
        m.first_name,
        m.last_name,
        c.checkin_time,
        c.checkout_time
    FROM checkin_log c
    JOIN member m on c.member_id = m.member_id
    ORDER BY c.checkin_time DESC;

end;
$$ LANGUAGE plpgsql;

SELECT see_full_detail_checkin_checkout()