CREATE OR REPLACE FUNCTION login(input_user VARCHAR, input_password VARCHAR)
RETURNS BOOLEAN AS $$
BEGIN
    RETURN EXISTS(
        SELECT *
        FROM owner_user
        WHERE username = input_user AND password = input_password
    );
end;

$$ LANGUAGE plpgsql;