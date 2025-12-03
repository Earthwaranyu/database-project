DROP PROCEDURE IF EXISTS check_out_member(INT);

CREATE OR REPLACE PROCEDURE check_out_member(input_member_id INT)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE checkin_log
    SET checkout_time = NOW()
    WHERE member_id = input_member_id AND checkout_time IS NULL;
end;

$$;

CALL check_out_member(2)