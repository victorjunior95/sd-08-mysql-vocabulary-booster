DELIMITER @|
CREATE TRIGGER trigger_order_insert
BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
-- instrução do trigger
SET NEW.OrderDate = NOW();
END
@| DELIMITER ;

-- INSERT INTO w3schools.orders (OrderID, CustomerID, EmployeeID, ShipperID)
-- VALUES ('00000', 90, 5, 3);
-- SELECT OrderDate FROM w3schools.orders;
