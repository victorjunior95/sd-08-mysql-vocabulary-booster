USE w3schools;

DELIMITER $$
CREATE TRIGGER nome_do_trigger
  AFTER INSERT ON orders
  FOR EACH ROW
BEGIN
    INSERT INTO orders (OrderDate)
    VALUES (CURRENT_DATE());
END $$

DELIMITER ;
