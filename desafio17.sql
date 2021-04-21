USE w3schools;

DELIMITER $$
CREATE TRIGGER trigger_new_order_insert_actual_date
BEFORE INSERT ON orders
FOR EACH ROW

BEGIN
  SET NEW.OrderDate = NOW();
END $$ 

DELIMITER ;
