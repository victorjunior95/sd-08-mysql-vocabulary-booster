DELIMITER $$
CREATE TRIGGER ordersInsert
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = NOW();
INSERT INTO w3schools.orders VALUES(NEW.CustomerID, NEW.EmployeeID, NEW.ShipperID);
END $$
DELIMITER ;
