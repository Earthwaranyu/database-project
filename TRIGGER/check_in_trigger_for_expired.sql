CREATE OR REPLACE FUNCTION check_expiry_before_entry()
RETURNS TRIGGER AS $$
DECLARE
    expiry DATE;
    first_name VARCHAR;
    last_name VARCHAR;
BEGIN
    SELECT m.membership_expiry, m.first_name, m.last_name
    INTO expiry, first_name, last_name
    FROM member m
    WHERE member_id = NEW.member_id;

    IF expiry < CURRENT_DATE THEN
        RAISE EXCEPTION 'Access Denied: % % membership expired on %', first_name, last_name, expiry;
    end if;

    RETURN NEW;
end;
$$ LANGUAGE plpgsql;


DROP TRIGGER IF EXISTS prevent_expired_entry ON checkin_log;

CREATE TRIGGER prevent_expired_entry
BEFORE INSERT ON checkin_log
FOR EACH ROW
EXECUTE FUNCTION check_expiry_before_entry();


call check_in_member(2)



