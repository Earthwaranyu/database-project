DROP PROCEDURE IF EXISTS check_in_member(INT);

CREATE OR REPLACE PROCEDURE check_in_member(input_member_id INT)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO checkin_log (member_id, checkin_time, checkout_time)
    VALUES(input_member_id, NOW(), NULL);
end;

$$;


CALL check_in_member(2)