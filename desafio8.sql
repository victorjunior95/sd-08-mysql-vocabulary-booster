-- 8 - Exibe todas as pessoas consumidoras cujos pedidos já foram enviados pelas empresas "Speedy Express"
-- ou "United Package"
-- 	Monte uma query que exiba 03 colunas:
-- 		a) A primeira deve possuir o alias "Nome de contato" e exibir o nome de contato da pessoa
-- 		consumidora.
-- 		b) A segunda deve possuir o alias "Empresa que fez o envio" e exibir o nome da empresa que
-- 		efetuou o envio do pedido.
-- 		c) A terceira deve possuir o alias "Data do pedido" e exibir a data que o pedido foi feito.
-- 	Seus resultados devem estar ordenados pelo nome de contato da pessoa consumidora em ordem alfabética.
-- 	Em caso de empate no nome de contato, ordene os resultados pelo nome da empresa que fez o envio do
-- 	produto em ordem alfabética.
-- 	Se houver empresas com o mesmo nome, ordene os resultados pela data do pedido em ordem crescente.
SELECT c.ContactName AS `Nome de contato`,
s.ShipperName AS `Empresa que fez o envio`,
o.OrderDate AS `Data do pedido`
FROM w3schools.customers AS c INNER JOIN w3schools.orders AS o ON c.CustomerID = o.CustomerID
INNER JOIN w3schools.shippers AS s ON o.ShipperID = s.ShipperID
WHERE s.ShipperID BETWEEN 1 AND 2
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
