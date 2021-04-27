-- Referência paara uso do BEFORE:
-- https://stackoverflow.com/questions/15300673/mysql-error-cant-update-table-in-stored-function-trigger-because-it-is-already

DELIMITER $$
CREATE TRIGGER new_date_orders
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = DATE(now());
END
$$
DELIMITER ;
