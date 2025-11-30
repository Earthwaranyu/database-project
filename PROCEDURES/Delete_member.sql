DROP PROCEDURE IF EXISTS delete_member(INT);

CREATE OR REPLACE PROCEDURE delete_member(input_member_id INT)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM checkin_log
    WHERE member_id = input_member_id;

    DELETE FROM purchase_history
    WHERE member_id = input_member_id;

    DELETE FROM member
    WHERE member_id = input_member_id;
end;
$$;

CALL delete_member(11);