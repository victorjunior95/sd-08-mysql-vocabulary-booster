-- 17 - Crie uma TRIGGER que, a cada nova inserção realizada na tabela orders, insira automaticamente
-- a data atual na coluna OrderDate
-- 	A partir disso, o avaliador vai executar dois processos:
-- 		Inserir na tabela orders um novo registro com os dados: CustomerID com valor 4, EmployeeID com valor 2
-- 		e ShipperID com valor 2; ISERT CustomerID = 4, EmployeeID, ShipperID
-- 		Montar uma query que mostre todos os CustomerID igual a 4; SELECT CustomerID = 4
-- 	Retomando que não é necessário incluir as queries para INSERIR e SELECIONAR, elas já vão ser
-- 	executadas automaticamente pelo próprio teste.
USE w3schools;

DELIMITER $$
CREATE TRIGGER inserir_data_a_nova_ordem
AFTER INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = NOW();
END
$$ DELIMITER ;
