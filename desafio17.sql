DELIMITER $$
  CREATE TRIGGER inserir_data
    BEFORE INSERT ON w3schools.orders
    FOR EACH ROW
  BEGIN
    SET NEW.OrderDate = NOW();
  END
$$ DELIMITER ;

SELECT * FROM w3schools.orders
WHERE CustomerID = 4;
