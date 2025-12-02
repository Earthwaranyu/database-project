DROP FUNCTION IF EXISTS total_revenue();

CREATE OR REPLACE FUNCTION total_revenue()
RETURNS DECIMAL(10,2) AS $$
DECLARE
    total_sales DECIMAL(10,2);
BEGIN
    SELECT SUM(price) INTO total_sales
    FROM purchase_history;

    IF total_sales IS NULL THEN
        RETURN 0.00;
    ELSE
        RETURN total_sales;
    end if;
end;

$$ LANGUAGE plpgsql;

SELECT total_revenue()