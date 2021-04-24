SELECT 
    C.contactName AS 'Nome de contato',
    S.shipperName AS 'Empresa que fez o envio',
    O.orderDate AS 'Data do pedido'
FROM
    w3schools.orders AS O
        INNER JOIN
    w3schools.customers AS C ON C.customerID = O.customerID
        INNER JOIN
    w3schools.shippers AS S ON S.shipperID = O.shipperID
WHERE
    S.shipperName = 'Speedy Express'
        OR S.shipperName = 'United Package'
ORDER BY `Nome de contato` , `Empresa que fez o envio` , `Data do pedido`;
