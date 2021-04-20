-- 8 - Exibe todas as pessoas consumidoras cujos pedidos já foram enviados pelas empresas "Speedy Express" ou "United Package"
-- Exiba todas as pessoas consumidoras cujos pedidos já foram enviados pelas empresas "Speedy Express" ou "United Package".
-- Use o banco w3schools como referência
-- Monte uma query que exiba 03 colunas:
-- A primeira deve possuir o alias "Nome de contato" e exibir o nome de contato da pessoa consumidora.
-- A segunda deve possuir o alias "Empresa que fez o envio" e exibir o nome da empresa que efetuou o envio do pedido.
-- A terceira deve possuir o alias "Data do pedido" e exibir a data que o pedido foi feito.
-- Seus resultados devem estar ordenados pelo nome de contato da pessoa consumidora em ordem alfabética.
-- Em caso de empate no nome de contato, ordene os resultados pelo nome da empresa que fez o envio do produto em ordem alfabética.
-- Se houver empresas com o mesmo nome, ordene os resultados pela data do pedido em ordem crescente.
SELECT
C.ContactName AS 'Nome de contato',
S.ShipperName AS 'Empresa que fez o envio',
O.OrderDate AS 'Data do pedido'
FROM
w3schools.customers C,
w3schools.orders O,
w3schools.shippers S
WHERE
S.ShipperName IN ('Speedy Express', 'United Package') AND
C.CustomerID = O.CustomerID AND O.ShipperID = S.ShipperID
ORDER BY C.ContactName, S.ShipperName, O.OrderDate;
