USE w3schools;

DELIMITER $$
CREATE TRIGGER inserirDataDeHoje
  AFTER INSERT ON orders
  FOR EACH ROW
BEGIN
    SET NEW.OrderDate = CURRENT_DATE();
END $$

DELIMITER ;
