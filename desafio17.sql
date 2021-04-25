USE w3schools;

DELIMITER $$
CREATE TRIGGER incluir_data_do_pedido
	BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
    SET NEW.OrderDate = NOW();
END $$

DELIMITER ;
