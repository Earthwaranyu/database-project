DROP PROCEDURE IF EXISTS edit_member_detail(INT,VARCHAR, VARCHAR, VARCHAR, INT, VARCHAR, VARCHAR, DATE);

CREATE OR REPLACE PROCEDURE edit_member_detail(
    input_member_id INT,
    input_first_name VARCHAR,
    input_last_name VARCHAR,
    input_gender VARCHAR,
    input_age INT,
    input_email VARCHAR,
    input_type VARCHAR,
    input_expiry DATE
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE member
    SET
        first_name = input_first_name,
        last_name = input_last_name,
        gender = input_gender,
        age = input_age,
        email = input_email,
        membership_type = input_type,
        membership_expiry = input_expiry
    WHERE member_id = input_member_id;
end;
$$;

CALL edit_member_detail(2, 'Rick', 'Novak', 'Male', 18, 'RickNovak@gmail.com', 'Monthly', '2025-12-02')
