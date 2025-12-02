DROP FUNCTION IF EXISTS  see_full_detail_revenue(INT);

CREATE OR REPLACE FUNCTION see_full_detail_revenue(input_purchase_id INT)
RETURNS TABLE(
    purchase_id INT,
    first_name VARCHAR,
    last_name VARCHAR,
    item_type VARCHAR,
    price DECIMAL,
    purchase_date DATE,
    expiry_date DATE,
    email VARCHAR
) AS $$
BEGIN
    RETURN QUERY
    SELECT
        p.purchase_id,
        m.first_name,
        m.last_name,
        p.item_type,
        p.price,
        p.purchase_date,
        p.expiry_date,
        m.email
    FROM purchase_history p
    JOIN member m ON p.member_id = m.member_id
    WHERE p.purchase_id = input_purchase_id;
end;

$$ LANGUAGE plpgsql;


SELECT see_full_detail_revenue(1)