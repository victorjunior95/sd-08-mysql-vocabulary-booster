DELIMITER $$

CREATE TRIGGER insert_current_date
BEFORE INSERT ON w3schools.orders
FOR EACH ROW

BEGIN
SET NEW.OrderDate = NOW();
END $$

DELIMITER ;
