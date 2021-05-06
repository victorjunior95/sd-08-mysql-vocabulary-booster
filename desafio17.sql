USE w3schools;
DELIMITER $$

CREATE TRIGGER set_new_orderdate_a_cada_nova_insercao
BEFORE INSERT ON orders
FOR EACH ROW

BEGIN
  SET NEW.OrderDate = NOW();
END $$

DELIMITER ;
