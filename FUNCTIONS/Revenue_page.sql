DROP FUNCTION IF EXISTS revenue_page();

CREATE OR REPLACE FUNCTION revenue_page()
RETURNS TABLE(
    input_purchase_id INT,
    first_name VARCHAR,
    last_name VARCHAR,
    item_type VARCHAR,
    price DECIMAL(10,2),
    purchase_date DATE
)  AS $$
BEGIN
    RETURN QUERY
    SELECT
        p.purchase_id,
        m.first_name,
        m.last_name,
        p.item_type,
        p.price,
        p.purchase_date
    FROM purchase_history p
    JOIN member m ON p.member_id = m.member_id
    ORDER BY p.purchase_date DESC;
end;

$$ LANGUAGE plpgsql;


SELECT * FROM revenue_page()