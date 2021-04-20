DELIMITER $$

CREATE TRIGGER atualizar_data_pedido
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
	SET NEW.OrderDate = NOW();
END

$$ DELIMITER ;
