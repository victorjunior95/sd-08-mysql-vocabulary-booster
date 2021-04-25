/* -- Desafio8.SQL */

SELECT
tbC.ContactName 'Nome de contato',
tbS.ShipperName 'Empresa que fez o envio',
tbO.OrderDate 'Data do pedido'
FROM w3schools.orders tbO
INNER JOIN w3schools.customers tbC
ON tbO.CustomerID = tbC.CustomerID
INNER JOIN w3schools.shippers tbS
ON tbO.ShipperID = tbS.ShipperID
WHERE tbS.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY tbC.ContactName, tbS.ShipperName, tbO.OrderDate ASC;
