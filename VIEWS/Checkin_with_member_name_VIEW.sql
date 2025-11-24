CREATE OR REPLACE VIEW Checkin_with_member_name AS

SELECT ch.check_id, m.first_name AS member_first_name, m.last_name AS member_last_name,
       ch.checkin_time, ch.checkout_time
FROM checkin_log ch
INNER JOIN Member m ON ch.member_id = m.member_id;