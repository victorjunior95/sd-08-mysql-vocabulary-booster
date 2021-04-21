USE w3schools;

DELIMITER $$
CREATE TRIGGER update_date
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = NOW();
END

$$ DELIMITER ;
