DROP PROCEDURE IF EXISTS delete_revenue(INT);

CREATE OR REPLACE PROCEDURE delete_revenue(input_purchase_id INT)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM purchase_history
    WHERE purchase_id = input_purchase_id;
end;
$$;