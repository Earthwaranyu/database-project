DROP PROCEDURE IF EXISTS add_revenue(INT, VARCHAR, DECIMAL, DATE, DATE);

CREATE OR REPLACE PROCEDURE add_revenue(
    input_member_id INT,
    input_item_type VARCHAR,
    input_price DECIMAL,
    input_purchase_date DATE,
    input_expiry_date DATE
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO purchase_history(member_id, item_type, price, purchase_date, expiry_date)
    VALUES (input_member_id, input_item_type, input_price,
            input_purchase_date, input_expiry_date);
end;

$$;


