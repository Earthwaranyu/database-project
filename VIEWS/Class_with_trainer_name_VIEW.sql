CREATE OR REPLACE VIEW Class_with_trainer_name AS

SELECT c.class_id, c.class_name, t.first_name AS trainer_firstname, t.last_name AS trainer_lastname, c.schedule, c.capacity
FROM Class c
INNER JOIN Trainer t ON c.trainer_id = t.trainer_id;


SELECT * FROM Class_with_trainer_name

