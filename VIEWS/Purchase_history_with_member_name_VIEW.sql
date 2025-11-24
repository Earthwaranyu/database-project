CREATE OR REPLACE VIEW Purchase_history_with_member_name AS

SELECT p.purchase_id, m.first_name AS member_first_name, m.last_name AS member_last_name,
       p.item_type, p.price, p.purchase_date, p.expiry_date

FROM purchase_history p
INNER JOIN Member m ON p.member_id = m.member_id;