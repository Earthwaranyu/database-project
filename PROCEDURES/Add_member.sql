DROP PROCEDURE IF EXISTS add_member(VARCHAR, VARCHAR, VARCHAR, INT, VARCHAR, VARCHAR, DATE);

CREATE OR REPLACE PROCEDURE add_member (
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
    INSERT INTO member(
        first_name, last_name, gender, age, email, membership_type, membership_expiry
    )
    VALUES(
           input_first_name, input_last_name, input_gender,
           input_age, input_email, input_type, input_expiry
          );
end;
$$;