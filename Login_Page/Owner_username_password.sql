DROP TABLE IF EXISTS owner_user CASCADE;

CREATE TABLE owner_user(
    username VARCHAR(50) PRIMARY KEY,
    password VARCHAR(50) NOT NULL
);

INSERT INTO owner_user (username, password)
VALUES ('OWNER', '5555');


