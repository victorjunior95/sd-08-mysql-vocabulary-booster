USE w3schools;

DELIMITER $$
CREATE TRIGGER alteracoes_em_orders
    BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
    SET NEW.OrderDate = NOW();
END $$
DELIMITER ;
