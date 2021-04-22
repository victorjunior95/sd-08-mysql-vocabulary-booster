SELECT CUS.contactName AS 'Nome de contato',
SHIP.shippername AS 'Empresa que fez o envio',
ORD.orderdate AS 'Data do pedido'
FROM w3schools.orders AS ORD
INNER JOIN w3schools.customers AS CUS ON ORD.customerid = CUS.customerid
INNER JOIN w3schools.shippers AS SHIP ON ORD.shipperid = SHIP.shipperid
WHERE SHIP.shippername IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
